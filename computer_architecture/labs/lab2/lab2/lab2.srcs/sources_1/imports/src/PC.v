module PC(
    input       clk,
    input		reset_n,
    input [31:0] new_address,  // 下一个地址
    input stall,
	 
    output reg [31:0] output_address	// 当前PC内容
);
	always@(posedge clk) begin
		if(reset_n == 1'b0) 
			output_address <= 0;
		else if(stall)
		    output_address <= output_address;
		else 
			output_address <= new_address;
	end

endmodule