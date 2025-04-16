`timescale 1ns / 1ps

module mux(
    input sel,           // 1 λ��ѡ���źţ���������� d0 ���� d1
    input [31:0]d0,      // 32 λ�����ź� d0
    input [31:0]d1,      // 32 λ�����ź� d1
    output [31:0]out     // 32 λ����ź� out
    );

    assign out = ({32{!sel}} & d0) | ({32{sel}} & d1);

endmodule

