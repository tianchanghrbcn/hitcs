`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/21 19:07:43
// Design Name: 
// Module Name: inst_decoder_v2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


// ����ָ�����
`define INSE_ADD  6'b100000 // R���͵ļӷ�ָ��
`define INSE_SUB  6'b100010 // R���͵ļ���ָ��
`define INSE_AND  6'b100100 // R���͵İ�λ��ָ��
`define INSE_OR   6'b100101 // R���͵İ�λ��ָ��
`define INSE_XOR  6'b100110 // R���͵İ�λ���ָ��
`define INSE_MOVZ 6'b001010 // R���͵�MOVZָ��
`define INSE_SLL  6'b000000 // R���͵��߼�����ָ��

// ����ָ��Ĳ���������
`define TYPE_R   6'b000000  // R����ָ��
`define TYPE_MS  6'b101011  // �洢ָ�� (SW)
`define TYPE_ML  6'b100011  // ��ȡָ�� (LW)
`define TYPE_J   6'b000010  // ��תָ�� (J)
`define TYPE_CMP 6'b111110  // �Ƚ�ָ�� (CMP)
`define TYPE_BBT 6'b111111  // ��֧������תָ�� (BBT)

// ָ�������ģ��
module inst_decoder_v2(
    input [31:0] inst,    // Ҫִ�е�ָ��
    input        Cond,    // ������־���
    output       wen,     // ָ���Ƿ�д�ؼĴ�����
    output [4:0] waddr,   // ָ��д�صļĴ�����ַ
    output       rden1,   // ָ���Ƿ���Ҫ��ȡ�Ĵ���1
    output [4:0] raddr1,  // Ҫ��ȡ�ļĴ���1��ַ
    output       rden2,   // ָ���Ƿ���Ҫ��ȡ�Ĵ���2
    output [4:0] raddr2,  // Ҫ��ȡ�ļĴ���2��ַ
    output       alu_en,  // ָ�����Ƿ�����ALU
    output [4:0] alu_card,// ALU�Ĳ�����
    output       mem_rd,  // ָ���Ƿ���Ҫ��ȡ�洢��
    output       mem_wr,  // ָ���Ƿ���Ҫд��洢��
    output       jmp,     // ָ���Ƿ��޸�PC����ת��
    output       invalid, // �����ָ���Ƿ���Ч
    output [31:0] Imm,    // ��������չ
    output [1:0] mux_en   // ��·ѡ���������ź�
);

// ���ָ���Ƿ���Ч
// R����ָ��Ĳ�ͬ��������ADD��SUB��AND��
wire add_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_ADD);
wire sub_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_SUB);
wire and_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_AND);
wire or_valid  = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_OR);
wire xor_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_XOR);
wire sw_valid  = (inst[31:26] == `TYPE_MS); // SWָ��
wire lw_valid  = (inst[31:26] == `TYPE_ML); // LWָ��
wire j_valid   = (inst[31:26] == `TYPE_J);  // Jָ��

// MOVZ��SLLָ��
wire movz_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_MOVZ);
wire sll_valid  = (inst[31:26] == `TYPE_R) & (inst[25:21] == 5'b0) & (inst[5:0] == `INSE_SLL);
wire cmp_valid  = (inst[31:26] == `TYPE_CMP) & (inst[10:0] == 11'b0); // CMPָ��
wire bbt_valid  = (inst[31:26] == `TYPE_BBT); // BBTָ��

// ָ����Ч�źţ�ֻ�е�����ָ����Чʱ��Ϊ1
assign invalid = !(add_valid | sub_valid | and_valid | or_valid | xor_valid | sw_valid | lw_valid | j_valid | movz_valid | sll_valid | cmp_valid | bbt_valid);

// дʹ���ź�
wire wen1 = ((inst[31:26] == `TYPE_R) & (inst[5:0] != `INSE_MOVZ)) & (inst[15:11] != 5'b0) ? 1'b1 : 1'b0;
wire wen2 = (inst[31:26] == `TYPE_ML) ? 1'b1 : 1'b0; // LWָ��дʹ��
wire wen3 = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_MOVZ) & Cond; // MOVZָ����������ʱ��дʹ��
wire wen4 = (inst[31:26] == `TYPE_CMP) ? 1'b1 : 1'b0; // CMPָ��дʹ��
assign wen = (!invalid) & (wen1 | wen2 | wen3 | wen4); // ֻ�е�ָ����Чʱ������д��

// д��ַ
assign waddr = {5{(!invalid)}} & 
               ( ({5{wen1}} & inst[15:11]) | 
                 ({5{wen2}} & inst[20:16]) | 
                 ({5{wen3}} & inst[15:11]) | 
                 ({5{wen4}} & inst[15:11]) );

// ��ȡʹ���ź�1
assign rden1 = (!invalid) & ((inst[31:26] == `TYPE_R) | (inst[31:26] == `TYPE_ML) | (inst[31:26] == `TYPE_MS) | (inst[31:26] == `TYPE_CMP) | (inst[31:26] == `TYPE_BBT));

// ��ȡ��ַ1
assign raddr1 = {5{rden1}} & ((sll_valid | movz_valid) ? inst[20:16] : inst[25:21]);

// ��ȡʹ���ź�2
assign rden2 = (!invalid) & (!j_valid) & (!lw_valid) & (!bbt_valid) & (!sll_valid);

// ��ȡ��ַ2
assign raddr2 = {5{rden2}} & ((movz_valid) ? inst[25:21] : inst[20:16]);

// ALUʹ���ź�
assign alu_en = (!invalid) & (!lw_valid);

// ALU������
assign alu_card = (({5{add_valid}} & 5'b00001) |
                   ({5{sub_valid}} & 5'b00011) |
                   ({5{and_valid}} & 5'b01100) |
                   ({5{or_valid}}  & 5'b01011) |
                   ({5{xor_valid}} & 5'b01110) |
                   ({5{sw_valid}}  & 5'b00001) |
                   ({5{lw_valid}}  & 5'b00001) |
                   ({5{j_valid}}   & 5'b10010) |
                   ({5{movz_valid}}& 5'b01000) |
                   ({5{sll_valid}} & 5'b10001) |
                   ({5{cmp_valid}} & 5'b10100) |
                   ({5{bbt_valid}} & 5'b10011));

// �洢����ȡ�ź�
assign mem_rd = (!invalid) & (lw_valid | sw_valid);

// �洢��д���ź�
assign mem_wr = (!invalid) & (sw_valid);

// ��ת�ź�
assign jmp = (!invalid) & (j_valid | bbt_valid);

// A�Ĵ���λ�õĶ�·ѡ���������źţ�1Ϊ�Ĵ�����0ΪPC��
assign mux_en[0] = (!invalid) & ((inst[31:26] == `TYPE_R) | (inst[31:26] == `TYPE_ML) | (inst[31:26] == `TYPE_MS) | (inst[31:26] == `TYPE_CMP));

// B�Ĵ���λ�õĶ�·ѡ���������źţ�1Ϊ�Ĵ�����0Ϊ��������
assign mux_en[1] = (!invalid) & (add_valid | sub_valid | and_valid | or_valid | xor_valid | movz_valid | cmp_valid);

// ������������չ
assign Imm = {32{(!invalid)}} & 
             ( ({32{sw_valid}} & {{16{inst[15]}}, inst[15:0]}) |
               ({32{lw_valid}} & {{16{inst[15]}}, inst[15:0]}) |
               ({32{j_valid}}  & {{6{inst[25]}}, inst[25:0]})  |
               ({32{sll_valid}}& {{27{inst[10]}}, inst[10:6]}) |
               ({32{bbt_valid}}& {{16{inst[15]}}, inst[15:0]}) );

endmodule

