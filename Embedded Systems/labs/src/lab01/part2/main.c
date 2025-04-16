#include <stdint.h>        // 标准整型定义，如 uint8_t, uint32_t
#include <stdbool.h>       // 布尔类型定义，如 bool

// 底层寄存器地址映射头文件
#include "inc/hw_memmap.h"

// TivaWare 系统控制（时钟、外设使能等）驱动库
#include "driverlib/sysctl.h"

// TivaWare GPIO（通用IO）驱动库
#include "driverlib/gpio.h"

int main(void)
{
    // ui8LEDOn 用于保存 LED 当前是否点亮的状态，0 表示熄灭，1 表示点亮
    uint8_t ui8LEDOn = 0;

    // 1. 使能 GPIOF 的时钟
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOF);

    // 2. 等待 GPIOF 时钟就绪
    while(!SysCtlPeripheralReady(SYSCTL_PERIPH_GPIOF))
    {
        // 如果尚未就绪，则在此处不停地等待
    }

    // 3. 配置 PF2 为数字输出引脚（用于控制 LED）
    GPIOPinTypeGPIOOutput(GPIO_PORTF_BASE, GPIO_PIN_2);

    // 4. 配置 PF4 为数字输入引脚，并开启内部上拉电阻（板载按键 SW1）
    //    GPIOPadConfigSet 用于设置引脚的驱动强度和模式，这里是 2mA 强度、标准上拉模式
    GPIOPinTypeGPIOInput(GPIO_PORTF_BASE, GPIO_PIN_4);
    GPIOPadConfigSet(GPIO_PORTF_BASE, GPIO_PIN_4,
                     GPIO_STRENGTH_2MA, GPIO_PIN_TYPE_STD_WPU);

    // 5. 主循环，持续检测按键并控制 LED
    while(1)
    {
        // (A) 读取 PF4 的电平，如果返回值为 0 表示按键被按下（因为启用上拉，按下时为低电平）
        if(GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_4) == 0)
        {
            // (B) 延时约 1 秒（在 80MHz 系统时钟下，SysCtlDelay(10000000/3) ~ 1s）
            //     SysCtlDelay(N) 大约消耗 N*3 个时钟周期
            SysCtlDelay(10000000 / 3);

            // (C) 再次检查按键是否仍然处于按下状态（长按）
            if(GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_4) == 0)
            {
                // (D) 翻转 LED 状态：如果当前熄灭，就点亮；如果当前点亮，就熄灭
                ui8LEDOn = !ui8LEDOn;

                if(ui8LEDOn)
                {
                    // LED 置高电平，PF2 引脚输出 1
                    GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, GPIO_PIN_2);
                }
                else
                {
                    // LED 置低电平，PF2 引脚输出 0
                    GPIOPinWrite(GPIO_PORTF_BASE, GPIO_PIN_2, 0);
                }

                // (E) 等待按键被释放（返回高电平），防止重复触发
                while(GPIOPinRead(GPIO_PORTF_BASE, GPIO_PIN_4) == 0)
                {
                    // 在此处空转，直到按键松开
                }
            }
        }
    }
}
