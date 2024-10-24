`include "define.v"

module MEM_WB_registers(
    input clk,
    input reset_n,
    input [31:0] LMD_i,
    input [31:0] ALU_output_i,
    input [31:0] IR_i,
    input [31:0] PC_i,
    input wb_en_i,
    
    output reg [31:0] LMD_o,
    output reg [31:0] ALU_output_o,
    output reg [31:0] IR_o,
    output reg [31:0] PC_o,
    output reg wb_en_o
);

    // ??????????
always@(posedge clk)
    // ???????????reset_n == 1'b0????????????
    if(reset_n == 1'b0) begin
        LMD_o <= 0;           // ?? LMD ??????????????
        ALU_output_o <= 0;    // ?? ALU ?????
        IR_o <= 0;            // ?? IR ?????
        PC_o <= 0;            // ?? PC ?????
        wb_en_o <= 0;         // ???????????
    end 
    // ??????????????????????
    else begin
        LMD_o <= LMD_i;            // ? LMD ????????????????????
        ALU_output_o <= ALU_output_i;  // ? ALU ????????????
        IR_o <= IR_i;              // ? IR ???????????
        PC_o <= PC_i;              // ? PC ???????????
        wb_en_o <= wb_en_i;        // ???????????????
    end

endmodule