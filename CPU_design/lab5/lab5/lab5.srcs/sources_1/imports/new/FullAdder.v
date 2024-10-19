`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/21 19:06:25
// Design Name: 
// Module Name: FullAdder
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


// 单位全加器模块，处理单个位的加法运算
module SingleFullAdder(A,B,Cin,Sum,Cout);
    input wire A;        // 加数A的一位
    input wire B;        // 加数B的一位
    input wire Cin;      // 上一位的进位
    output wire Sum;     // 当前位的和（Sum）
    output wire Cout;    // 当前位的进位输出（Cout）

    // Sum的计算：对A、B、Cin进行异或运算，表示单个位的和
    assign Sum = A ^ B ^ Cin;  // 异或操作计算当前位的和
    
    // Cout的计算：当A和B、A和Cin或B和Cin中任意两个为1时，会产生进位
    assign Cout = (A & B) | (A & Cin) | (B & Cin);  // 只要有两个输入为1，就会产生进位
endmodule

// 32位全加器模块，使用32个单位全加器来实现
module FullAdder(A,B,Cin,Sum,Cout);
    input wire [31:0]A;    // 32位加数A
    input wire [31:0]B;    // 32位加数B
    input wire Cin;        // 初始进位（通常为0）
    output wire [31:0]Sum; // 32位的和
    output wire Cout;      // 最后的进位输出
    wire [30:0]C;          // 用于存储中间的进位信号

    genvar i;  // 生成变量，用于在generate语句中迭代

    // 第一个单位全加器，处理最低位的加法运算（A[0] + B[0] + Cin）
    SingleFullAdder FA0 (A[0], B[0], Cin, Sum[0], C[0]);

    // 使用generate语句生成多个单位全加器，处理A和B的第1位到第30位
    generate
        for (i = 1; i < 31; i = i + 1) 
        begin
            // 每个单位全加器的输入是A[i]、B[i]和上一位的进位C[i-1]
            SingleFullAdder FA (A[i], B[i], C[i-1], Sum[i], C[i]);
        end
    endgenerate

    // 最后一个单位全加器，处理最高位的加法运算（A[31] + B[31] + C[30]）
    SingleFullAdder FA31 (A[31], B[31], C[30], Sum[31], Cout);
endmodule

