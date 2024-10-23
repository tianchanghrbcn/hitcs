module MUX(
    input  [31:0] data0,
    input  [31:0] data1,
    input         select,	
	 
    output [31:0] result
);
	
	assign result = (select == 1)? data0 : data1; 

endmodule