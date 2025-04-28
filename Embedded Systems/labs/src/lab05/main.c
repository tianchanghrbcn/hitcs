/*******************************************************************************
 *  TM4C123GH6PM - RGB Breathing + SW1 interrupt single-colour switch
 ******************************************************************************/

#include <stdint.h>
#include <stdbool.h>
#include <math.h>

#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/pwm.h"
#include "inc/hw_ints.h"
#include "driverlib/interrupt.h"
#include "driverlib/uart.h"
#include "driverlib/interrupt.h"   /* ← 新增 */
#include "utils/uartstdio.h"

/* ───────────── constants ───────────── */
#define SYSCLK_HZ   16000000UL
#define PWM_FREQ_HZ 500
#define UART_BAUD   115200
#define APP_PI      3.14159265358979323846f
#define STEPS       256
#define DEBOUNCE_MS 20              /* 简易去抖 */

/* ───────────── globals ───────────── */
static uint32_t pwm_clk, load_val, half_load;
static uint32_t idx  = 0;           /* breathing LUT index */
static volatile uint8_t  mode = 0;  /* 0=breathing, 1/2/3=R/G/B */
static volatile uint32_t t_last = 0;/* 上次中断时间戳，用于去抖 */

/* ───────────── UART (optional) ───────────── */
static void UART_Init(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);

    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);
    GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);

    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);
    UARTStdioConfig(0, UART_BAUD, 16000000);
    UARTprintf("\nRGB breathing + SW1 interrupt demo\n");
}

/* ───────────── PWM PF1/PF2/PF3 ───────────── */
static void PWM_RGB_Init(void)
{
    SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC |
                   SYSCTL_OSC_MAIN  | SYSCTL_XTAL_16MHZ);

    SysCtlPeripheralEnable(SYSCTL_PERIPH_PWM1);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    GPIOPinConfigure(GPIO_PF1_M1PWM5);
    GPIOPinConfigure(GPIO_PF2_M1PWM6);
    GPIOPinConfigure(GPIO_PF3_M1PWM7);
    GPIOPinTypePWM(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2 | GPIO_PIN_3);

    SysCtlPWMClockSet(SYSCTL_PWMDIV_64);
    pwm_clk  = SYSCLK_HZ / 64;
    load_val = (pwm_clk / PWM_FREQ_HZ) - 1;
    half_load = load_val / 2;

    PWMGenConfigure(PWM1_BASE, PWM_GEN_2,
                    PWM_GEN_MODE_UP_DOWN | PWM_GEN_MODE_NO_SYNC);
    PWMGenConfigure(PWM1_BASE, PWM_GEN_3,
                    PWM_GEN_MODE_UP_DOWN | PWM_GEN_MODE_NO_SYNC);

    PWMGenPeriodSet(PWM1_BASE, PWM_GEN_2, load_val);
    PWMGenPeriodSet(PWM1_BASE, PWM_GEN_3, load_val);

    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_5, 1);
    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_6, 1);
    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_7, 1);

    PWMOutputState(PWM1_BASE,
                   PWM_OUT_5_BIT | PWM_OUT_6_BIT | PWM_OUT_7_BIT, true);
    PWMGenEnable(PWM1_BASE, PWM_GEN_2);
    PWMGenEnable(PWM1_BASE, PWM_GEN_3);

    UARTprintf("PWM ready: 500 Hz, period %u clocks\n",
               (unsigned int)(load_val + 1));
}

/* ───────────── SW1 -> 外部中断 ───────────── */
static void Button_Interrupt_Init(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
    while(!SysCtlPeripheralReady(SYSCTL_PERIPH_GPIOF));

    GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_4);
    GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_4,
                     GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    GPIOIntDisable(GPIO_PORTF_BASE, GPIO_PIN_4);
    GPIOIntClear  (GPIO_PORTF_BASE, GPIO_PIN_4);
    GPIOIntTypeSet(GPIO_PORTF_BASE, GPIO_PIN_4, GPIO_FALLING_EDGE);
    GPIOIntEnable (GPIO_PORTF_BASE, GPIO_PIN_4);

    IntEnable(INT_GPIOF);   /* NVIC */
}

/* ——— PF4 ISR：切换模式 (含简单去抖) ——— */
void GPIOFIntHandler(void)
{
    GPIOIntClear(GPIO_PORTF_BASE, GPIO_PIN_4);

    uint32_t now = SysCtlClockGet() - t_last;  /* 粗略时差 (周期数) */
    if(now < (SYSCLK_HZ / 1000 * DEBOUNCE_MS)) return; /* <20 ms 忽略 */

    t_last = SysCtlClockGet();

    if(mode == 0) mode = 1;      /* 首次从呼吸→红 */
    else
    {
        mode++;
        if(mode > 3) mode = 1;   /* 在 1-3 循环 */
    }
    UARTprintf(">> SW1 interrupt, mode=%u\n", mode);
}

/* ───────────── main ───────────── */
int main(void)
{
    UART_Init();
    PWM_RGB_Init();
    Button_Interrupt_Init();
    IntMasterEnable();           /* 开全局中断 */

    UARTprintf("Start breathing …\n");

    while(1)
    {
        uint32_t duty_r = 1, duty_g = 1, duty_b = 1;

        if(mode == 0)
        {
            /* 彩色呼吸 */
            float angle = (idx * (2.0f * APP_PI / STEPS));
            duty_r = (uint32_t)(half_load * (1.0f + sinf(angle)));
            duty_g = (uint32_t)(half_load * (1.0f + sinf(angle + 2.0f*APP_PI/3)));
            duty_b = (uint32_t)(half_load * (1.0f + sinf(angle + 4.0f*APP_PI/3)));
            idx = (idx + 1) & (STEPS - 1);
        }
        else
        {
            /* 单色常亮 */
            switch(mode)
            {
                case 1: duty_r = load_val; break;   /* Red  */
                case 2: duty_g = load_val; break;   /* Green*/
                case 3: duty_b = load_val; break;   /* Blue */
            }
        }

        /* 更新占空比 (避免 0) */
        PWMPulseWidthSet(PWM1_BASE, PWM_OUT_5, duty_r ? duty_r : 1);
        PWMPulseWidthSet(PWM1_BASE, PWM_OUT_6, duty_g ? duty_g : 1);
        PWMPulseWidthSet(PWM1_BASE, PWM_OUT_7, duty_b ? duty_b : 1);

        /* 呼吸速度 (4 ms)；单色也复用同一延时 */
        SysCtlDelay(SYSCLK_HZ / 250);
    }
}
