`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/08/19 21:11:22
// Design Name: 
// Module Name: tb
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

/* Choose test case id */
//`define     TESTID      0        // test case 0
`define     TESTID      1        // test case 1
//`define     TESTID      2        // test case 2

module tb(

    );

    reg clk;
    reg resetn;
    reg[31:0] rstcnt;
    initial begin
        clk = 0;
        resetn = 0;
        rstcnt = 0;
    end

    always #5 clk=~clk;

    wire[31:0] test_id = `TESTID;

    always@(posedge clk) begin
        if(rstcnt == 10)
            resetn <= 1;
        rstcnt <= rstcnt + 1;
    end


    soc_top #(.SIMULATION(1)) soc(
        .sys_clk(clk),
        .sys_rstn(resetn),
        .lcd_rst(),
        .lcd_cs(),
        .lcd_rs(),
        .lcd_rd(),
        .lcd_wr(),
        .lcd_db(),
        .lcd_bl_ctr(),
        .switch(~test_id[1:0])
    );




endmodule
