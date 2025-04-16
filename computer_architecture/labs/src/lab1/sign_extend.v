`timescale 1ns / 1ps

module sign_extend (
    input  [15:0] input_data,
    output [31:0] output_data
);
    assign output_data = {{16{input_data[15]}}, input_data[15:0]};
endmodule
