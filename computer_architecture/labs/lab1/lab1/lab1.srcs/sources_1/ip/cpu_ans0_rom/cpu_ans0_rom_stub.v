// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep 10 19:24:57 2024
// Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/ywy_c/Documents/coding/hitcoa_at2024/coa/release/lab1/lab1.srcs/sources_1/ip/cpu_ans0_rom/cpu_ans0_rom_stub.v
// Design      : cpu_ans0_rom
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *)
module cpu_ans0_rom(a, spo)
/* synthesis syn_black_box black_box_pad_pin="a[5:0],spo[63:0]" */;
  input [5:0]a;
  output [63:0]spo;
endmodule
