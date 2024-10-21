`include "define.v"

module Writeback_dMUX(
    input [5:0] opcode,
    input [31:0] data0,
    input [31:0] data1,
    
    output [31:0] writeback_data
    );
    
   assign writeback_data = (opcode == `OP_LW)? data0 : data1; //LMD:ALU_output
endmodule