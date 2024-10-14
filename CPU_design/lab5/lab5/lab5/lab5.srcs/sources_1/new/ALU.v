`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/21 19:08:39
// Design Name: 
// Module Name: ALU
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


`define ADD 5'b00001
`define ADD_CIN 5'b00010
`define SUB 5'b00011
`define SUB_CIN 5'b00100
`define SUB_N 5'b00101
`define SUB_N_CIN 5'b00110
`define Aself 5'b00111
`define Bself 5'b01000
`define NOT_A 5'b01001
`define NOT_B 5'b01010
`define A_OR_B 5'b01011
`define A_AND_B 5'b01100
`define A_SAME_B 5'b01101
`define A_NOTS_B 5'b01110
`define NOT_A_AND_B 5'b01111
`define ZERO 5'b10000


`define SLL  5'b10001  
`define JMP  5'b10010
`define BBT  5'b10011
`define CMP  5'b10100


module ALU(A, B, Cin, Card, F, Cout, Zero);
    input wire [31:0] A;        // 输入操作数A，32位
    input wire [31:0] B;        // 输入操作数B，32位
    input wire Cin;             // 进位输入
    input wire [4:0] Card;      // 操作选择信号，控制ALU执行哪种运算
    output wire [31:0] F;       // 输出结果，32位
    output wire Cout;           // 进位输出（未使用）
    output wire Zero;           // 输出是否为零的标志信号

    // 定义各种运算结果的中间变量
    wire [31:0] add_result;        // A + B
    wire [31:0] add_cin_result;    // A + B + Cin
    wire [31:0] sub_result;        // A - B
    wire [31:0] sub_cin_result;    // A - B - Cin
    wire [31:0] sub_n_result;      // B - A
    wire [31:0] sub_n_cin_result;  // B - A - Cin
    wire [31:0] a_result;          // A
    wire [31:0] b_result;          // B
    wire [31:0] not_a_result;      // ~A
    wire [31:0] not_b_result;      // ~B
    wire [31:0] a_or_b_result;     // A | B
    wire [31:0] a_and_b_result;    // A & B
    wire [31:0] a_same_b_result;   // A ~^ B（按位同或）
    wire [31:0] a_nots_b_result;   // A ^ B（按位异或）
    wire [31:0] not_a_and_b_result;// ~(A & B)
    wire [31:0] zero_result;       // 全0输出

    wire [31:0] sll_result;        // A << B，逻辑左移
    wire [31:0] j_result;          // 跳转指令计算结果
    wire [31:0] bbt_result;        // 分支跳转计算结果
    wire [31:0] cmp_result;        // 比较指令结果




    // 执行不同运算并生成对应结果
    assign add_result = A + B;               // 加法 A + B
    assign add_cin_result = A + B + Cin;     // 加法，带进位 A + B + Cin
    assign sub_result = A - B;               // 减法 A - B
    assign sub_cin_result = A - B - Cin;     // 减法，带进位 A - B - Cin
    assign sub_n_result = B - A;             // 反向减法 B - A
    assign sub_n_cin_result = B - A - Cin;   // 反向减法，带进位 B - A - Cin
    assign a_result = A;                     // A自身
    assign b_result = B;                     // B自身
    assign not_a_result = ~A;                // A取反
    assign not_b_result = ~B;                // B取反
    assign a_or_b_result = A | B;            // 按位或 A | B
    assign a_and_b_result = A & B;           // 按位与 A & B
    assign a_same_b_result = A ~^ B;         // 按位同或 A ~^ B（XNOR）
    assign a_nots_b_result = A ^ B;          // 按位异或 A ^ B
    assign not_a_and_b_result = ~(A & B);    // 按位与取反 ~(A & B)
    assign zero_result = 32'd0;              // 输出全0

    assign sll_result = A << B;              // 逻辑左移 A << B
    assign j_result = {(A[31:28]),(B[25:0]),2'b0}; // 跳转指令计算结果
    assign bbt_result = (B << 2) + A;        // 分支跳转计算 (B << 2) + A

    // 比较指令的计算结果
    assign cmp_result[0] = (A == B) ? 1'b1 : 1'b0; // 相等判断
    assign cmp_result[1] = ((!A[31] ^ B[31]) & (A < B)) | ((A[31] ^ B[31]) & (A[31])) ? 1'b1 : 1'b0; // 有符号小于比较
    assign cmp_result[2] = (A < B) ? 1'b1 : 1'b0; // 无符号小于比较
    assign cmp_result[3] = cmp_result[0] | cmp_result[1]; // 不大于判断
    assign cmp_result[4] = cmp_result[0] | cmp_result[2]; // 不大于无符号判断
    assign cmp_result[9:5] = {!cmp_result[4], !cmp_result[3], !cmp_result[2], !cmp_result[1], !cmp_result[0]}; // 反向比较结果
    assign cmp_result[31:10] = 22'b0; // 其他位填充0
    
    // 根据控制信号Card选择最终的输出F
    assign F = 
          ({32{Card == `ADD}} & add_result) |  
          ({32{Card == `SUB}} & sub_result) |
          ({32{Card == `ADD_CIN}} & add_cin_result) | 
          ({32{Card == `SUB_CIN}} & sub_cin_result) |
          ({32{Card == `SUB_N}} & sub_n_result) |
          ({32{Card == `SUB_N_CIN}} & sub_n_cin_result) | 
          ({32{Card == `Aself}} & a_result) |
          ({32{Card == `Bself}} & b_result) |
          ({32{Card == `NOT_A}} & not_a_result) |
          ({32{Card == `NOT_B}} & not_b_result) |  
          ({32{Card == `A_OR_B}} & a_or_b_result) |
          ({32{Card == `A_AND_B}} & a_and_b_result) |
          ({32{Card == `A_SAME_B}} & a_same_b_result) |
          ({32{Card == `A_NOTS_B}} & a_nots_b_result) |
          ({32{Card == `NOT_A_AND_B}} & not_a_and_b_result) |
          ({32{Card == `ZERO}} & zero_result) |
          ({32{Card == `SLL}} & sll_result) |
          ({32{Card == `JMP}} & j_result) |
          ({32{Card == `BBT}} & bbt_result)|
          ({32{Card == `CMP}} & cmp_result)
        ;
    // 判断最终的输出F是否为0，生成Zero信号
    assign Zero = (F == 32'b0);
endmodule
