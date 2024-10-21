`timescale 1ns / 1ps

`include "define.v"

module Writeback_aMUX(
    input  [5:0] opcode,
    input  [4:0] rt_address,
    input  [4:0] rd_address,
	 
    output [4:0] writeback_address
    );
    
   assign writeback_address = (opcode == `OP_LW)? rt_address : rd_address; //Load-rt:其他-rd
endmodule