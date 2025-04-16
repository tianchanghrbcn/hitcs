/****************************************************************************
 *
 *  freertos_demo.c - Demonstration with older FreeRTOS style:
 *    - portTickType, portTICK_RATE_MS
 *    - LED on PF2 toggles between fast (200ms) and slow (1000ms) blink
 *      whenever PF4 button is pressed.
 *
 ****************************************************************************/
#include <stdbool.h>
#include <stdint.h>

// ========== TivaWare / DriverLib ==========
#include "inc/hw_memmap.h"
#include "inc/hw_types.h"
#include "driverlib/gpio.h"
#include "driverlib/pin_map.h"
#include "driverlib/rom.h"
#include "driverlib/sysctl.h"
#include "driverlib/uart.h"

// ========== FreeRTOS (old version) ==========
#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"
#include "queue.h"

// ========== TivaWare Utilities (for UARTprintf) ==========
#include "utils/uartstdio.h"

//*****************************************************************************
// 兼容老版: 如果没定义 portTickType，自己定义一个；
// 如果没定义 portTICK_RATE_MS，也给它定义。
//*****************************************************************************
#ifndef portTickType
typedef unsigned long portTickType;  // 若你的老版 FreeRTOS 用这个做节拍类型
#endif

#ifndef portTICK_RATE_MS
#define portTICK_RATE_MS ((portTickType)(1000 / configTICK_RATE_HZ))
#endif

/****************************************************************************
 * 全局变量
 ****************************************************************************/
// 用于在 LEDTask 和 SwitchTask 之间共享“闪烁延时”：
static volatile uint32_t g_ui32LedDelay = 500;  

// UART 互斥锁（官方 demo 中常用），可选
xSemaphoreHandle g_pUARTSemaphore;

//*****************************************************************************
// FreeRTOS 钩子函数（栈溢出处理）
//*****************************************************************************
void
vApplicationStackOverflowHook(xTaskHandle *pxTask, char *pcTaskName)
{
    // 若溢出则停机
    while(1)
    {
    }
}

#ifdef DEBUG
void __error__(char *pcFilename, uint32_t ui32Line)
{
    // 调试用
}
#endif

/****************************************************************************
 * ConfigureUART() - 初始化 UART0，用于串口输出 (115200 8N1)
 ****************************************************************************/
void
ConfigureUART(void)
{
    // 启用 GPIOA / UART0 时钟
    ROM_SysCtlPeripheralEnable(SYSCTL_SYSDIV_4);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);
    ROM_SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);

    // PA0 -> U0RX, PA1 -> U0TX
    ROM_GPIOPinConfigure(GPIO_PA0_U0RX);
    ROM_GPIOPinConfigure(GPIO_PA1_U0TX);
    ROM_GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);

    // UART 时钟源：16MHz PIOSC
    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);

    // 波特率 115200
    UARTStdioConfig(0, 115200, 16000000);
}

/****************************************************************************
 * LEDTask: 反复按 g_ui32LedDelay 的周期闪烁 PF2
 ****************************************************************************/
void LEDTask(void *pvParameters)
{
    (void)pvParameters;

    while (1)
    {
        // 打开 LED
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, GPIO_PIN_2);
        // 延时 (以 g_ui32LedDelay 为基准)
        vTaskDelay( (portTickType)( g_ui32LedDelay / portTICK_RATE_MS ) );

        // 关闭 LED
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0);
        // 再次延时
        vTaskDelay( (portTickType)( g_ui32LedDelay / portTICK_RATE_MS ) );
    }
}

/****************************************************************************
 * SwitchTask: 检测 PF4 按键，每次按下后在 200ms <-> 1000ms 间切换闪烁周期
 *             并等待按键释放，避免重复触发
 ****************************************************************************/
void SwitchTask(void *pvParameters)
{
    (void)pvParameters;

    while (1)
    {
        // 检查是否按下 (PF4=0)
        if(GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_4) == 0)
        {
            // 切换: 若当前是 200ms，则改成 1000ms；否则改成 200ms
            if(g_ui32LedDelay == 200)
            {
                g_ui32LedDelay = 1000;
            }
            else
            {
                g_ui32LedDelay = 200;
            }

            // 若需要打印提示
            if(g_pUARTSemaphore)
            {
                if(xSemaphoreTake(g_pUARTSemaphore, 0) == pdTRUE)
                {
                    UARTprintf("Button pressed! LED delay = %d ms\n", g_ui32LedDelay);
                    xSemaphoreGive(g_pUARTSemaphore);
                }
            }

            // 等待松开 (PF4=1)
            while(GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_4) == 0)
            {
                vTaskDelay(10 / portTICK_RATE_MS); // 简易去抖
            }
        }

        // 让 SwitchTask 每隔 50ms 检测一次
        vTaskDelay( (portTickType)( 50 / portTICK_RATE_MS ) );
    }
}

/****************************************************************************
 * main() - 初始化系统, 创建任务, 启动调度器
 ****************************************************************************/
int
main(void)
{
    // 配置系统时钟到 50MHz
    ROM_SysCtlClockSet(SYSCTL_SYSDIV_4 | SYSCTL_USE_PLL |
                       SYSCTL_XTAL_16MHZ | SYSCTL_OSC_MAIN);

    // UART 初始化
    ConfigureUART();
    UARTprintf("\n\nFreeRTOS Demo (Fast/Slow Blink on Button)\n");

    // 启用 GPIOF, PF2(LED) -> 输出, PF4(按键) -> 输入 + 上拉
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);
    while(!SysCtlPeripheralReady(SYSCTL_PERIPH_GPIOF)) {}

    // PF2 -> LED
    GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);
    // PF4 -> 按键(上拉)
    GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_4);
    GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_4,
                     GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    // 可选：创建互斥锁保护 UART
    g_pUARTSemaphore = xSemaphoreCreateMutex();

    // 创建 LEDTask
    if(xTaskCreate(LEDTask,
                   (const signed char *)"LEDTask",
                   configMINIMAL_STACK_SIZE,
                   NULL,
                   tskIDLE_PRIORITY + 1,
                   NULL) != pdPASS)
    {
        UARTprintf("LEDTask creation failed!\n");
        while(1);
    }

    // 创建 SwitchTask
    if(xTaskCreate(SwitchTask,
                   (const signed char *)"SwitchTask",
                   configMINIMAL_STACK_SIZE,
                   NULL,
                   tskIDLE_PRIORITY + 1,
                   NULL) != pdPASS)
    {
        UARTprintf("SwitchTask creation failed!\n");
        while(1);
    }

    // 启动调度器 (不会返回)
    vTaskStartScheduler();

    // 如果调度器退出，则陷入死循环
    while(1)
    {
    }
}
