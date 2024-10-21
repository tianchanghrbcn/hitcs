`timescale 1ns / 1ps

`include "define.v"


module Extender(
    input  [ 5:0] opcode,	// 指令的操作码
    input  [25:0] input_26bImm,	// 待扩展的数据
	 
    output [31:0] output_32bImm	// 扩展到32位后的数据
);
	
	assign output_32bImm[31:0] = (opcode == `OP_J)? { {6{input_26bImm[25]}}, input_26bImm[25:0]}	// JMP将后25位符号扩展为32位
										: { {16{input_26bImm[15]}}, input_26bImm[15:0]};//其他的指令如 SW/LW将后16位符号扩展为32位


endmodule