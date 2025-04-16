`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/09/06 16:10:16
// Design Name: 
// Module Name: cpu_inst_rom
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


module cpu_inst_rom(
    input[1:0]  sel,
    input[4:0]  addr,
    output[31:0]    data
    );
    
    wire[31:0] inst0;
    wire[31:0] inst1;
    wire[31:0] inst2;
    
    cpu_inst0_rom i0(
        .a(addr),
        .spo(inst0)
    );
    
    cpu_inst1_rom i1(
        .a(addr),
        .spo(inst1)
    );
    
    cpu_inst2_rom i2(
        .a(addr),
        .spo(inst2)
    );
    
    assign data = (sel == 0) ? inst0 : ((sel == 1) ? inst1 : inst2);
    
endmodule
