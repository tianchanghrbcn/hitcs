//module ID_EX_registers(
//    input clk,
//    input reset_n,
//    input [31:0] NPC_i,
//    input [31:0] A_i,
//    input [31:0] B_i,
//    input [31:0] Imm32_i,
//    input [31:0] IR_i,
//    input [31:0] PC_i,
//    input [4:0] shamt_i, // 添加shamt输入
//    input stall, // 添加暂停信号
    
//    output reg [31:0] NPC_o,
//    output reg [31:0] A_o,
//    output reg [31:0] B_o,
//    output reg [31:0] Imm32_o,
//    output reg [31:0] IR_o,
//    output reg [31:0] PC_o,
//    output reg [4:0] shamt_o // 添加shamt输出
//    );
    
//    always@(posedge clk)
//    if(reset_n == 1'b0) begin
//        NPC_o <= 0;
//        A_o <= 0;
//        B_o <= 0;
//        Imm32_o <= 0;
//        IR_o <= 0;
//        PC_o <= 0;
//        shamt_o <= 0; // 重置shamt
//    end
//    else if (!stall) begin // 仅在没有暂停时更新寄存器
//        NPC_o <= NPC_i;
//        A_o <= A_i;
//        B_o <= B_i;
//        Imm32_o <= Imm32_i;
//        IR_o <= IR_i; 
//        PC_o <= PC_i;
//        shamt_o <= shamt_i; // 传递shamt
//    end
    
//endmodule

module ID_EX_registers(
    input clk,
    input reset_n,
    input [31:0] NPC_i,
    input [31:0] A_i,
    input [31:0] B_i,
    input [31:0] Imm32_i,
    input [31:0] IR_i,
    input [31:0] PC_i,
    input [4:0] shamt_i, // 添加shamt输入
    input stall, // 添加暂停信号
    
    output reg [31:0] NPC_o,
    output reg [31:0] A_o,
    output reg [31:0] B_o,
    output reg [31:0] Imm32_o,
    output reg [31:0] IR_o,
    output reg [31:0] PC_o,
    output reg [4:0] shamt_o // 添加shamt输出
    );
    
    always@(posedge clk)
    if(reset_n == 1'b0) begin
        NPC_o <= 0;
        A_o <= 0;
        B_o <= 0;
        Imm32_o <= 0;
        IR_o <= 0;
        PC_o <= 0;
        shamt_o <= 0; // 重置shamt
    end
    else if (stall) begin
        // 当stall信号为高电平时，保持当前状态
        NPC_o <= NPC_o;
        A_o <= A_o;
        B_o <= B_o;
        Imm32_o <= Imm32_o;
//        IR_o <= IR_o;
        IR_o <= 0;
//        PC_o <= PC_o;
        PC_o <= 0;
        shamt_o <= shamt_o;
    end
    else begin // 仅在没有暂停时更新寄存器
        NPC_o <= NPC_i;
        A_o <= A_i;
        B_o <= B_i;
        Imm32_o <= Imm32_i;
        IR_o <= IR_i; 
        PC_o <= PC_i;
        shamt_o <= shamt_i; // 传递shamt
    end
    
endmodule