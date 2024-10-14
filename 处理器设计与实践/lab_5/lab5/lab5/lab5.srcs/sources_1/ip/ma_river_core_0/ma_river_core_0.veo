// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.

// IP VLNV: hit.edu.cn:user:ma_river_core:1.0
// IP Revision: 2

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
ma_river_core_0 your_instance_name (
  .ext_int(ext_int),                        // input wire [5 : 0] ext_int
  .aclk(aclk),                              // input wire aclk
  .aresetn(aresetn),                        // input wire aresetn
  .arid(arid),                              // output wire [3 : 0] arid
  .araddr(araddr),                          // output wire [31 : 0] araddr
  .arlen(arlen),                            // output wire [3 : 0] arlen
  .arsize(arsize),                          // output wire [2 : 0] arsize
  .arburst(arburst),                        // output wire [1 : 0] arburst
  .arlock(arlock),                          // output wire [1 : 0] arlock
  .arcache(arcache),                        // output wire [3 : 0] arcache
  .arprot(arprot),                          // output wire [2 : 0] arprot
  .arvalid(arvalid),                        // output wire arvalid
  .arready(arready),                        // input wire arready
  .rid(rid),                                // input wire [3 : 0] rid
  .rdata(rdata),                            // input wire [31 : 0] rdata
  .rresp(rresp),                            // input wire [1 : 0] rresp
  .rlast(rlast),                            // input wire rlast
  .rvalid(rvalid),                          // input wire rvalid
  .rready(rready),                          // output wire rready
  .awid(awid),                              // output wire [3 : 0] awid
  .awaddr(awaddr),                          // output wire [31 : 0] awaddr
  .awlen(awlen),                            // output wire [3 : 0] awlen
  .awsize(awsize),                          // output wire [2 : 0] awsize
  .awburst(awburst),                        // output wire [1 : 0] awburst
  .awlock(awlock),                          // output wire [1 : 0] awlock
  .awcache(awcache),                        // output wire [3 : 0] awcache
  .awprot(awprot),                          // output wire [2 : 0] awprot
  .awvalid(awvalid),                        // output wire awvalid
  .awready(awready),                        // input wire awready
  .wid(wid),                                // output wire [3 : 0] wid
  .wdata(wdata),                            // output wire [31 : 0] wdata
  .wstrb(wstrb),                            // output wire [3 : 0] wstrb
  .wlast(wlast),                            // output wire wlast
  .wvalid(wvalid),                          // output wire wvalid
  .wready(wready),                          // input wire wready
  .bid(bid),                                // input wire [3 : 0] bid
  .bresp(bresp),                            // input wire [1 : 0] bresp
  .bvalid(bvalid),                          // input wire bvalid
  .bready(bready),                          // output wire bready
  .debug_wb_pc0(debug_wb_pc0),              // output wire [31 : 0] debug_wb_pc0
  .debug_wb_rf_wen0(debug_wb_rf_wen0),      // output wire debug_wb_rf_wen0
  .debug_wb_rf_wnum0(debug_wb_rf_wnum0),    // output wire [4 : 0] debug_wb_rf_wnum0
  .debug_wb_rf_wdata0(debug_wb_rf_wdata0),  // output wire [31 : 0] debug_wb_rf_wdata0
  .debug_wb_pc1(debug_wb_pc1),              // output wire [31 : 0] debug_wb_pc1
  .debug_wb_rf_wen1(debug_wb_rf_wen1),      // output wire debug_wb_rf_wen1
  .debug_wb_rf_wnum1(debug_wb_rf_wnum1),    // output wire [4 : 0] debug_wb_rf_wnum1
  .debug_wb_rf_wdata1(debug_wb_rf_wdata1),  // output wire [31 : 0] debug_wb_rf_wdata1
  .debug_wb_pc(debug_wb_pc),                // output wire [31 : 0] debug_wb_pc
  .debug_wb_rf_wen(debug_wb_rf_wen),        // output wire debug_wb_rf_wen
  .debug_wb_rf_wnum(debug_wb_rf_wnum),      // output wire [4 : 0] debug_wb_rf_wnum
  .debug_wb_rf_wdata(debug_wb_rf_wdata)    // output wire [31 : 0] debug_wb_rf_wdata
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

