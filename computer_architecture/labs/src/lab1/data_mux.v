`timescale 1ns / 1ps

module data_mux(
    input [31:0] input0,
    input [31:0] input1,
    input select_line,
    output [31:0] output_data
);
    assign output_data = select_line ? input1 : input0;
endmodule
