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

// IP VLNV: xilinx.com:user:lcd_controller:1.0
// IP Revision: 4

// The following must be inserted into your Verilog file for this
// core to be instantiated. Change the instance name and port connections
// (in parentheses) to your own signal names.

//----------- Begin Cut here for INSTANTIATION Template ---// INST_TAG
lcd_controller_0 your_instance_name (
  .aclk(aclk),                                    // input wire aclk
  .aresetn(aresetn),                              // input wire aresetn
  .sim(sim),                                      // input wire sim
  .lcd_rst(lcd_rst),                              // output wire lcd_rst
  .lcd_cs(lcd_cs),                                // output wire lcd_cs
  .lcd_rs(lcd_rs),                                // output wire lcd_rs
  .lcd_rd(lcd_rd),                                // output wire lcd_rd
  .lcd_wr(lcd_wr),                                // output wire lcd_wr
  .lcd_db(lcd_db),                                // inout wire [15 : 0] lcd_db
  .lcd_bl_ctr(lcd_bl_ctr),                        // output wire lcd_bl_ctr
  .dma_start_en(dma_start_en),                    // output wire dma_start_en
  .dma_address(dma_address),                      // output wire [31 : 0] dma_address
  .dma_length(dma_length),                        // output wire [31 : 0] dma_length
  .dma_iack(dma_iack),                            // output wire dma_iack
  .dma_ready_dev(dma_ready_dev),                  // output wire dma_ready_dev
  .dma_valid_dev(dma_valid_dev),                  // input wire dma_valid_dev
  .dma_last_dev(dma_last_dev),                    // input wire dma_last_dev
  .dma_data_dev(dma_data_dev),                    // input wire [15 : 0] dma_data_dev
  .grc_io_port_raddress(grc_io_port_raddress),    // output wire [31 : 0] grc_io_port_raddress
  .grc_io_port_rdataword(grc_io_port_rdataword),  // input wire [31 : 0] grc_io_port_rdataword
  .grc_io_port_waddress(grc_io_port_waddress),    // output wire [31 : 0] grc_io_port_waddress
  .grc_io_port_wenable(grc_io_port_wenable),      // output wire grc_io_port_wenable
  .grc_io_port_wdataword(grc_io_port_wdataword),  // output wire [31 : 0] grc_io_port_wdataword
  .arid(arid),                                    // input wire [5 : 0] arid
  .araddr(araddr),                                // input wire [31 : 0] araddr
  .arlen(arlen),                                  // input wire [3 : 0] arlen
  .arsize(arsize),                                // input wire [2 : 0] arsize
  .arburst(arburst),                              // input wire [1 : 0] arburst
  .arlock(arlock),                                // input wire [1 : 0] arlock
  .arcache(arcache),                              // input wire [3 : 0] arcache
  .arprot(arprot),                                // input wire [2 : 0] arprot
  .arvalid(arvalid),                              // input wire arvalid
  .arready(arready),                              // output wire arready
  .rid(rid),                                      // output wire [5 : 0] rid
  .rdata(rdata),                                  // output wire [31 : 0] rdata
  .rresp(rresp),                                  // output wire [1 : 0] rresp
  .rlast(rlast),                                  // output wire rlast
  .rvalid(rvalid),                                // output wire rvalid
  .rready(rready),                                // input wire rready
  .awid(awid),                                    // input wire [5 : 0] awid
  .awaddr(awaddr),                                // input wire [31 : 0] awaddr
  .awlen(awlen),                                  // input wire [3 : 0] awlen
  .awsize(awsize),                                // input wire [2 : 0] awsize
  .awburst(awburst),                              // input wire [1 : 0] awburst
  .awlock(awlock),                                // input wire [1 : 0] awlock
  .awcache(awcache),                              // input wire [3 : 0] awcache
  .awprot(awprot),                                // input wire [2 : 0] awprot
  .awvalid(awvalid),                              // input wire awvalid
  .awready(awready),                              // output wire awready
  .wid(wid),                                      // input wire [5 : 0] wid
  .wdata(wdata),                                  // input wire [31 : 0] wdata
  .wstrb(wstrb),                                  // input wire [3 : 0] wstrb
  .wlast(wlast),                                  // input wire wlast
  .wvalid(wvalid),                                // input wire wvalid
  .wready(wready),                                // output wire wready
  .bid(bid),                                      // output wire [5 : 0] bid
  .bresp(bresp),                                  // output wire [1 : 0] bresp
  .bvalid(bvalid),                                // output wire bvalid
  .bready(bready)                                // input wire bready
);
// INST_TAG_END ------ End INSTANTIATION Template ---------

// You must compile the wrapper file lcd_controller_0.v when simulating
// the core, lcd_controller_0. When compiling the wrapper file, be sure to
// reference the Verilog simulation library.

