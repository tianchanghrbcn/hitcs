// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ma_river_core,Vivado 2019.2" *)
module ma_river_core_0(ext_int, aclk, aresetn, arid, araddr, arlen, arsize, 
  arburst, arlock, arcache, arprot, arvalid, arready, rid, rdata, rresp, rlast, rvalid, rready, awid, awaddr, 
  awlen, awsize, awburst, awlock, awcache, awprot, awvalid, awready, wid, wdata, wstrb, wlast, wvalid, 
  wready, bid, bresp, bvalid, bready, debug_wb_pc0, debug_wb_rf_wen0, debug_wb_rf_wnum0, 
  debug_wb_rf_wdata0, debug_wb_pc1, debug_wb_rf_wen1, debug_wb_rf_wnum1, 
  debug_wb_rf_wdata1, debug_wb_pc, debug_wb_rf_wen, debug_wb_rf_wnum, debug_wb_rf_wdata);
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
