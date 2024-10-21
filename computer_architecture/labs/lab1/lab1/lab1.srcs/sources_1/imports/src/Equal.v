`include "define.v"

module Equal(
    input [5:0] opcode,
    input [31:0] data_A,
    input [31:0] data_B,
    
    output equal
    );
    
    assign equal = (opcode == `OP_J || (opcode == `OP_BBT && data_A == data_B)) ? 1:0;
endmodule