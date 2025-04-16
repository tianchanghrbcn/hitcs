`timescale 1ns / 1ps

module mux(
    input sel,           // 1 位的选择信号，决定输出是 d0 还是 d1
    input [31:0]d0,      // 32 位输入信号 d0
    input [31:0]d1,      // 32 位输入信号 d1
    output [31:0]out     // 32 位输出信号 out
    );

    assign out = ({32{!sel}} & d0) | ({32{sel}} & d1);

endmodule

