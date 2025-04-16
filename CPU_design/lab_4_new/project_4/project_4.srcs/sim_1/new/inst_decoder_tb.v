`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/03/2024 05:07:32 PM
// Design Name: 
// Module Name: inst_decoder_tb
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
module inst_decoder_tb;
    reg [31:0] inst;
    wire wen;
    wire [4:0] waddr;
    wire rden1;
    wire [4:0] raddr1;
    wire rden2;
    wire [4:0] raddr2;
    wire alu_en;
    wire [4:0] alu_card;
    wire mem_rd;
    wire mem_wr;
    wire jmp;
    wire invalid;

    // ????????
    inst_decoder uut (
        .inst(inst),
        .wen(wen),
        .waddr(waddr),
        .rden1(rden1),
        .raddr1(raddr1),
        .rden2(rden2),
        .raddr2(raddr2),
        .alu_en(alu_en),
        .alu_card(alu_card),
        .mem_rd(mem_rd),
        .mem_wr(mem_wr),
        .jmp(jmp),
        .invalid(invalid)
    );

    initial begin
        // ??????

        // add r1, r2, r3
        inst = 32'b000000_00010_00011_00001_00000_100000;
        #10;

        // sub r4, r5, r6
        inst = 32'b000000_00101_00110_00100_00000_100010;
        #10;

        // j 0x14
        inst = 32'b000010_000000000000000000010100;
        #10;

        // movz r2, r3, r4 (?????)
        inst = 32'b000000_00011_00100_00010_00000_001010;
        #10;

        // lw r4, 0x18(r6)
        inst = 32'b100011_00110_00100_0000000000011000;
        #10;

        // or r0, r1, r2
        inst = 32'b000000_00001_00010_00000_00000_100101;
        #10;

        // xor r1, r2, r3
        inst = 32'b000000_00010_00011_00001_00000_100110;
        #10;

        // sw r0, 0x18(r3)
        inst = 32'b101011_00011_00000_0000000000011000;
        #10;

        // and r1, r1, r1
        inst = 32'b000000_00001_00001_00001_00000_100100;
        #10;

        // lw r9, 0x0(r7)
        inst = 32'b100011_00111_01001_0000000000000000;
        #10;

        // sll r1, r1, 2 (?????)
        inst = 32'b000000_00000_00001_00001_00010_000000;
        #10;

        // add r2, r3, r31
        inst = 32'b000000_00011_11111_00010_00000_100000;
        #10;

        // and r31, r0, r2
        inst = 32'b000000_00000_00010_11111_00000_100100;
        #10;

        // sw r31, 0x4(r9)
        inst = 32'b101011_01001_11111_0000000000000100;
        #10;

        $stop;
    end
endmodule

