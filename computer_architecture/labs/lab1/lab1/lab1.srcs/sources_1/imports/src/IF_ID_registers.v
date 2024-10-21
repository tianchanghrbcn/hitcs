`timescale 1ns / 1ps

module IF_ID_registers(
    input clk,
    input reset_n,
    input [31:0] NPC_i,
    input [31:0] IR_i,
    input [31:0] PC_i,
    input stall, // 添加暂停信号
    
    output reg [31:0] NPC_o,
    output reg [31:0] IR_o,
    output reg [31:0] PC_o
    );
    
    always@(posedge clk)
    if(reset_n == 1'b0) begin
        NPC_o <= 0;
        IR_o <= 0;
        PC_o <= 0;
    end
    else if (stall) begin
        // 当stall信号为高电平时，保持当前状态
        NPC_o <= NPC_o;
        IR_o <= IR_o;
        PC_o <= PC_o;
    end
    else begin
         // 仅在没有暂停时更新寄存器
        NPC_o <= NPC_i;
        IR_o <= IR_i;
        PC_o <= PC_i; 
    end
           
endmodule