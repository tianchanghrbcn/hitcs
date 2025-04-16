/****************************************************************************
 * 文件名: i2c_loopback_example.c
 * 功能: 在 TivaC (TM4C123) 上实现 I2C 回送实验，验证主机与从机的收发功能
 ****************************************************************************/

#include <stdbool.h>
#include <stdint.h>
#include "inc/hw_i2c.h"         // 硬件寄存器地址相关
#include "inc/hw_memmap.h"      // 存储器映射相关，如I2C0_BASE等
#include "inc/hw_types.h"       // 基本类型定义等
#include "driverlib/gpio.h"     // GPIO驱动
#include "driverlib/i2c.h"      // I2C驱动
#include "driverlib/pin_map.h"  // 引脚复用映射
#include "driverlib/sysctl.h"   // 系统控制(时钟、复位等)
#include "driverlib/uart.h"     // UART驱动
#include "utils/uartstdio.h"    // UART调试输出函数(UARTprintf等)

// 定义需发送/接收的数据个数
#define NUM_I2C_DATA    3
// 自定义从机地址（7位地址），可根据需要修改
#define SLAVE_ADDRESS   0x3C

/****************************************************************************
 * 函数名: InitConsole
 * 作用  : 初始化 UART0，用于调试输出
 *         1. 使能 GPIOA 和 UART0
 *         2. 配置PA0为 U0RX, PA1为U0TX
 *         3. 设置波特率 115200，时钟源是PIOSC(16MHz)
 ****************************************************************************/
void InitConsole(void)
{
    // 使能 GPIOA 时钟
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOA);

    // 配置 PA0/PA1 的复用功能为 UART
    GPIOPinConfigure(GPIO_PA0_U0RX);
    GPIOPinConfigure(GPIO_PA1_U0TX);

    // 使能 UART0 时钟
    SysCtlPeripheralEnable(SYSCTL_PERIPH_UART0);

    // 将 UART 时钟源配置为 PIOSC(内部16MHz)，而非系统时钟
    UARTClockSourceSet(UART0_BASE, UART_CLOCK_PIOSC);

    // 将 PA0/PA1 设置为 UART 引脚类型
    GPIOPinTypeUART(GPIO_PORTA_BASE, GPIO_PIN_0 | GPIO_PIN_1);

    // 使用 TivaWare 提供的 UARTStdioConfig 来快速配置 UART
    //  参数1: UART0
    //  参数2: 波特率 115200
    //  参数3: UART模块时钟频率 16MHz
    UARTStdioConfig(0, 96000, 16000000);
}

/****************************************************************************
 * 函数名: main
 ****************************************************************************/
int main(void)
{
    // ui32SysClock: 保存系统时钟频率(Hz)
    uint32_t ui32SysClock;

    // pui32DataTx[]: 主机需要发送的数据存放区
    // pui32DataRx[]: 从机/主机接收的数据存放区
    uint32_t pui32DataTx[NUM_I2C_DATA];
    uint32_t pui32DataRx[NUM_I2C_DATA];

    // 索引变量
    uint32_t ui32Index;

    /************************************************************************
     * 1. 配置系统时钟为 25MHz
     *    - 假设 LaunchPad 外接 25MHz 晶振 (有些LaunchPad是16MHz,需改参数)
     *    - SYSCTL_XTAL_25MHZ: 指示25MHz晶振
     *    - SYSCTL_OSC_MAIN: 主振荡器
     *    - SYSCTL_USE_OSC: 直接使用OSC, 不启用PLL
     *    - 结果: 运行频率= 25MHz
     ************************************************************************/
    ui32SysClock = SysCtlClockFreqSet((SYSCTL_XTAL_25MHZ |
                                       SYSCTL_OSC_MAIN |
                                       SYSCTL_USE_OSC),
                                       25000000);

    // 2. 使能 I2C0 和 GPIOB 的时钟
    SysCtlPeripheralEnable(SYSCTL_PERIPH_I2C0);
    SysCtlPeripheralEnable(SYSCTL_PERIPH_GPIOB);

    // 等待外设就绪(可选)
    // while(!SysCtlPeripheralReady(SYSCTL_PERIPH_I2C0)) {}
    // while(!SysCtlPeripheralReady(SYSCTL_PERIPH_GPIOB)) {}

    /************************************************************************
     * 3. 配置引脚 PB2 (I2C0SCL) / PB3 (I2C0SDA) 为 I2C 功能
     ************************************************************************/
    // 对应 TM4C123 的 pin_map.h 中的映射宏
    GPIOPinConfigure(GPIO_PB2_I2C0SCL);
    GPIOPinConfigure(GPIO_PB3_I2C0SDA);

    // 配置 PB2 为 I2C SCL引脚类型(带内部上拉)
    GPIOPinTypeI2CSCL(GPIO_PORTB_BASE, GPIO_PIN_2);
    // 配置 PB3 为 I2C SDA 引脚类型(开漏+上拉)
    GPIOPinTypeI2C(GPIO_PORTB_BASE, GPIO_PIN_3);

    /************************************************************************
     * 4. 配置 I2C0 模块
     *    - MCR (Master Configuration Register)设置最低位=1，启用Master功能
     *    - 设置 I2C 主机速率 (100k 或 400k)
     ************************************************************************/
    HWREG(I2C0_BASE + I2C_O_MCR) |= 0x01;    // 使能Master
    I2CMasterInitExpClk(I2C0_BASE, ui32SysClock, false);
    // false => 100kbps, true => 400kbps

    /************************************************************************
     * 5. 使能 I2C 从机
     *    - 在同一个 I2C0 上既作为Master又作为Slave
     ************************************************************************/
    I2CSlaveEnable(I2C0_BASE);
    // 设置此模块的从机地址(7位), 本例 = 0x3C
    I2CSlaveInit(I2C0_BASE, SLAVE_ADDRESS);

    /************************************************************************
     * 6. 配置 I2C 主机要访问的从机地址
     *    - 第3个参数 false => 主机写
     ************************************************************************/
    I2CMasterSlaveAddrSet(I2C0_BASE, SLAVE_ADDRESS, false);

    /************************************************************************
     * 7. 初始化 UART0，用于打印调试信息
     ************************************************************************/
    InitConsole();
    UARTprintf("I2C Loopback Example ->");
    UARTprintf("\n   Module = I2C0");
    UARTprintf("\n   Mode = Single Send/Receive");
    UARTprintf("\n   Rate = 100kbps\n\n");

    /************************************************************************
     * 8. 设置要发送的测试数据 'I', '2', 'C'
     ************************************************************************/
    pui32DataTx[0] = 'I';
    pui32DataTx[1] = '2';
    pui32DataTx[2] = 'C';

    // 先清空接收数组
    for (ui32Index = 0; ui32Index < NUM_I2C_DATA; ui32Index++)
    {
        pui32DataRx[ui32Index] = 0;
    }

    /************************************************************************
     * 9. 执行 "主机 -> 从机" 发送测试
     ************************************************************************/
    UARTprintf("Transferring from: Master -> Slave\n");

    for (ui32Index = 0; ui32Index < NUM_I2C_DATA; ui32Index++)
    {
        UARTprintf("  Sending: '%c'  . . .  ", pui32DataTx[ui32Index]);

        // 主机先把数据放到数据寄存器
        I2CMasterDataPut(I2C0_BASE, pui32DataTx[ui32Index]);

        // 发起单次发送指令
        I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_SINGLE_SEND);

        // 等待从机收到写请求 (RREQ)
        while (!(I2CSlaveStatus(I2C0_BASE) & I2C_SLAVE_ACT_RREQ))
        {
            // 可加入超时或错误处理
        }

        // 从机读取数据
        pui32DataRx[ui32Index] = I2CSlaveDataGet(I2C0_BASE);

        // 等待主机发送完成
        while (I2CMasterBusy(I2C0_BASE))
        {
            // ...
        }

        // 在 UART 上打印发送与接收的字符
        UARTprintf("Received: '%c'\n", pui32DataRx[ui32Index]);
    }

    // 再次清空接收数组
    for (ui32Index = 0; ui32Index < NUM_I2C_DATA; ui32Index++)
    {
        pui32DataRx[ui32Index] = 0;
    }

    /************************************************************************
     * 10. 执行 "从机 -> 主机" 发送测试
     *     - 首先把主机地址设置为读(true)
     *     - 发起接收命令
     *     - 从机送数据
     *     - 主机读回数据
     ************************************************************************/
    UARTprintf("\n\nTransferring from: Slave -> Master\n");
    // 主机地址设置为读(true)
    I2CMasterSlaveAddrSet(I2C0_BASE, SLAVE_ADDRESS, true);
    // 发起一次接收命令
    I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_SINGLE_RECEIVE);

    // 等待从机产生发送请求(TREQ)
    while (!(I2CSlaveStatus(I2C0_BASE) & I2C_SLAVE_ACT_TREQ))
    {
        // ...
    }

    for (ui32Index = 0; ui32Index < NUM_I2C_DATA; ui32Index++)
    {
        UARTprintf("  Sending: '%c'  . . .  ", pui32DataTx[ui32Index]);

        // 从机放数据到寄存器
        I2CSlaveDataPut(I2C0_BASE, pui32DataTx[ui32Index]);

        // 主机发起一次接收命令
        I2CMasterControl(I2C0_BASE, I2C_MASTER_CMD_SINGLE_RECEIVE);

        // 等待从机再次发送请求
        while (!(I2CSlaveStatus(I2C0_BASE) & I2C_SLAVE_ACT_TREQ))
        {
            // ...
        }

        // 主机读数据
        pui32DataRx[ui32Index] = I2CMasterDataGet(I2C0_BASE);

        // 打印回读结果
        UARTprintf("Received: '%c'\n", pui32DataRx[ui32Index]);
    }

    UARTprintf("\nDone.\n\n");
    return 0;
}
