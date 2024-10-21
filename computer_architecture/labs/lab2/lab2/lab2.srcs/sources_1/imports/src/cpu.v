`timescale 1ns / 1ps

`include "define.v"

module cpu(
    input            clk,
    input            resetn,

    output           inst_sram_en,       // 指令存储器读使能
    output [31:0]    inst_sram_addr,     // 指令存储器读地址
    input  [31:0]    inst_sram_rdata,    // 指令存储器读出的数据

    output           data_sram_en,       // 数据存储器端口读/写使能
    output [3:0]     data_sram_wen,      // 数据存储器写使能      
    output [31:0]    data_sram_addr,     // 数据存储器读/写地址
    output [31:0]    data_sram_wdata,    // 写入数据存储器的数据
    input  [31:0]    data_sram_rdata,    // 数据存储器读出的数据

    // 供自动测试环境进行CPU正确性检查
    output [31:0]    debug_wb_pc     ,  // 当前正在执行指令的PC
    output           debug_wb_rf_wen ,  // 当前通用寄存器组的写使能信号
    output [4 :0]    debug_wb_rf_wnum,  // 当前通用寄存器组写回的寄存器编号
    output [31:0]    debug_wb_rf_wdata   // 当前指令需要写回的数据
    );

    // 信号定义
    wire [31:0] IF_PC;
    wire [31:0] next_PC;
    wire [31:0] IF_NPC;
    wire [31:0] IF_IR;
    
    //ID
    wire [31:0] ID_PC;
    wire [31:0] ID_NPC;
    wire [31:0] ID_A;
    wire [31:0] ID_B;
    wire [31:0] ID_Imm;
    wire [31:0] ID_IR;
    
    //EX
    wire [31:0] EX_PC;
    wire [31:0] EX_NPC;
    wire [31:0] EX_A;
    wire [31:0] EX_B;
    wire [31:0] EX_Imm;
    wire [31:0] EX_IR;
    wire [4:0]  EX_shamt;
    
    wire        EX_Cond;
    wire [31:0] EX_ALU_output;
    wire        EX_wb_en;
    
    wire [31:0] alu_data_1;
    wire [31:0] alu_data_2;
    
    //MEM
    wire [31:0] MEM_PC;
    wire [31:0] MEM_ALU_output;
    wire [31:0] MEM_B;
    wire [31:0] MEM_IR;
    wire [31:0] MEM_LMD;
    wire        MEM_wb_en;
    
    //WB
    wire [31:0] WB_PC;
    wire [31:0] WB_LMD;
    wire [31:0] WB_ALU_output;
    wire [31:0] WB_IR;
    wire        WB_wb_en;
    
    wire reg_write_enable;
    wire [4:0]  WB_address;
    wire [31:0] WB_data;
   
    assign debug_wb_pc = WB_PC;
    assign debug_wb_rf_wen = WB_wb_en;
    assign debug_wb_rf_wnum = WB_address;
    assign debug_wb_rf_wdata = WB_data;
    
    wire stall;
    // 暂停信号
    // 如果在ID阶段的指令依赖于EX, MEM或WB阶段的指令结果，则需要暂停流水线
    // 具体来说，如果ID阶段指令的源寄存器rs或rt与EX, MEM或WB阶段指令的目标寄存器相同，则产生数据冒险，需要暂停
//    assign stall = (
//        // 检查ID阶段的rs寄存器是否与EX阶段的rt寄存器相同
//        ((ID_IR[25:21] == EX_IR[20:16]) && (EX_IR[20:16] != 0)) || 
//        // 检查ID阶段的rs寄存器是否与MEM阶段的rt寄存器相同
//        ((ID_IR[25:21] == MEM_IR[20:16]) && (MEM_IR[20:16] != 0)) || 
//        // 检查ID阶段的rs寄存器是否与WB阶段的rt寄存器相同
//        ((ID_IR[25:21] == WB_IR[20:16]) && (WB_IR[20:16] != 0)) || 
//        // 检查ID阶段的rt寄存器是否与EX阶段的rt寄存器相同
//        ((ID_IR[20:16] == EX_IR[20:16]) && (EX_IR[20:16] != 0)) || 
//        // 检查ID阶段的rt寄存器是否与MEM阶段的rt寄存器相同
//        ((ID_IR[20:16] == MEM_IR[20:16]) && (MEM_IR[20:16] != 0)) || 
//        // 检查ID阶段的rt寄存器是否与WB阶段的rt寄存器相同
//        ((ID_IR[20:16] == WB_IR[20:16]) && (WB_IR[20:16] != 0))
//    );
    assign stall = (
        // 检查ID阶段的rs寄存器是否与EX阶段的rt或rd寄存器相同
        ((ID_IR[25:21] != 0) && ((ID_IR[25:21] == EX_IR[20:16]) || (ID_IR[25:21] == EX_IR[15:11]))) ||
        // 检查ID阶段的rs寄存器是否与MEM阶段的rt或rd寄存器相同
        ((ID_IR[25:21] != 0) && ((ID_IR[25:21] == MEM_IR[20:16]) || (ID_IR[25:21] == MEM_IR[15:11]))) ||
        // 检查ID阶段的rs寄存器是否与WB阶段的rt或rd寄存器相同
        ((ID_IR[25:21] != 0) && ((ID_IR[25:21] == WB_IR[20:16]) || (ID_IR[25:21] == WB_IR[15:11]))) ||
        // 检查ID阶段的rt寄存器是否与EX阶段的rt或rd寄存器相同
        ((ID_IR[20:16] != 0) && ((ID_IR[20:16] == EX_IR[20:16]) || (ID_IR[20:16] == EX_IR[15:11]))) ||
        // 检查ID阶段的rt寄存器是否与MEM阶段的rt或rd寄存器相同
        ((ID_IR[20:16] != 0) && ((ID_IR[20:16] == MEM_IR[20:16]) || (ID_IR[20:16] == MEM_IR[15:11]))) ||
        // 检查ID阶段的rt寄存器是否与WB阶段的rt或rd寄存器相同
        ((ID_IR[20:16] != 0) && ((ID_IR[20:16] == WB_IR[20:16]) || (ID_IR[20:16] == WB_IR[15:11])))
    );
    
    //IF 
    PC pc(
        .clk            (clk),
        .reset_n        (resetn),
        .new_address    (IF_NPC),
        .stall          (stall),
        
        .output_address (IF_PC)
    );
    
    ADD PC_plus4(
        .data1          (IF_PC), 
        .data2          (32'h00000004), 
        .result         (next_PC)
    );

    // 指令存储器接口
    assign inst_sram_en = 1'b1;
    assign inst_sram_addr = IF_PC;
    assign IF_IR = inst_sram_rdata;
    
    reg [31:0] IF_PC_reg;
    reg [31:0] IF_IR_reg;
    reg stall_d1; // 用于记录前一个周期的stall信号
    
    always @(posedge clk) begin
        if (!resetn) begin
            IF_PC_reg <= 32'b0;
        end else if (!stall) begin
            IF_PC_reg <= IF_PC;
        end
    end
    
    always @(posedge clk) begin
    if (!resetn) begin
        IF_IR_reg <= 32'b0;
        stall_d1 <= 1'b0;
    end else begin
        stall_d1 <= stall; // 更新前一个周期的stall信号
        if (stall && !stall_d1) begin
            // 在暂停的第一个周期，保持原值
            IF_IR_reg <= IF_IR;
            stall_d1 <= 1'b1;
        end else if (stall) begin
            // 在暂停的后续周期，继续保持原值
            IF_IR_reg <= IF_IR_reg;
        end else if (!stall && stall_d1) begin
            IF_IR_reg <= IF_IR_reg;
            stall_d1 <= 1'b0;
        end else begin
            // 在解除暂停的下一个周期，更新值
            IF_IR_reg <= IF_IR;
        end
    end
end
    

    MUX PC_mux(
        .data0          (MEM_ALU_output),
        .data1          (next_PC),
        .select         (EX_Cond),
        .result         (IF_NPC)
    );
    
    IF_ID_registers IF_ID_reg(
        .clk            (clk),
        .reset_n        (resetn),
        .NPC_i          (IF_NPC),
//        .IR_i           (IF_IR_reg),
//        .PC_i           (IF_PC),
        .IR_i           (stall_d1 ? IF_IR_reg : IF_IR),// 如果有stall则使用寄存的指令，否则直接传递
        .PC_i           (IF_PC_reg),   // 传递到 ID 阶段的延迟一个周期的 PC
        .stall          (stall),
        
        .NPC_o          (ID_NPC),
        .IR_o           (ID_IR),
        .PC_o           (ID_PC)
    );
    
    //ID
    Extender extender(
        .opcode         (ID_IR[31:26]),
        .input_26bImm   (ID_IR[25:0]),
        .output_32bImm  (ID_Imm)
    );
    
    Registers Registers_set(
        .clk            (clk),
        .reset_n        (resetn),
        .write_enable   (WB_wb_en),
        .rs             (ID_IR[25:21]),
        .rt             (ID_IR[20:16]),
        .writeback_address(WB_address),
        .writeback_data (WB_data),
        .output_data_A  (ID_A),
        .output_data_B  (ID_B)
    );
    

    ID_EX_registers ID_EX_reg(
        .clk            (clk),
        .reset_n        (resetn),
        .NPC_i          (ID_NPC),
        .A_i            (ID_A),
        .B_i            (ID_B),
        .Imm32_i        (ID_Imm),
        .IR_i           (ID_IR),
        .PC_i           (ID_PC),
        .shamt_i        (ID_IR[10:6]),  // 提取shamt
        .stall          (stall), // 传递暂停信号
        
        .NPC_o          (EX_NPC),
        .A_o            (EX_A),
        .B_o            (EX_B),
        .Imm32_o        (EX_Imm),
        .IR_o           (EX_IR),
        .PC_o           (EX_PC),
        .shamt_o        (EX_shamt)      // 传递shamt
    );
    
    
    //EX
    MUX1 mux1(
        .opcode         (EX_IR[31:26]),
        .data0          (EX_NPC),
        .data1          (EX_A),
        .result         (alu_data_1)
    );
    
    MUX2 mux2(
        .opcode         (EX_IR[31:26]),
        .data0          (EX_B),
        .data1          (EX_Imm),
        .result         (alu_data_2)
    );
    
    Equal equal(
        .opcode         (IF_IR[31:26]),
        .data_A         (EX_A),
        .data_B         (EX_B),
        .equal          (EX_Cond)
    );
    
    ALU alu(
        .opcode         (EX_IR[31:26]),
        .alu_op         (EX_IR[5:0]),
        .input_data1    (alu_data_1),
        .input_data2    (alu_data_2),
        .shamt          (EX_shamt),
        .IR             (EX_IR),
        
        .result         (EX_ALU_output),
        .wb_en          (EX_wb_en)
    );
    
    // 提前一个阶段准备好地址和使能信号，因为data_sram要在下一个上升沿才能访存
    assign data_sram_en = 1'b1;
    assign data_sram_wdata = EX_B;
    assign data_sram_addr = EX_ALU_output;
    assign data_sram_wen = (EX_IR[31:26] == `OP_SW) ? 4'b1111 : 4'b0000; // SW 指令
    
    EX_MEM_registers EX_MEM_reg(
        .clk            (clk),
        .reset_n        (resetn), 
        .ALU_output_i   (EX_ALU_output),
        .B_i            (EX_B),
        .IR_i           (EX_IR),
        .PC_i           (EX_PC),
        .wb_en_i        (EX_wb_en),
        
        .ALU_output_o   (MEM_ALU_output),
        .B_o            (MEM_B),
        .IR_o           (MEM_IR),
        .PC_o           (MEM_PC),
        .wb_en_o        (MEM_wb_en)
    );
    
    //Mem
    // 数据存储器接口
//    assign data_sram_en = 1'b1;
//    assign data_sram_addr = MEM_ALU_output;
    assign MEM_LMD = data_sram_rdata;
//    assign data_sram_wdata = MEM_B;
//    assign data_sram_wen = (MEM_IR[31:26] == `OP_SW) ? 4'b1111 : 4'b0000; // SW 指令


    MEM_WB_registers MEM_WB_reg(
        .clk            (clk),
        .reset_n        (resetn),
        .LMD_i          (MEM_LMD),
        .ALU_output_i   (MEM_ALU_output),  
        .IR_i           (MEM_IR),
        .PC_i           (MEM_PC),
        .wb_en_i        (MEM_wb_en),

        
        .LMD_o          (WB_LMD),
        .ALU_output_o   (WB_ALU_output),
        .IR_o           (WB_IR),
        .PC_o           (WB_PC),
        .wb_en_o        (WB_wb_en)
);
    
    //WB
    Writeback_aMUX Writeback_aMUX_inst(
        .opcode         (WB_IR[31:26]),
        .rt_address     (WB_IR[20:16]),
        .rd_address     (WB_IR[15:11]),
        .writeback_address(WB_address)
    );
    
    Writeback_dMUX Writeback_dMUX_inst(
        .opcode         (WB_IR[31:26]),
        .data0          (WB_LMD),
        .data1          (WB_ALU_output),
        .writeback_data (WB_data)
    );
    
    

//        always @(posedge clk) begin
//            if (!resetn) begin
//                $display("IF Stage Reset");
//            end else begin
//                $display("IF Stage - PC_reg = %h, PC = %h, Instruction = %b, IR_reg = %b", IF_PC_reg, IF_PC, IF_IR, IF_IR_reg);
//            end
//        end
        
//        // ID 阶段的调试打印
//        always @(posedge clk) begin
//            if (!resetn) begin
//                $display("ID Stage Reset");
//            end else begin
//                $display("ID Stage - PC = %h, A = %h, B = %h, Imm = %h, Instruction = %b", ID_PC, ID_A, ID_B, ID_Imm, ID_IR);
//                $display("stall:%b",stall);
//            end
//        end
//        always@(posedge clk) begin
//           $display("rs%d:%h,rt%d:%h",ID_IR[25:21],ID_A,ID_IR[20:16],ID_B);
//        end
        
//        // EX 阶段的调试打印
//        always @(posedge clk) begin
//            if (!resetn) begin
//                $display("EX Stage Reset");
//            end else begin
//                $display("EX Stage - PC = %h, ALU_op1 = %h, ALU_op2 = %h, ALU_result = %h, Cond = %b, wb_en = %b, Instruction = %b", EX_PC, alu_data_1, alu_data_2, EX_ALU_output, EX_Cond, EX_wb_en, EX_IR);
//            end
//        end
        
//       // MEM 阶段的调试打印
//        always @(posedge clk) begin
//            if (!resetn) begin
//                $display("MEM Stage Reset");
//            end else begin
//                $display("MEM Stage - PC = %h, MEM_ALU_output = %h, Mem_data = %h, Instruction = %b, data_sram_addr = %h, data_sram_rdata = %h, data_sram_wen = %b, data_sram_wdata = %h", MEM_PC, MEM_ALU_output, MEM_LMD, MEM_IR, data_sram_addr, data_sram_rdata, data_sram_wen, data_sram_wdata);
//            end
//        end 
        
//        // WB 阶段的调试打印
//        always @(posedge clk) begin
//            if (!resetn) begin
//                $display("WB Stage Reset");
//            end else begin
//                $display("WB Stage - PC = %h, Writeback Data = %h, Reg Addr = %d, Instruction = %b", WB_PC, WB_data, WB_address, WB_IR);
//            end
//            $display("-----------------------------------------");
//        end 
    
    
endmodule