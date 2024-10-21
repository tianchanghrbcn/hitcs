`timescale 1ns / 1ps

`include "define.v"

module MUX1(
    input [5:0]  opcode,
    input [31:0] data0,
    input [31:0] data1,
    
    output [31:0] result
    );
    //JMP BEQ
    assign result = (opcode == `OP_J || opcode == `OP_BBT) ? data0 : data1; //NPC:A
endmodule