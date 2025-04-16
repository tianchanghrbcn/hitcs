// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep 10 19:11:49 2024
// Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/ywy_c/Documents/coding/hitcoa_at2024/coa/release/lab3/lab3.srcs/sources_1/ip/cache_trace/cache_trace_stub.v
// Design      : cache_trace
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *)
module cache_trace(clka, addra, douta, clkb, addrb, doutb)
/* synthesis syn_black_box black_box_pad_pin="clka,addra[16:0],douta[31:0],clkb,addrb[16:0],doutb[31:0]" */;
  input clka;
  input [16:0]addra;
  output [31:0]douta;
  input clkb;
  input [16:0]addrb;
  output [31:0]doutb;
endmodule
