`timescale 1ns / 1ps

`include "define.v"


module Extender(
    input  [ 5:0] opcode,
    input  [25:0] input_26bImm,	
	 
    output [31:0] output_32bImm	
);
	
	assign output_32bImm[31:0] = (opcode == `OP_J)? { {6{input_26bImm[25]}}, input_26bImm[25:0]}	// JMP将�?�25�?符�?�扩展为32�?
										: { {16{input_26bImm[15]}}, input_26bImm[15:0]};//其他的指令如 SW/LW将�?�16�?符�?�扩展为32�?


endmodule