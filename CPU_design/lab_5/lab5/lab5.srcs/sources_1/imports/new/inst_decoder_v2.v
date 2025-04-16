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


// 定义指令编码
`define INSE_ADD  6'b100000 // R类型的加法指令
`define INSE_SUB  6'b100010 // R类型的减法指令
`define INSE_AND  6'b100100 // R类型的按位与指令
`define INSE_OR   6'b100101 // R类型的按位或指令
`define INSE_XOR  6'b100110 // R类型的按位异或指令
`define INSE_MOVZ 6'b001010 // R类型的MOVZ指令
`define INSE_SLL  6'b000000 // R类型的逻辑左移指令

// 定义指令的操作码类型
`define TYPE_R   6'b000000  // R类型指令
`define TYPE_MS  6'b101011  // 存储指令 (SW)
`define TYPE_ML  6'b100011  // 读取指令 (LW)
`define TYPE_J   6'b000010  // 跳转指令 (J)
`define TYPE_CMP 6'b111110  // 比较指令 (CMP)
`define TYPE_BBT 6'b111111  // 分支条件跳转指令 (BBT)

// 指令解码器模块
module inst_decoder_v2(
    input [31:0] inst,    // 要执行的指令
    input        Cond,    // 条件标志结果
    output       wen,     // 指令是否写回寄存器堆
    output [4:0] waddr,   // 指令写回的寄存器地址
    output       rden1,   // 指令是否需要读取寄存器1
    output [4:0] raddr1,  // 要读取的寄存器1地址
    output       rden2,   // 指令是否需要读取寄存器2
    output [4:0] raddr2,  // 要读取的寄存器2地址
    output       alu_en,  // 指令结果是否来自ALU
    output [4:0] alu_card,// ALU的操作码
    output       mem_rd,  // 指令是否需要读取存储器
    output       mem_wr,  // 指令是否需要写入存储器
    output       jmp,     // 指令是否修改PC（跳转）
    output       invalid, // 输入的指令是否有效
    output [31:0] Imm,    // 立即数扩展
    output [1:0] mux_en   // 多路选择器控制信号
);

// 检查指令是否有效
// R类型指令的不同操作，如ADD、SUB、AND等
wire add_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_ADD);
wire sub_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_SUB);
wire and_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_AND);
wire or_valid  = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_OR);
wire xor_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_XOR);
wire sw_valid  = (inst[31:26] == `TYPE_MS); // SW指令
wire lw_valid  = (inst[31:26] == `TYPE_ML); // LW指令
wire j_valid   = (inst[31:26] == `TYPE_J);  // J指令

// MOVZ和SLL指令
wire movz_valid = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_MOVZ);
wire sll_valid  = (inst[31:26] == `TYPE_R) & (inst[25:21] == 5'b0) & (inst[5:0] == `INSE_SLL);
wire cmp_valid  = (inst[31:26] == `TYPE_CMP) & (inst[10:0] == 11'b0); // CMP指令
wire bbt_valid  = (inst[31:26] == `TYPE_BBT); // BBT指令

// 指令无效信号，只有当所有指令无效时才为1
assign invalid = !(add_valid | sub_valid | and_valid | or_valid | xor_valid | sw_valid | lw_valid | j_valid | movz_valid | sll_valid | cmp_valid | bbt_valid);

// 写使能信号
wire wen1 = ((inst[31:26] == `TYPE_R) & (inst[5:0] != `INSE_MOVZ)) & (inst[15:11] != 5'b0) ? 1'b1 : 1'b0;
wire wen2 = (inst[31:26] == `TYPE_ML) ? 1'b1 : 1'b0; // LW指令写使能
wire wen3 = (inst[31:26] == `TYPE_R) & (inst[5:0] == `INSE_MOVZ) & Cond; // MOVZ指令条件满足时的写使能
wire wen4 = (inst[31:26] == `TYPE_CMP) ? 1'b1 : 1'b0; // CMP指令写使能
assign wen = (!invalid) & (wen1 | wen2 | wen3 | wen4); // 只有当指令有效时才允许写入

// 写地址
assign waddr = {5{(!invalid)}} & 
               ( ({5{wen1}} & inst[15:11]) | 
                 ({5{wen2}} & inst[20:16]) | 
                 ({5{wen3}} & inst[15:11]) | 
                 ({5{wen4}} & inst[15:11]) );

// 读取使能信号1
assign rden1 = (!invalid) & ((inst[31:26] == `TYPE_R) | (inst[31:26] == `TYPE_ML) | (inst[31:26] == `TYPE_MS) | (inst[31:26] == `TYPE_CMP) | (inst[31:26] == `TYPE_BBT));

// 读取地址1
assign raddr1 = {5{rden1}} & ((sll_valid | movz_valid) ? inst[20:16] : inst[25:21]);

// 读取使能信号2
assign rden2 = (!invalid) & (!j_valid) & (!lw_valid) & (!bbt_valid) & (!sll_valid);

// 读取地址2
assign raddr2 = {5{rden2}} & ((movz_valid) ? inst[25:21] : inst[20:16]);

// ALU使能信号
assign alu_en = (!invalid) & (!lw_valid);

// ALU操作码
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

// 存储器读取信号
assign mem_rd = (!invalid) & (lw_valid | sw_valid);

// 存储器写入信号
assign mem_wr = (!invalid) & (sw_valid);

// 跳转信号
assign jmp = (!invalid) & (j_valid | bbt_valid);

// A寄存器位置的多路选择器控制信号（1为寄存器，0为PC）
assign mux_en[0] = (!invalid) & ((inst[31:26] == `TYPE_R) | (inst[31:26] == `TYPE_ML) | (inst[31:26] == `TYPE_MS) | (inst[31:26] == `TYPE_CMP));

// B寄存器位置的多路选择器控制信号（1为寄存器，0为立即数）
assign mux_en[1] = (!invalid) & (add_valid | sub_valid | and_valid | or_valid | xor_valid | movz_valid | cmp_valid);

// 立即数符号扩展
assign Imm = {32{(!invalid)}} & 
             ( ({32{sw_valid}} & {{16{inst[15]}}, inst[15:0]}) |
               ({32{lw_valid}} & {{16{inst[15]}}, inst[15:0]}) |
               ({32{j_valid}}  & {{6{inst[25]}}, inst[25:0]})  |
               ({32{sll_valid}}& {{27{inst[10]}}, inst[10:6]}) |
               ({32{bbt_valid}}& {{16{inst[15]}}, inst[15:0]}) );

endmodule

