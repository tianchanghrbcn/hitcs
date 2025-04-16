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


// ��λȫ����ģ�飬������λ�ļӷ�����
module SingleFullAdder(A,B,Cin,Sum,Cout);
    input wire A;        // ����A��һλ
    input wire B;        // ����B��һλ
    input wire Cin;      // ��һλ�Ľ�λ
    output wire Sum;     // ��ǰλ�ĺͣ�Sum��
    output wire Cout;    // ��ǰλ�Ľ�λ�����Cout��

    // Sum�ļ��㣺��A��B��Cin����������㣬��ʾ����λ�ĺ�
    assign Sum = A ^ B ^ Cin;  // ���������㵱ǰλ�ĺ�
    
    // Cout�ļ��㣺��A��B��A��Cin��B��Cin����������Ϊ1ʱ���������λ
    assign Cout = (A & B) | (A & Cin) | (B & Cin);  // ֻҪ����������Ϊ1���ͻ������λ
endmodule

// 32λȫ����ģ�飬ʹ��32����λȫ������ʵ��
module FullAdder(A,B,Cin,Sum,Cout);
    input wire [31:0]A;    // 32λ����A
    input wire [31:0]B;    // 32λ����B
    input wire Cin;        // ��ʼ��λ��ͨ��Ϊ0��
    output wire [31:0]Sum; // 32λ�ĺ�
    output wire Cout;      // ���Ľ�λ���
    wire [30:0]C;          // ���ڴ洢�м�Ľ�λ�ź�

    genvar i;  // ���ɱ�����������generate����е���

    // ��һ����λȫ�������������λ�ļӷ����㣨A[0] + B[0] + Cin��
    SingleFullAdder FA0 (A[0], B[0], Cin, Sum[0], C[0]);

    // ʹ��generate������ɶ����λȫ����������A��B�ĵ�1λ����30λ
    generate
        for (i = 1; i < 31; i = i + 1) 
        begin
            // ÿ����λȫ������������A[i]��B[i]����һλ�Ľ�λC[i-1]
            SingleFullAdder FA (A[i], B[i], C[i-1], Sum[i], C[i]);
        end
    endgenerate

    // ���һ����λȫ�������������λ�ļӷ����㣨A[31] + B[31] + C[30]��
    SingleFullAdder FA31 (A[31], B[31], C[30], Sum[31], Cout);
endmodule

