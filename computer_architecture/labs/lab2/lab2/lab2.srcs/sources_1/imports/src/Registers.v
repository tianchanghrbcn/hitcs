`timescale 1ns / 1ps

module Registers(
    input         clk,
    input         reset_n,
    input       write_enable,
    input [4:0] rs,	// rt的值
    input [4:0] rt,	// rd的值
	input [4:0] writeback_address,	// 要写的寄存器的地址
	input [31:0] writeback_data,	// 要写入的内容
	 
    output  [31:0] output_data_A,		// Reg[rt]
    output  [31:0] output_data_B		// Reg[rd]
);

	reg [31:0] registers [31:0];	// 32个32位寄存器
	
    integer i;
	
	assign output_data_A = registers[rs];
	assign output_data_B = registers[rt];
	
	
	//  使用本地文件初始化寄存器组
    initial begin
        for (i=0; i<32; i = i + 1) begin
            registers[i] = 32'b0;
        end
    end
    
	
	always@(posedge clk) begin
		if(reset_n == 0) begin
			//output_data_A = 32'h00000000;
			//output_data_B = 32'h00000000;
		end
		else begin 
			if(write_enable == 1) begin
				registers[writeback_address] <= writeback_data; //WB写回寄存器
			end
		end
	end
endmodule