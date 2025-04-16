// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "lcd_controller,Vivado 2019.2" *)
module lcd_controller_0(aclk, aresetn, sim, lcd_rst, lcd_cs, lcd_rs, lcd_rd, 
  lcd_wr, lcd_db, lcd_bl_ctr, dma_start_en, dma_address, dma_length, dma_iack, dma_ready_dev, 
  dma_valid_dev, dma_last_dev, dma_data_dev, grc_io_port_raddress, grc_io_port_rdataword, 
  grc_io_port_waddress, grc_io_port_wenable, grc_io_port_wdataword, arid, araddr, arlen, 
  arsize, arburst, arlock, arcache, arprot, arvalid, arready, rid, rdata, rresp, rlast, rvalid, rready, awid, 
  awaddr, awlen, awsize, awburst, awlock, awcache, awprot, awvalid, awready, wid, wdata, wstrb, wlast, 
  wvalid, wready, bid, bresp, bvalid, bready);
  input aclk;
  input aresetn;
  input sim;
  output lcd_rst;
  output lcd_cs;
  output lcd_rs;
  output lcd_rd;
  output lcd_wr;
  inout [15:0]lcd_db;
  output lcd_bl_ctr;
  output dma_start_en;
  output [31:0]dma_address;
  output [31:0]dma_length;
  output dma_iack;
  output dma_ready_dev;
  input dma_valid_dev;
  input dma_last_dev;
  input [15:0]dma_data_dev;
  output [31:0]grc_io_port_raddress;
  input [31:0]grc_io_port_rdataword;
  output [31:0]grc_io_port_waddress;
  output grc_io_port_wenable;
  output [31:0]grc_io_port_wdataword;
  input [5:0]arid;
  input [31:0]araddr;
  input [3:0]arlen;
  input [2:0]arsize;
  input [1:0]arburst;
  input [1:0]arlock;
  input [3:0]arcache;
  input [2:0]arprot;
  input arvalid;
  output arready;
  output [5:0]rid;
  output [31:0]rdata;
  output [1:0]rresp;
  output rlast;
  output rvalid;
  input rready;
  input [5:0]awid;
  input [31:0]awaddr;
  input [3:0]awlen;
  input [2:0]awsize;
  input [1:0]awburst;
  input [1:0]awlock;
  input [3:0]awcache;
  input [2:0]awprot;
  input awvalid;
  output awready;
  input [5:0]wid;
  input [31:0]wdata;
  input [3:0]wstrb;
  input wlast;
  input wvalid;
  output wready;
  output [5:0]bid;
  output [1:0]bresp;
  output bvalid;
  input bready;
endmodule
