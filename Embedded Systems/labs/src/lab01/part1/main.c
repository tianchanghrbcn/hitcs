#include <stdint.h>               // 标准整型定义，如 uint32_t
#include <stdbool.h>              // 布尔类型定义，如 bool

// TivaWare 底层硬件地址映射头文件
#include "inc/hw_memmap.h"

// TivaWare 驱动库：系统控制（外设使能、时钟配置等）
#include "driverlib/sysctl.h"

// TivaWare 驱动库：GPIO（通用输入输出）
#include "driverlib/gpio.h"

int main(void)
{
    // 1. 使用 TivaWare 函数 SysCtlPeripheralEnable 使能 GPIOF 模块时钟
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    // 2. 等待 GPIOF 外设就绪
    //    SysCtlPeripheralReady 用于检查指定外设是否已经启用并可以访问
    while(!SysCtlPeripheralReady(SYSCTL_PERIPH_GPIOF))
    {
        // 若未就绪，则在此处等待
    }

    // 3. 将 PF1 (红色LED) 和 PF2 (蓝色LED) 配置为数字输出引脚
    //    第一个参数：GPIO 端口基地址 (GPIO_PORTF_BASE)
    //    第二个参数：要配置为输出的引脚 (GPIO_PIN_1 | GPIO_PIN_2)
    GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2);

    // 4. 进入主循环，不断切换 LED
    while(1)
    {
        // (A) 点亮红色LED (PF1)
        //     GPIOPinWrite 第三个参数是要输出到引脚的数据
        //     这里在 PIN_1 与 PIN_2 上写入 PIN_1 => PF1 亮, PF2 灭
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2, GPIO_PIN_1);

        // 延时一段时间，让人眼能看到红色LED亮
        SysCtlDelay(2000000);

        // (B) 点亮蓝色LED (PF2)
        //     这里在 PIN_1 与 PIN_2 上写入 PIN_2 => PF2 亮, PF1 灭
        GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_1 | GPIO_PIN_2, GPIO_PIN_2);

        // 延时一段时间，让人眼能看到蓝色LED亮
        SysCtlDelay(2000000);
    }
}
