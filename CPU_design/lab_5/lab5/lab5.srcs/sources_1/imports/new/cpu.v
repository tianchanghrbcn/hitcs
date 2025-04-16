`timescale 1ns / 1ps

`define FOUR 32'b00000000000000000000000000000100 // ����4
`define ZERO 1'b0                                // ����0

module cpu(
    input           clk,                  // ʱ���ź�
    input           resetn,               // �͵�ƽ��Ч��λ�ź�

    output          inst_sram_en,         // ָ��洢����ȡʹ��
    output[31:0]    inst_sram_addr,       // ָ��洢����ַ
    input[31:0]     inst_sram_rdata,      // ָ��洢����ȡ����

    output          data_sram_en,         // ���ݴ洢��ʹ���ź�
    output[3:0]     data_sram_wen,        // ���ݴ洢��дʹ���ź�
    output[31:0]    data_sram_addr,       // ���ݴ洢����ַ
    output[31:0]    data_sram_wdata,      // д�����ݴ洢��������
    input[31:0]     data_sram_rdata,      // �����ݴ洢����ȡ������

    // Debugging signals
    output[31:0]    debug_wb_pc,          // ��ǰִ�е�ָ���ַ��PC��
    (*mark_debug = "true"*)output          debug_wb_rf_wen,      // ͨ�üĴ���дʹ���ź�
    (*mark_debug = "true"*)output[4:0]     debug_wb_rf_wnum,     // д�ؼĴ����ı��
    (*mark_debug = "true"*)output[31:0]    debug_wb_rf_wdata     // д�ؼĴ���������
);

reg [3:0] STATE;                         // ״̬��״̬�Ĵ���������CPU�����׶�
reg [31:0] PC_now;                       // ��ǰPC�������������
(*mark_debug = "true"*)reg [31:0] PC;                           // ��һ��ָ���PCֵ
reg [31:0] NPC;                          // ��һ��PCֵ����ʱ���棩
(*mark_debug = "true"*)reg [31:0] IR;                           // ��ǰִ�е�ָ�Instruction Register��
reg [31:0] ALU_output;                   // ALU�������
wire [31:0] LMD;                         // �����ݴ洢����ȡ������

wire [31:0] NPCin;
wire Cond;
wire [31:0] ALU_out;

wire           wen;                      // �Ƿ�д�ؼĴ���
wire [4:0]     waddr;                    // д�ؼĴ����ĵ�ַ
wire           rden1;                    // �Ƿ��ȡ�Ĵ���1
wire [4:0]     raddr1;                   // Ҫ��ȡ�ļĴ���1�ĵ�ַ
wire           rden2;                    // �Ƿ��ȡ�Ĵ���2
wire [4:0]     raddr2;                   // Ҫ��ȡ�ļĴ���2�ĵ�ַ
wire           alu_en;                   // ALU���ʹ��
wire [4:0]     alu_card;                 // ALU������
wire           mem_rd;                   // �Ƿ���Ҫ��ȡ�洢��
wire           mem_wr;                   // �Ƿ���Ҫд��洢��
wire           jmp;                      // �Ƿ�ֱ���޸�PC
wire           invalid;                  // �����ָ���Ƿ���Ч
wire [31:0]    Imm;                      // ��������չ

wire [31:0] mux4out;   // 4�Ŷ�·ѡ�������
wire [31:0] mux1out;   // 1�Ŷ�·ѡ�������
wire [31:0] mux2out;   // 2�Ŷ�·ѡ�������
wire [31:0] mux3out;   // 3�Ŷ�·ѡ�������

wire [31:0] A;         // ������A
wire [31:0] B;         // ������B

wire [1:0]     mux12_en;    // 1��2�Ŷ�·ѡ����ʹ���ź�
wire           mux3_en;     // 3�Ŷ�·ѡ����ʹ���ź�

wire  data_sram_en_reg;
wire  data_sram_wen_reg;
reg   wen_reg;              // ͨ�üĴ���дʹ���źżĴ�

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
        PC_now <= PC;                  // ���µ�ǰPC
        IR <= inst_sram_rdata;          // ��ȡָ��
        NPC <= NPCin;                  // ������һ��PCֵ
        STATE <= STATE + 1;
        wen_reg <= 1'b0;               // ��ֹд�ؼĴ���
    end

    if(STATE == 3'b001 & resetn == 1) begin
        STATE <= STATE + 1;
        wen_reg <= 1'b0;
    end

    if(STATE == 3'b010 & resetn == 1) begin
        ALU_output <= ALU_out;          // ��ȡALU���
        STATE <= STATE + 1;
        wen_reg <= 1'b0;
    end

    if(STATE == 3'b011 & resetn == 1) begin
        PC <= mux3out;                  // ����PC
        STATE <= STATE + 1;
        wen_reg <= 1'b0;
    end

    if(STATE == 3'b100 & resetn == 1) begin
        STATE <= 3'b000;
        wen_reg <= wen;                 // дʹ���ź�
    end

    if(STATE == 3'b101 & resetn == 1) begin
        STATE <= 3'b000;
        wen_reg <= 1'b0;
    end
end

endmodule

