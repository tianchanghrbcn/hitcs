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
    input wire [31:0] A;        // ���������A��32λ
    input wire [31:0] B;        // ���������B��32λ
    input wire Cin;             // ��λ����
    input wire [4:0] Card;      // ����ѡ���źţ�����ALUִ����������
    output wire [31:0] F;       // ��������32λ
    output wire Cout;           // ��λ�����δʹ�ã�
    output wire Zero;           // ����Ƿ�Ϊ��ı�־�ź�

    // ����������������м����
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
    wire [31:0] a_same_b_result;   // A ~^ B����λͬ��
    wire [31:0] a_nots_b_result;   // A ^ B����λ���
    wire [31:0] not_a_and_b_result;// ~(A & B)
    wire [31:0] zero_result;       // ȫ0���

    wire [31:0] sll_result;        // A << B���߼�����
    wire [31:0] j_result;          // ��תָ�������
    wire [31:0] bbt_result;        // ��֧��ת������
    wire [31:0] cmp_result;        // �Ƚ�ָ����




    // ִ�в�ͬ���㲢���ɶ�Ӧ���
    assign add_result = A + B;               // �ӷ� A + B
    assign add_cin_result = A + B + Cin;     // �ӷ�������λ A + B + Cin
    assign sub_result = A - B;               // ���� A - B
    assign sub_cin_result = A - B - Cin;     // ����������λ A - B - Cin
    assign sub_n_result = B - A;             // ������� B - A
    assign sub_n_cin_result = B - A - Cin;   // �������������λ B - A - Cin
    assign a_result = A;                     // A����
    assign b_result = B;                     // B����
    assign not_a_result = ~A;                // Aȡ��
    assign not_b_result = ~B;                // Bȡ��
    assign a_or_b_result = A | B;            // ��λ�� A | B
    assign a_and_b_result = A & B;           // ��λ�� A & B
    assign a_same_b_result = A ~^ B;         // ��λͬ�� A ~^ B��XNOR��
    assign a_nots_b_result = A ^ B;          // ��λ��� A ^ B
    assign not_a_and_b_result = ~(A & B);    // ��λ��ȡ�� ~(A & B)
    assign zero_result = 32'd0;              // ���ȫ0

    assign sll_result = A << B;              // �߼����� A << B
    assign j_result = {(A[31:28]),(B[25:0]),2'b0}; // ��תָ�������
    assign bbt_result = (B << 2) + A;        // ��֧��ת���� (B << 2) + A

    // �Ƚ�ָ��ļ�����
    assign cmp_result[0] = (A == B) ? 1'b1 : 1'b0; // ����ж�
    assign cmp_result[1] = ((!A[31] ^ B[31]) & (A < B)) | ((A[31] ^ B[31]) & (A[31])) ? 1'b1 : 1'b0; // �з���С�ڱȽ�
    assign cmp_result[2] = (A < B) ? 1'b1 : 1'b0; // �޷���С�ڱȽ�
    assign cmp_result[3] = cmp_result[0] | cmp_result[1]; // �������ж�
    assign cmp_result[4] = cmp_result[0] | cmp_result[2]; // �������޷����ж�
    assign cmp_result[9:5] = {!cmp_result[4], !cmp_result[3], !cmp_result[2], !cmp_result[1], !cmp_result[0]}; // ����ȽϽ��
    assign cmp_result[31:10] = 22'b0; // ����λ���0
    
    // ���ݿ����ź�Cardѡ�����յ����F
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
    // �ж����յ����F�Ƿ�Ϊ0������Zero�ź�
    assign Zero = (F == 32'b0);
endmodule
