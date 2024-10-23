`timescale 1ns / 1ps

module Registers(
    input         clk,
    input         reset_n,
    input       write_enable,
    input [4:0] rs,	
    input [4:0] rt,	
	input [4:0] writeback_address,	
	input [31:0] writeback_data,	
	 
    output  [31:0] output_data_A,		
    output  [31:0] output_data_B		
);

	reg [31:0] registers [31:0];	
	
    integer i;
	
	assign output_data_A = registers[rs];
	assign output_data_B = registers[rt];
	
	
    initial begin
        for (i=0; i<32; i = i + 1) begin
            registers[i] = 32'b0;
        end
    end
    
	
	always@(posedge clk) begin
		if(reset_n == 0) begin
		end
		else begin 
			if(write_enable == 1) begin
				registers[writeback_address] <= writeback_data; //WB写回寄存器
			end
		end
	end
endmodule