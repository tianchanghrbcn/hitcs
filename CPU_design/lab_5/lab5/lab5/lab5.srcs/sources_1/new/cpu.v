`timescale 1ns / 1ps

`define FOUR 32'b00000000000000000000000000000100 // 常量4
`define ZERO 1'b0                                // 常量0

module cpu(
    input           clk,                  // 时钟信号
    input           resetn,               // 低电平有效复位信号

    output          inst_sram_en,         // 指令存储器读取使能
    output[31:0]    inst_sram_addr,       // 指令存储器地址
    input[31:0]     inst_sram_rdata,      // 指令存储器读取数据

    output          data_sram_en,         // 数据存储器使能信号
    output[3:0]     data_sram_wen,        // 数据存储器写使能信号
    output[31:0]    data_sram_addr,       // 数据存储器地址
    output[31:0]    data_sram_wdata,      // 写入数据存储器的数据
    input[31:0]     data_sram_rdata,      // 从数据存储器读取的数据

    // Debugging signals
    output[31:0]    debug_wb_pc,          // 当前执行的指令地址（PC）
    (*mark_debug = "true"*)output          debug_wb_rf_wen,      // 通用寄存器写使能信号
    (*mark_debug = "true"*)output[4:0]     debug_wb_rf_wnum,     // 写回寄存器的编号
    (*mark_debug = "true"*)output[31:0]    debug_wb_rf_wdata     // 写回寄存器的数据
);

reg [3:0] STATE;                         // 状态机状态寄存器，控制CPU各个阶段
reg [31:0] PC_now;                       // 当前PC（程序计数器）
(*mark_debug = "true"*)reg [31:0] PC;                           // 下一个指令的PC值
reg [31:0] NPC;                          // 下一个PC值（临时保存）
(*mark_debug = "true"*)reg [31:0] IR;                           // 当前执行的指令（Instruction Register）
reg [31:0] ALU_output;                   // ALU计算输出
wire [31:0] LMD;                         // 从数据存储器读取的数据

wire [31:0] NPCin;
wire Cond;
wire [31:0] ALU_out;

wire           wen;                      // 是否写回寄存器
wire [4:0]     waddr;                    // 写回寄存器的地址
wire           rden1;                    // 是否读取寄存器1
wire [4:0]     raddr1;                   // 要读取的寄存器1的地址
wire           rden2;                    // 是否读取寄存器2
wire [4:0]     raddr2;                   // 要读取的寄存器2的地址
wire           alu_en;                   // ALU输出使能
wire [4:0]     alu_card;                 // ALU操作码
wire           mem_rd;                   // 是否需要读取存储器
wire           mem_wr;                   // 是否需要写入存储器
wire           jmp;                      // 是否直接修改PC
wire           invalid;                  // 输入的指令是否无效
wire [31:0]    Imm;                      // 立即数扩展

wire [31:0] mux4out;   // 4号多路选择器输出
wire [31:0] mux1out;   // 1号多路选择器输出
wire [31:0] mux2out;   // 2号多路选择器输出
wire [31:0] mux3out;   // 3号多路选择器输出

wire [31:0] A;         // 操作数A
wire [31:0] B;         // 操作数B

wire [1:0]     mux12_en;    // 1、2号多路选择器使能信号
wire           mux3_en;     // 3号多路选择器使能信号

wire  data_sram_en_reg;
wire  data_sram_wen_reg;
reg   wen_reg;              // 通用寄存器写使能信号寄存

mux mux1(
    .sel(mux12_en[0]),
    .d0(NPC),
    .d1(A),
    .out(mux1out)
);

mux mux2(
    .sel(mux12_en[1]),
    .d0(Imm),
    .d1(B),
    .out(mux2out)
);

mux mux3(
    .sel(mux3_en),
    .d0(NPC),
    .d1(ALU_output),
    .out(mux3out)
);

mux mux4(
    .sel(alu_en),
    .d0(LMD),
    .d1(ALU_output),
    .out(mux4out)
);

FullAdder my_adder(
    .A(PC),
    .B(`FOUR),
    .Cin(0),
    .Sum(NPCin),
    .Cout()
);

regfile my_regfile(
    .clk(clk),
    .we(wen_reg),
    .resetn(resetn),
    .raddr1(raddr1),
    .raddr2(raddr2),
    .waddr(waddr),
    .wdata(mux4out),
    .rdata1(A),
    .rdata2(B)
);

inst_decoder_v2 my_inst_decoder(
    .inst(IR),
    .Cond(Cond),
    .wen(wen),
    .waddr(waddr),
    .rden1(rden1),
    .raddr1(raddr1),
    .rden2(rden2),
    .raddr2(raddr2),
    .alu_en(alu_en),
    .alu_card(alu_card),
    .mem_rd(data_sram_en_reg),
    .mem_wr(data_sram_wen_reg),
    .jmp(),
    .invalid(),
    .Imm(Imm),
    .mux_en(mux12_en)
);

branch_judgment my_judgment(
    .A(A),
    .inst(IR),
    .Cond(Cond),
    .mux3(mux3_en)
);

ALU my_alu(
    .A(mux1out),
    .B(mux2out),
    .Cin(`ZERO),
    .Card(alu_card),
    .F(ALU_out),
    .Cout(),
    .Zero()
);

assign  debug_wb_pc = PC_now;
assign  debug_wb_rf_wen = wen_reg;
assign  debug_wb_rf_wnum = waddr;
assign  debug_wb_rf_wdata = mux4out;

assign  inst_sram_addr = PC;
assign  inst_sram_en = (STATE == 3'b100 | STATE == 3'b101) & (resetn == 1);
assign  data_sram_en  = data_sram_en_reg & (STATE == 3'b011);
assign  data_sram_wen = {4{data_sram_wen_reg & (STATE == 3'b011)}};
assign  data_sram_addr = ALU_out;
assign  data_sram_wdata = B;
assign LMD = data_sram_rdata;

always@(posedge clk) begin
    if(resetn == 0) begin
        PC <= 32'b0;
        IR <= 32'b0;
        STATE <= 3'b101;
        wen_reg <= 1'b0;
        PC_now <= 32'b0;
        NPC <= 32'b0;
        ALU_output <= 32'b0;
    end

    if(STATE == 3'b000 & resetn == 1) begin
        PC_now <= PC;                  // 更新当前PC
        IR <= inst_sram_rdata;          // 获取指令
        NPC <= NPCin;                  // 计算下一个PC值
        STATE <= STATE + 1;
        wen_reg <= 1'b0;               // 禁止写回寄存器
    end

    if(STATE == 3'b001 & resetn == 1) begin
        STATE <= STATE + 1;
        wen_reg <= 1'b0;
    end

    if(STATE == 3'b010 & resetn == 1) begin
        ALU_output <= ALU_out;          // 获取ALU输出
        STATE <= STATE + 1;
        wen_reg <= 1'b0;
    end

    if(STATE == 3'b011 & resetn == 1) begin
        PC <= mux3out;                  // 更新PC
        STATE <= STATE + 1;
        wen_reg <= 1'b0;
    end

    if(STATE == 3'b100 & resetn == 1) begin
        STATE <= 3'b000;
        wen_reg <= wen;                 // 写使能信号
    end

    if(STATE == 3'b101 & resetn == 1) begin
        STATE <= 3'b000;
        wen_reg <= 1'b0;
    end
end

endmodule

