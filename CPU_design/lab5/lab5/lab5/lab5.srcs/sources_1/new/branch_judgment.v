`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/21 19:08:12
// Design Name: 
// Module Name: branch_judgment
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


`define INSE_ADD  6'b100000
`define INSE_SUB  6'b100010
`define INSE_AND  6'b100100
`define INSE_OR   6'b100101
`define INSE_XOR  6'b100110
`define INSE_MOVZ 6'b001010
`define INSE_SLL  6'b000000


`define TYPE_R   6'b000000
`define TYPE_MS  6'b101011
`define TYPE_ML  6'b100011
`define TYPE_J   6'b000010
`define TYPE_CMP 6'b111110
`define TYPE_BBT 6'b111111

module dec5_32x
(
    input [4:0] x,        // 输入的5位二进制数
    output [31:0] y       // 输出的32位，只有x位对应的位为1，其他位为0
);
    // 将输入 `x` 的值进行左移操作，产生一个32位的输出，其中只有第 `x` 位为1
    assign y = 1 << x;    // 例如，如果 x = 3，则 y = 32'b00000000000000000000000000001000
endmodule

module branch_judgment (
    input [31:0] A,      // 输入的32位操作数A，可能是来自ALU的结果
    input [31:0] inst,   // 当前要执行的指令
    output Cond,         // 条件判断结果，用于分支判断，1表示条件满足
    output mux3          // 多路选择器控制信号，1选择跳转地址，0选择下一条指令的地址
);

    // Cond 用于判断A是否为零，若A为0则Cond为1，否则为0
    assign Cond = (A == 32'b0) ? 1'b1 : 1'b0;

    // 检查当前指令是否为跳转指令 (TYPE_J) 或 BBT指令 (TYPE_BBT)
    wire j_valid = (inst[31:26] == `TYPE_J);       // 跳转指令判断
    wire bbt_valid = (inst[31:26] == `TYPE_BBT);   // BBT指令判断

    // 将指令的 `inst[20:16]` 段解码为一个 32 位的数，其中一个位置为 1
    wire [31:0] valid;
    dec5_32x my_decoder_5_32(inst[20:16], valid);  // 使用 dec5_32x 模块将 inst[20:16] 解码为32位输出

    // 如果是跳转指令 (j_valid)，则 mux3 输出为 1；
    // 如果是 BBT 指令，并且 `A & valid` 结果不为0，表示跳转条件成立，mux3 也输出为 1；
    // 否则 mux3 输出为 0，选择下一条指令。
    assign mux3 = (j_valid) | (bbt_valid & (((A & valid) == 32'b0) ? 1'b0 : 1'b1));

endmodule

