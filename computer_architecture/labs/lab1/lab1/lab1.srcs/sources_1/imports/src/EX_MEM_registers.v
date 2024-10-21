`include "define.v"

module EX_MEM_registers(
    input clk,
    input reset_n,
    input [31:0] ALU_output_i,
    input [31:0] B_i,
    input [31:0] IR_i,
    input [31:0] PC_i,
    input wb_en_i,  // 新增的输入信号
    
    output reg [31:0] ALU_output_o,
    output reg [31:0] B_o,
    output reg [31:0] IR_o,
    output reg [31:0] PC_o,
    output reg wb_en_o  // 新增的输出信号
);

    always@(posedge clk)
    if(reset_n == 1'b0) begin
        ALU_output_o <= 0;
        B_o <= 0;
        IR_o <= 0;
        PC_o <= 0;
        wb_en_o <= 0;
    end
    else begin 
        ALU_output_o <= ALU_output_i;
        B_o <= B_i;
        IR_o <= IR_i;
        PC_o <= PC_i;
        wb_en_o <= wb_en_i;
    end
endmodule