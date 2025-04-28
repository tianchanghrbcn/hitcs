/*******************************************************************************
 *  TM4C123GH6PM ‑ PWM Demo
 *
 *  PWM 100 Hz on PB6 (M0PWM0)
 *  SW1 (PF4): toggle duty 25 % / 75 %
 *  SW2 (PF0): sweep duty 25 % → 75 % (0.25 % step) then back to 25 %
 *  UART0 prints status messages
 ******************************************************************************/

#include <stdint.h>
#include <stdbool.h>

#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "inc/hw_gpio.h"
#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/pwm.h"
#include "driverlib/interrupt.h"
#include "driverlib/uart.h"
#include "utils/uartstdio.h"

/* ──────────────── constants ──────────────── */
#define SYSCLK_HZ       16000000   /* main crystal 16 MHz          */
#define PWM_FREQ_HZ     100        /* PWM frequency 100 Hz         */
#define UART_BAUD       115200     /* console speed                */

/* ──────────────── globals ──────────────── */
static uint32_t pwm_clk;           /* PWM clock after divider      */
static uint32_t load_val;          /* period register value        */

/* ──────────────── UART console ──────────────── */
static void UART_Init(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);

    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);
    GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);

    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);
    UARTStdioConfig(0, UART_BAUD, 16000000);

    UARTprintf("\nPWM control demo started\n");
}

/* ──────────────── PWM setup ──────────────── */
static void PWM_Init(void)
{
    SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC |
                   SYSCTL_OSC_MAIN  | SYSCTL_XTAL_16MHZ);

    SysCtlPeripheralEnable(SYSCTL_PERIPH_PWM0);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);

    GPIOPinConfigure(GPIO_PB6_M0PWM0);
    GPIOPinTypePWM(GPIO_PORTB_BASE, GPIO_PIN_6);

    SysCtlPWMClockSet(SYSCTL_PWMDIV_64);           /* 16 MHz / 64 = 250 kHz  */
    pwm_clk  = SYSCLK_HZ / 64;
    load_val = (pwm_clk / PWM_FREQ_HZ) - 1;        /* 250 k / 100 - 1        */

    PWMGenConfigure(PWM0_BASE, PWM_GEN_0,
                    PWM_GEN_MODE_UP_DOWN | PWM_GEN_MODE_NO_SYNC);
    PWMGenPeriodSet (PWM0_BASE, PWM_GEN_0, load_val);
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_0, load_val / 4); /* 25 % duty */

    PWMOutputState(PWM0_BASE, PWM_OUT_0_BIT, true);
    PWMGenEnable  (PWM0_BASE, PWM_GEN_0);

    UARTprintf("PWM ready: 100 Hz, initial duty 25 %%\n");
}

/* ──────────────── button GPIO ──────────────── */
static void Button_Init(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    /* unlock PF0 (NMI pin) */
    HWREG(GPIO_PORTF_BASE + GPIO_O_LOCK) = GPIO_LOCK_KEY;
    HWREG(GPIO_PORTF_BASE + GPIO_O_CR)  |= GPIO_PIN_0;

    GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_0 | GPIO_PIN_4);
    GPIOPadConfigSet(GPIO_PORTF_BASE,
                     GPIO_PIN_0 | GPIO_PIN_4,
                     GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    UARTprintf("Buttons ready (SW1=PF4, SW2=PF0)\n");
}

/* ───────────── toggle 25 % / 75 % ───────────── */
static void PWM_Toggle(void)
{
    static bool high_duty = false;
    high_duty = !high_duty;

    uint32_t cmp = high_duty ? (load_val * 3) / 4  /* 75 % */
                             :  load_val / 4;      /* 25 % */
    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_0, cmp);
    UARTprintf("Duty set to %s %%\n", high_duty ? "75" : "25");
}

/* ───────────── main loop ───────────── */
int main(void)
{
    UART_Init();
    PWM_Init();
    Button_Init();

    UARTprintf("Waiting for button input ...\n");

    while(1)
    {
        /* --- SW1: toggle duty 25 / 75 --- */
        if(!GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_4))
        {
            SysCtlDelay(SYSCLK_HZ / 30);           /* ~100 ms debounce */
            if(!GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_4))
            {
                PWM_Toggle();
                while(!GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_4)); /* wait release */
            }
        }

        /* --- SW2: sweep 25 % → 75 % --- */
        if(!GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_0))
        {
            SysCtlDelay(SYSCLK_HZ / 30);           /* debounce */
            if(!GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_0))
            {
                UARTprintf("Sweep start\n");
                /* start at 25 % */
                for(uint32_t cmp = load_val / 4;
                    cmp < (load_val * 3) / 4;
                    cmp += load_val / 100)         /* step 0.25 % */
                {
                    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_0, cmp);
                    UARTprintf("Duty %lu / %lu\n", cmp, load_val);
                    SysCtlDelay(SYSCLK_HZ / 30);   /* ~100 ms per step */
                }
                /* back to 25 % */
                PWMPulseWidthSet(PWM0_BASE, PWM_OUT_0, load_val / 4);
                UARTprintf("Sweep done (reset to 25 %%)\n");

                while(!GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_0)); /* wait release */
            }
        }
    }
}
