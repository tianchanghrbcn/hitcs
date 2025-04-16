`timescale 1ns / 1ps

module register_file (
    input clock,
    input write_enable,
    input [4:0] read_address1,
    input [4:0] read_address2,
    input [4:0] write_address,
    output [31:0] read_data1,
    output [31:0] read_data2,
    input [31:0] write_data
);
    reg [31:0] register[0:31];

    integer idx;

    initial begin
        for(idx = 0; idx < 32; idx = idx + 1) begin
            register[idx] <= 0;
        end
    end

    always @(posedge clock) begin
        if(write_enable) begin
            register[write_address] <= write_data;
        end
    end
    assign read_data1 = write_address == read_address1 ? write_data : register[read_address1];
    assign read_data2 = write_address == read_address2 ? write_data : register[read_address2];
endmodule
