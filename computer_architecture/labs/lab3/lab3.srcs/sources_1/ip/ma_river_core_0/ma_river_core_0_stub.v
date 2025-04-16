// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Aug 20 19:25:36 2024
// Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               c:/Users/ywy_c/Documents/coding/hitcoa_at2024/lab4/lab4.srcs/sources_1/ip/ma_river_core_0/ma_river_core_0_stub.v
// Design      : ma_river_core_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ma_river_core,Vivado 2019.2" *)
module ma_river_core_0(ext_int, aclk, aresetn, arid, araddr, arlen, arsize, 
  arburst, arlock, arcache, arprot, arvalid, arready, rid, rdata, rresp, rlast, rvalid, rready, awid, awaddr, 
  awlen, awsize, awburst, awlock, awcache, awprot, awvalid, awready, wid, wdata, wstrb, wlast, wvalid, 
  wready, bid, bresp, bvalid, bready, debug_wb_pc0, debug_wb_rf_wen0, debug_wb_rf_wnum0, 
  debug_wb_rf_wdata0, debug_wb_pc1, debug_wb_rf_wen1, debug_wb_rf_wnum1, 
  debug_wb_rf_wdata1, debug_wb_pc, debug_wb_rf_wen, debug_wb_rf_wnum, debug_wb_rf_wdata)
/* synthesis syn_black_box black_box_pad_pin="ext_int[5:0],aclk,aresetn,arid[3:0],araddr[31:0],arlen[3:0],arsize[2:0],arburst[1:0],arlock[1:0],arcache[3:0],arprot[2:0],arvalid,arready,rid[3:0],rdata[31:0],rresp[1:0],rlast,rvalid,rready,awid[3:0],awaddr[31:0],awlen[3:0],awsize[2:0],awburst[1:0],awlock[1:0],awcache[3:0],awprot[2:0],awvalid,awready,wid[3:0],wdata[31:0],wstrb[3:0],wlast,wvalid,wready,bid[3:0],bresp[1:0],bvalid,bready,debug_wb_pc0[31:0],debug_wb_rf_wen0,debug_wb_rf_wnum0[4:0],debug_wb_rf_wdata0[31:0],debug_wb_pc1[31:0],debug_wb_rf_wen1,debug_wb_rf_wnum1[4:0],debug_wb_rf_wdata1[31:0],debug_wb_pc[31:0],debug_wb_rf_wen,debug_wb_rf_wnum[4:0],debug_wb_rf_wdata[31:0]" */;
  input [5:0]ext_int;
  input aclk;
  input aresetn;
  output [3:0]arid;
  output [31:0]araddr;
  output [3:0]arlen;
  output [2:0]arsize;
  output [1:0]arburst;
  output [1:0]arlock;
  output [3:0]arcache;
  output [2:0]arprot;
  output arvalid;
  input arready;
  input [3:0]rid;
  input [31:0]rdata;
  input [1:0]rresp;
  input rlast;
  input rvalid;
  output rready;
  output [3:0]awid;
  output [31:0]awaddr;
  output [3:0]awlen;
  output [2:0]awsize;
  output [1:0]awburst;
  output [1:0]awlock;
  output [3:0]awcache;
  output [2:0]awprot;
  output awvalid;
  input awready;
  output [3:0]wid;
  output [31:0]wdata;
  output [3:0]wstrb;
  output wlast;
  output wvalid;
  input wready;
  input [3:0]bid;
  input [1:0]bresp;
  input bvalid;
  output bready;
  output [31:0]debug_wb_pc0;
  output debug_wb_rf_wen0;
  output [4:0]debug_wb_rf_wnum0;
  output [31:0]debug_wb_rf_wdata0;
  output [31:0]debug_wb_pc1;
  output debug_wb_rf_wen1;
  output [4:0]debug_wb_rf_wnum1;
  output [31:0]debug_wb_rf_wdata1;
  output [31:0]debug_wb_pc;
  output debug_wb_rf_wen;
  output [4:0]debug_wb_rf_wnum;
  output [31:0]debug_wb_rf_wdata;
endmodule
