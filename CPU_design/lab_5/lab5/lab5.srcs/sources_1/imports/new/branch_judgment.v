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
    input [4:0] x,        // �����5λ��������
    output [31:0] y       // �����32λ��ֻ��xλ��Ӧ��λΪ1������λΪ0
);
    // ������ `x` ��ֵ�������Ʋ���������һ��32λ�����������ֻ�е� `x` λΪ1
    assign y = 1 << x;    // ���磬��� x = 3���� y = 32'b00000000000000000000000000001000
endmodule

module branch_judgment (
    input [31:0] A,      // �����32λ������A������������ALU�Ľ��
    input [31:0] inst,   // ��ǰҪִ�е�ָ��
    output Cond,         // �����жϽ�������ڷ�֧�жϣ�1��ʾ��������
    output mux3          // ��·ѡ���������źţ�1ѡ����ת��ַ��0ѡ����һ��ָ��ĵ�ַ
);

    // Cond �����ж�A�Ƿ�Ϊ�㣬��AΪ0��CondΪ1������Ϊ0
    assign Cond = (A == 32'b0) ? 1'b1 : 1'b0;

    // ��鵱ǰָ���Ƿ�Ϊ��תָ�� (TYPE_J) �� BBTָ�� (TYPE_BBT)
    wire j_valid = (inst[31:26] == `TYPE_J);       // ��תָ���ж�
    wire bbt_valid = (inst[31:26] == `TYPE_BBT);   // BBTָ���ж�

    // ��ָ��� `inst[20:16]` �ν���Ϊһ�� 32 λ����������һ��λ��Ϊ 1
    wire [31:0] valid;
    dec5_32x my_decoder_5_32(inst[20:16], valid);  // ʹ�� dec5_32x ģ�齫 inst[20:16] ����Ϊ32λ���

    // �������תָ�� (j_valid)���� mux3 ���Ϊ 1��
    // ����� BBT ָ����� `A & valid` �����Ϊ0����ʾ��ת����������mux3 Ҳ���Ϊ 1��
    // ���� mux3 ���Ϊ 0��ѡ����һ��ָ�
    assign mux3 = (j_valid) | (bbt_valid & (((A & valid) == 32'b0) ? 1'b0 : 1'b1));

endmodule

