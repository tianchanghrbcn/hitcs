`include "define.v"

module MUX2(
    input [5:0]  opcode,
    input [31:0] data0,
    input [31:0] data1,
    
    output [31:0] result
);
	assign result = (opcode == `OP_J || opcode == `OP_BBT || opcode == `OP_LW || opcode == `OP_SW) ? data1 : data0; //Imm:B
    
endmodule