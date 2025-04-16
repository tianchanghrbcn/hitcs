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

(* X_CORE_INFO = "ma_river_core,Vivado 2019.2" *)
(* CHECK_LICENSE_TYPE = "ma_river_core_0,ma_river_core,{}" *)
(* IP_DEFINITION_SOURCE = "package_project" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module ma_river_core_0 (
  ext_int,
  aclk,
  aresetn,
  arid,
  araddr,
  arlen,
  arsize,
  arburst,
  arlock,
  arcache,
  arprot,
  arvalid,
  arready,
  rid,
  rdata,
  rresp,
  rlast,
  rvalid,
  rready,
  awid,
  awaddr,
  awlen,
  awsize,
  awburst,
  awlock,
  awcache,
  awprot,
  awvalid,
  awready,
  wid,
  wdata,
  wstrb,
  wlast,
  wvalid,
  wready,
  bid,
  bresp,
  bvalid,
  bready,
  debug_wb_pc0,
  debug_wb_rf_wen0,
  debug_wb_rf_wnum0,
  debug_wb_rf_wdata0,
  debug_wb_pc1,
  debug_wb_rf_wen1,
  debug_wb_rf_wnum1,
  debug_wb_rf_wdata1,
  debug_wb_pc,
  debug_wb_rf_wen,
  debug_wb_rf_wnum,
  debug_wb_rf_wdata
);

input wire [5 : 0] ext_int;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aclk, ASSOCIATED_BUSIF debug_wb_rf, ASSOCIATED_RESET aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 aclk CLK" *)
input wire aclk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME aresetn, POLARITY ACTIVE_LOW, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 aresetn RST" *)
input wire aresetn;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARID" *)
output wire [3 : 0] arid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARADDR" *)
output wire [31 : 0] araddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARLEN" *)
output wire [3 : 0] arlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARSIZE" *)
output wire [2 : 0] arsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARBURST" *)
output wire [1 : 0] arburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARLOCK" *)
output wire [1 : 0] arlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARCACHE" *)
output wire [3 : 0] arcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARPROT" *)
output wire [2 : 0] arprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARVALID" *)
output wire arvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf ARREADY" *)
input wire arready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf RID" *)
input wire [3 : 0] rid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf RDATA" *)
input wire [31 : 0] rdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf RRESP" *)
input wire [1 : 0] rresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf RLAST" *)
input wire rlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf RVALID" *)
input wire rvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf RREADY" *)
output wire rready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWID" *)
output wire [3 : 0] awid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWADDR" *)
output wire [31 : 0] awaddr;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWLEN" *)
output wire [3 : 0] awlen;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWSIZE" *)
output wire [2 : 0] awsize;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWBURST" *)
output wire [1 : 0] awburst;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWLOCK" *)
output wire [1 : 0] awlock;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWCACHE" *)
output wire [3 : 0] awcache;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWPROT" *)
output wire [2 : 0] awprot;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWVALID" *)
output wire awvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf AWREADY" *)
input wire awready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf WID" *)
output wire [3 : 0] wid;
output wire [31 : 0] wdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf WSTRB" *)
output wire [3 : 0] wstrb;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf WLAST" *)
output wire wlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf WVALID" *)
output wire wvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf WREADY" *)
input wire wready;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf BID" *)
input wire [3 : 0] bid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf BRESP" *)
input wire [1 : 0] bresp;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf BVALID" *)
input wire bvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf BREADY" *)
output wire bready;
output wire [31 : 0] debug_wb_pc0;
output wire debug_wb_rf_wen0;
output wire [4 : 0] debug_wb_rf_wnum0;
output wire [31 : 0] debug_wb_rf_wdata0;
output wire [31 : 0] debug_wb_pc1;
output wire debug_wb_rf_wen1;
output wire [4 : 0] debug_wb_rf_wnum1;
output wire [31 : 0] debug_wb_rf_wdata1;
output wire [31 : 0] debug_wb_pc;
output wire debug_wb_rf_wen;
output wire [4 : 0] debug_wb_rf_wnum;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME debug_wb_rf, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WU\
SER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 debug_wb_rf WDATA" *)
output wire [31 : 0] debug_wb_rf_wdata;

  ma_river_core inst (
    .ext_int(ext_int),
    .aclk(aclk),
    .aresetn(aresetn),
    .arid(arid),
    .araddr(araddr),
    .arlen(arlen),
    .arsize(arsize),
    .arburst(arburst),
    .arlock(arlock),
    .arcache(arcache),
    .arprot(arprot),
    .arvalid(arvalid),
    .arready(arready),
    .rid(rid),
    .rdata(rdata),
    .rresp(rresp),
    .rlast(rlast),
    .rvalid(rvalid),
    .rready(rready),
    .awid(awid),
    .awaddr(awaddr),
    .awlen(awlen),
    .awsize(awsize),
    .awburst(awburst),
    .awlock(awlock),
    .awcache(awcache),
    .awprot(awprot),
    .awvalid(awvalid),
    .awready(awready),
    .wid(wid),
    .wdata(wdata),
    .wstrb(wstrb),
    .wlast(wlast),
    .wvalid(wvalid),
    .wready(wready),
    .bid(bid),
    .bresp(bresp),
    .bvalid(bvalid),
    .bready(bready),
    .debug_wb_pc0(debug_wb_pc0),
    .debug_wb_rf_wen0(debug_wb_rf_wen0),
    .debug_wb_rf_wnum0(debug_wb_rf_wnum0),
    .debug_wb_rf_wdata0(debug_wb_rf_wdata0),
    .debug_wb_pc1(debug_wb_pc1),
    .debug_wb_rf_wen1(debug_wb_rf_wen1),
    .debug_wb_rf_wnum1(debug_wb_rf_wnum1),
    .debug_wb_rf_wdata1(debug_wb_rf_wdata1),
    .debug_wb_pc(debug_wb_pc),
    .debug_wb_rf_wen(debug_wb_rf_wen),
    .debug_wb_rf_wnum(debug_wb_rf_wnum),
    .debug_wb_rf_wdata(debug_wb_rf_wdata)
  );
endmodule
