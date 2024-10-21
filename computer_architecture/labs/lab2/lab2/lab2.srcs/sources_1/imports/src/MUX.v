module MUX(
    input  [31:0] data0, //跳转地址
    input  [31:0] data1, //顺序执行的地址
    input         select,	
	 
    output [31:0] result
);
	
	assign result = (select == 1)? data0 : data1; //cond == 1则跳转

endmodule