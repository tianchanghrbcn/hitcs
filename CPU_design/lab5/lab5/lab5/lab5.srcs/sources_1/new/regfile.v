`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/21 19:07:14
// Design Name: 
// Module Name: regfile
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module regfile(
    input clk,             // 时钟信号
    input we,              // 写使能信号，1时表示可以写入数据
    input resetn,          // 异步复位信号，低电平复位
    input [4:0] raddr1,    // 读取端口1的地址
    input [4:0] raddr2,    // 读取端口2的地址
    input [4:0] waddr,     // 写入端口的地址
    input [31:0] wdata,    // 写入的数据
    output [31:0] rdata1,  // 从读取端口1输出的数据
    output [31:0] rdata2   // 从读取端口2输出的数据
);

reg [31:0] regheap[31:0]; // 定义32个32位宽的寄存器，用来存储数据
integer i;

always @(posedge clk) begin // 时钟上升沿时触发
    if(resetn == 0) begin    // 当复位信号为0（低电平）时，执行复位操作
        // 遍历所有32个寄存器，将它们复位为0
        for (i = 0; i < 32; i = i + 1)
            regheap[i] <= 32'b0; // 异步复位，所有寄存器清零
    end
    else if (we) // 如果写使能信号为1，则进行写入操作
        regheap[waddr] <= wdata; // 在写地址`waddr`对应的寄存器写入`wdata`数据
end

// 读取端口1的输出
// 如果读取地址为0，则输出0（因为寄存器$0通常固定为0）
// 否则，输出`regheap`中对应地址的寄存器内容
assign rdata1 = (raddr1 == 5'b0) ? 32'b0 : regheap[raddr1];

// 读取端口2的输出
// 如果读取地址为0，则输出0（因为寄存器$0通常固定为0）
// 否则，输出`regheap`中对应地址的寄存器内容
assign rdata2 = (raddr2 == 5'b0) ? 32'b0 : regheap[raddr2];

endmodule

