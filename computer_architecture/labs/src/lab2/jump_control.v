`timescale 1ns / 1ps

module jump_control (
    input [31:0] reg1,
    input [31:0] reg2,
    input [31:0] instruction,
    output is_jump_condition,
    output execute_jump
);
    assign is_jump_condition = (instruction[31:26] == 6'b111111) || (instruction[31:26] == 6'b000010);
    assign execute_jump = (instruction[31:26] == 6'b111111 && reg1[instruction[20:16]]) || (instruction[31:26] == 6'b000010);
endmodule
