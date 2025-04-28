/*********************************************************************
 *  Danger-Zone Monitor - 单文件演示
 *  板卡 : EK-TM4C123GXL (TM4C123GH6PM)
 *  功能 : SG90 舵机扫-锁，红外对管入侵检测，RGB 呼吸警报灯，UART 指令
 *
 *  舵机信号线  → **PB6**  (PWM0 模块  / M0PWM0 / Gen0 A)
 *  红外 OUT    → PF0
 *  报警 LED    → 板载 PF1 (红) + PF3 (绿)
 *  串口        → USB 虚拟 COM，115 200-8-N-1
 *
 *  指令 :
 *    '1' → 巡逻模式（0-180° 扫描，LED 熄）
 *    '0' → 定向模式（固定 90°，LED 呼吸）
 *********************************************************************/

#include <stdbool.h>
#include <stdint.h>
#include <math.h>
#include "inc/hw_ints.h"
#include "inc/hw_memmap.h"
#include "inc/hw_gpio.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/interrupt.h"
#include "driverlib/pin_map.h"
#include "driverlib/pwm.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"
#include "driverlib/timer.h"
#include "utils/uartstdio.h"

/* ───── PWM/定时参数 ─────────────────────────────────────────── */
#define SERVO_PWM_PERIOD   (16000000 / 50)    /* 20 ms (50 Hz)  */
#define LED_PWM_FREQ       1000               /* 1 kHz 呼吸灯    */
#define LED_PWM_PERIOD     (SysCtlClockGet() / LED_PWM_FREQ)

/* ───── UART 指令字符 ───────────────────────────────────────── */
#define CMD_PATROL   '1'
#define CMD_TARGET   '0'

typedef enum { MODE_SCANNING, MODE_TARGETING } servo_mode_t;

/* ───── 全局状态变量 ───────────────────────────────────────── */
volatile servo_mode_t mode  = MODE_SCANNING;
volatile float        angle = 0.0f;
volatile bool         upDir = true;
volatile bool         manual= false;          /* 串口强制标志 */

volatile float redI = 0.0f, greenI = 0.0f;
volatile bool  ledUp = true, breathing = false;

/* ────── 函数声明 ──────────────────────────────────────────── */
static void SetServoAngle(float deg);

/* ────── UART 中断 ─────────────────────────────────────────── */
void UARTIntHandler(void)
{
    uint32_t stat = UARTIntStatus(UART0_BASE, true);
    UARTIntClear(UART0_BASE, stat);

    while (UARTCharsAvail(UART0_BASE))
    {
        char ch = UARTCharGetNonBlocking(UART0_BASE);
        UARTCharPutNonBlocking(UART0_BASE, ch);          /* 本地回显 */

        switch (ch)
        {
            case CMD_PATROL:
                mode = MODE_SCANNING;
                breathing = false;
                manual = true;
                UARTprintf("\r\n[CMD] 巡逻模式\r\n> ");
                break;

            case CMD_TARGET:
                mode = MODE_TARGETING;
                breathing = true;
                manual = true;
                angle = 90.0f;
                UARTprintf("\r\n[CMD] 定向模式 (90°)\r\n> ");
                break;

            default:
                UARTprintf("\r\n[ERR] 未知指令\r\n> ");
                break;
        }
    }
}

/* ───── LED 定时器中断 (20 ms) ─────────────────────────────── */
void LEDTimerIntHandler(void)
{
    TimerIntClear(TIMER0_BASE, TIMER_TIMA_TIMEOUT);

    if (breathing)
    {
        float step = 0.02f;
        if (ledUp) {
            redI   += step;
            greenI += step * 0.8f;
            if (redI >= 1.0f) { redI = 1.0f; ledUp = false; }
        } else {
            redI   -= step;
            greenI -= step * 0.8f;
            if (redI <= 0.02f) { redI = 0.02f; ledUp = true; }
        }
    } else {
        redI = greenI = 0.0f;
    }

    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_5, (uint32_t)(redI   * LED_PWM_PERIOD)); /* PF1 */
    PWMPulseWidthSet(PWM1_BASE, PWM_OUT_7, (uint32_t)(greenI * LED_PWM_PERIOD)); /* PF3 */
}

/* ───── GPIO 中断 (红外) ───────────────────────────────────── */
void GPIOIntHandler(void)
{
    GPIOIntClear(GPIO_PORTF_BASE, GPIO_INT_PIN_0);
    bool blocked = GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_0);

    if (!manual) {
        if (blocked) {          /* 遮挡 → 入侵 */
            mode = MODE_TARGETING;
            breathing = true;
            angle = 90.0f;
            UARTprintf("\r\n[ALERT] 入侵检测！\r\n> ");
        } else {                /* 清除 → 巡逻 */
            mode = MODE_SCANNING;
            breathing = false;
            UARTprintf("\r\n[INFO] 环境恢复，继续巡逻\r\n> ");
        }
    }
}

/* ───── 设置舵机角度 (输出到 PWM0-OUT0 / PB6) ─────────────── */
static void SetServoAngle(float deg)
{
    if (deg < 0) deg = 0;
    if (deg > 180) deg = 180;

    float ms = 0.5f + (deg / 180.0f) * 2.0f;        /* 0.5-2.5 ms */
    uint32_t pw = (uint32_t)(ms * SERVO_PWM_PERIOD / 20.0f);

    PWMPulseWidthSet(PWM0_BASE, PWM_OUT_0, pw);     /* PB6 */
}

/* ───── 初始化 UART 控制台 ─────────────────────────────────── */
static void InitConsole(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);

    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);
    GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);

    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);
    UARTStdioConfig(0, 115200, 16000000);

    UARTIntRegister(UART0_BASE, UARTIntHandler);
    UARTIntEnable(UART0_BASE, UART_INT_RX | UART_INT_RT);
    IntEnable(INT_UART0);
}

/* ───── 初始化 LED-PWM (PWM1 模块) ─────────────────────────── */
static void InitLED_PWM(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_PWM1);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    GPIOPinConfigure(GPIO_PF1_M1PWM5);   /* 红 */
    GPIOPinConfigure(GPIO_PF3_M1PWM7);   /* 绿 */
    GPIOPinTypePWM(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_3);

    PWMGenConfigure(PWM1_BASE, PWM_GEN_2, PWM_GEN_MODE_DOWN);
    PWMGenConfigure(PWM1_BASE, PWM_GEN_3, PWM_GEN_MODE_DOWN);
    PWMGenPeriodSet(PWM1_BASE, PWM_GEN_2, LED_PWM_PERIOD);
    PWMGenPeriodSet(PWM1_BASE, PWM_GEN_3, LED_PWM_PERIOD);

    PWMOutputState(PWM1_BASE, PWM_OUT_5_BIT | PWM_OUT_7_BIT, true);
    PWMGenEnable(PWM1_BASE, PWM_GEN_2);
    PWMGenEnable(PWM1_BASE, PWM_GEN_3);
}

/* ───── 初始化 LED 呼吸定时器 (Timer0) ─────────────────────── */
static void InitLEDTimer(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_TIMER0);
    TimerConfigure(TIMER0_BASE, TIMER_CFG_PERIODIC);
    TimerLoadSet(TIMER0_BASE, TIMER_A, SysCtlClockGet() / (1000 / 20)); /* 20 ms */
    TimerIntRegister(TIMER0_BASE, TIMER_A, LEDTimerIntHandler);
    TimerIntEnable(TIMER0_BASE, TIMER_TIMA_TIMEOUT);
    IntEnable(INT_TIMER0A);
    TimerEnable(TIMER0_BASE, TIMER_A);
}

/* ───── 初始化舵机 PWM (PWM0 模块 / PB6) ───────────────────── */
static void InitServoPWM(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_PWM0);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);

    GPIOPinConfigure(GPIO_PB6_M0PWM0);           /* PB6 */
    GPIOPinTypePWM(GPIO_PORTB_BASE, GPIO_PIN_6);

    PWMGenConfigure(PWM0_BASE, PWM_GEN_0, PWM_GEN_MODE_DOWN);
    PWMGenPeriodSet(PWM0_BASE, PWM_GEN_0, SERVO_PWM_PERIOD);
    PWMOutputState(PWM0_BASE, PWM_OUT_0_BIT, true);
    PWMGenEnable(PWM0_BASE, PWM_GEN_0);
}

/* ───── 主函数 ─────────────────────────────────────────────── */
int main(void)
{
    SysCtlClockSet(SYSCTL_SYSDIV_1 | SYSCTL_USE_OSC |
                   SYSCTL_OSC_MAIN   | SYSCTL_XTAL_16MHZ);   /* 16 MHz */
    SysCtlPWMClockSet(SYSCTL_PWMDIV_1);

    InitConsole();
    InitLED_PWM();
    InitLEDTimer();
    InitServoPWM();

    /* PF0 → 红外输入 + 上拉 + 双沿中断 */
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
    HWREG(GPIO_PORTF_BASE + GPIO_O_LOCK) = GPIO_LOCK_KEY;
    HWREG(GPIO_PORTF_BASE + GPIO_O_CR)  |= GPIO_PIN_0;
    HWREG(GPIO_PORTF_BASE + GPIO_O_LOCK) = 0;
    GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_0);
    GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_0,
                     GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);
    GPIOIntTypeSet(GPIO_PORTF_BASE, GPIO_PIN_0, GPIO_BOTH_EDGES);
    GPIOIntRegister(GPIO_PORTF_BASE, GPIOIntHandler);
    GPIOIntEnable(GPIO_PORTF_BASE, GPIO_INT_PIN_0);

    IntMasterEnable();

    UARTprintf("\r\n=== Danger-Zone Monitor READY (PB6) ===\r\n> ");

    /* ─── 主循环 ─── */
    while (1)
    {
        if (mode == MODE_SCANNING)
        {
            angle += upDir ? 3.0f : -3.0f;
            if (angle >= 180.0f) { angle = 180.0f; upDir = false; }
            if (angle <=   0.0f) { angle =   0.0f; upDir = true;  }
            SetServoAngle(angle);
            SysCtlDelay(SysCtlClockGet() / 3000 * 15);   /* ≈15 ms */
        }
        else
        {
            SetServoAngle(90.0f);
            SysCtlDelay(SysCtlClockGet() / 3000 * 100);  /* ≈100 ms */
        }
    }
}
