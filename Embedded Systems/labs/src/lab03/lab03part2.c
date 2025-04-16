/****************************************************************************
 *
 *  freertos_demo.c
 *    - "Content 2": External interrupt (PF0) + Timer0 measuring
 *      interrupt response & execution time in FreeRTOS environment.
 *    - PF1 is driven high in ISR, then turned off before exit.
 *    - Results printed to UART (115200 8N1).
 *    - Includes vApplicationStackOverflowHook to avoid link errors.
 *    - ALSO sets GPIOF interrupt priority to ensure it's not blocked by FreeRTOS.
 *
 ****************************************************************************/

#include <stdbool.h>
#include <stdint.h>

// ====== TivaWare / DriverLib ======
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "inc/hw_gpio.h"       // unlock PF0
#include "inc/hw_ints.h"       // INT_TIMER0A, INT_GPIOF
#include "driverlib/sysctl.h"
#include "driverlib/gpio.h"
#include "driverlib/timer.h"
#include "driverlib/interrupt.h"
#include "driverlib/pin_map.h"
#include "driverlib/rom.h"
#include "driverlib/uart.h"

// ====== FreeRTOS ======
#include "FreeRTOS.h"
#include "task.h"              // for vTaskStartScheduler(), xTaskHandle
#include "semphr.h"            // if needed
#include "queue.h"

// ====== TivaWare Utils ======
#include "utils/uartstdio.h"

//*****************************************************************************
// 在部分 FreeRTOSConfig.h 里, 若启用中断安全调用, 需保证 GPIOF 中断优先级
// 不高于 configMAX_SYSCALL_INTERRUPT_PRIORITY. 这里我们可以显式设置.
//*****************************************************************************
#ifndef configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY
#define configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY 5
#endif
#ifndef configPRIO_BITS
#define configPRIO_BITS 3  // TM4C123 typically has 8 priority levels: 3 bits
#endif

//*****************************************************************************
// 全局变量: Timer0 每 1 us 递增, 用于测量中断响应/执行时间
//*****************************************************************************
volatile uint32_t g_ui32TimerValue = 0;

//*****************************************************************************
// Timer0 ISR: 每 1 us 中断一次, 令 g_ui32TimerValue++
//*****************************************************************************
void Timer0IntHandler(void)
{
    TimerIntClear(TIMER0_BASE, TIMER_TIMA_TIMEOUT);
    g_ui32TimerValue++;
}

//*****************************************************************************
// 配置 Timer0 为 1MHz 频率中断
//*****************************************************************************
static void Timer0Init(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_TIMER0);
    while(!SysCtlPeripheralReady(SYSCTL_PERIPH_TIMER0)){}

    TimerConfigure(TIMER0_BASE, TIMER_CFG_PERIODIC);
    // 若系统时钟=50MHz => Load=49, 80MHz => Load=79
    TimerLoadSet(TIMER0_BASE, TIMER_A, (SysCtlClockGet()/1000000)-1);

    // 注册 ISR
    TimerIntRegister(TIMER0_BASE, TIMER_A, Timer0IntHandler);
    // 使能中断
    TimerIntEnable(TIMER0_BASE, TIMER_TIMA_TIMEOUT);
    IntEnable(INT_TIMER0A);

    // 启动定时器
    TimerEnable(TIMER0_BASE, TIMER_A);
}

//*****************************************************************************
// PF0 外部中断 ISR: 记录响应&执行时间, 拉高PF1, 打印后熄灭
//*****************************************************************************
void GPIOPortFIntHandler(void)
{
    // 清除中断标志
    GPIOIntClear(GPIO_PORTF_BASE, GPIO_INT_PIN_0);

    // 触发前计数
    uint32_t ui32InterruptTime = g_ui32TimerValue;
    // 入口计数
    uint32_t ui32EntryTime = g_ui32TimerValue;

    // 拉高PF1
    GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, GPIO_PIN_1);

    // 出口计数
    uint32_t ui32ExitTime = g_ui32TimerValue;

    // 计算响应 (入口 - 触发)
    uint32_t ui32Resp = ui32EntryTime - ui32InterruptTime;
    // 计算执行 (出口 - 入口)
    uint32_t ui32Exec = ui32ExitTime - ui32EntryTime;

    // 串口打印
    UARTprintf("PF0 Int! Resp=%u us, Exec=%u us\n", ui32Resp, ui32Exec);

    // 熄灭PF1
    GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0);
}

//*****************************************************************************
// 配置 GPIOF: 解锁PF0、PF1为输出. 注册ISR+中断优先级, 使能中断
//*****************************************************************************
static void GPIOFInit(void)
{
    // 1) 启用GPIOF
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
    while(!SysCtlPeripheralReady(SYSCTL_PERIPH_GPIOF)){}

    // 2) 解锁PF0 (避免NMI)
    HWREG(GPIO_PORTF_BASE + GPIO_O_LOCK)   = GPIO_LOCK_KEY;
    HWREG(GPIO_PORTF_BASE + GPIO_O_CR)    |= 0x01;
    HWREG(GPIO_PORTF_BASE + GPIO_O_LOCK)   = 0;

    // 3) PF0 -> 输入(下降沿), 带上拉
    GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_0);
    GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_0,
                     GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    // 4) PF1 -> 输出(LED), 默认灭
    GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_1);
    GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1, 0);

    // 5) 配置PF0 中断方式(下降沿)
    GPIOIntTypeSet(GPIO_PORTF_BASE, GPIO_PIN_0, GPIO_FALLING_EDGE);

    // 6) 注册ISR
    GPIOIntRegister(GPIO_PORTF_BASE, GPIOPortFIntHandler);

    // 7) 设置中断优先级(若FreeRTOS需要兼容中断安全API)
    //    低数字表示高优先级. 我们让它处于 configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY 之下
    //    例: 优先级= (5 << (8 - configPRIO_BITS))=160(0xA0). 只需保证不高于5(越大数越低优先级).
    IntPrioritySet(INT_GPIOF, (configLIBRARY_MAX_SYSCALL_INTERRUPT_PRIORITY << (8 - configPRIO_BITS)));

    // 8) 使能中断
    GPIOIntEnable(GPIO_PORTF_BASE, GPIO_INT_PIN_0);

    // 9) 全局中断
    IntMasterEnable();
}

//*****************************************************************************
// 配置UART (115200 8N1, UART0), 用于串口调试输出
//*****************************************************************************
static void ConfigureUART(void)
{
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);
    while(!SysCtlPeripheralReady(SYSCTL_PERIPH_GPIOA)){}
    while(!SysCtlPeripheralReady(SYSCTL_PERIPH_UART0)){}

    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);
    GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0|GPIO_PIN_1);

    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);
    UARTStdioConfig(0, 115200, 16000000);
}

//*****************************************************************************
// 必须实现的Hook函数,避免FreeRTOS链接错误
//*****************************************************************************
void vApplicationStackOverflowHook(xTaskHandle pxTask, char *pcTaskName)
{
    UARTprintf("Stack Overflow in %s\n", pcTaskName);
    while(1){}
}

//*****************************************************************************
// main(): 初始化系统, Timer0, GPIOF, UART, 并启动调度(无任何任务).
//*****************************************************************************
int main(void)
{
    // 系统时钟设为 50MHz
    SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL |
                   SYSCTL_XTAL_16MHZ| SYSCTL_OSC_MAIN);

    // 配置串口
    ConfigureUART();
    UARTprintf("\n== Content2: PF0 + Timer0 in FreeRTOS ==\n");

    // 初始化定时器 & GPIOF
    Timer0Init();
    GPIOFInit();

    // 启动FreeRTOS调度器(无任务,仅空闲任务)
    vTaskStartScheduler();

    // 若调度器停止则进入死循环
    while(1){}
}
