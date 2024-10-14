// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Tue Sep 10 19:10:28 2024
// Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ axi_sim_netlist.v
// Design      : axi
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "axi,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready);
  output rsta_busy;
  output rstb_busy;
  (* x_interface_info = "xilinx.com:signal:clock:1.0 CLK.ACLK CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME CLK.ACLK, ASSOCIATED_BUSIF AXI_SLAVE_S_AXI:AXILite_SLAVE_S_AXI, ASSOCIATED_RESET s_aresetn, FREQ_HZ 100000000, PHASE 0.000, INSERT_VIP 0" *) input s_aclk;
  (* x_interface_info = "xilinx.com:signal:reset:1.0 RST.ARESETN RST" *) (* x_interface_parameter = "XIL_INTERFACENAME RST.ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0" *) input s_aresetn;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWID" *) (* x_interface_parameter = "XIL_INTERFACENAME AXI_SLAVE_S_AXI, DATA_WIDTH 32, PROTOCOL AXI4, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input [3:0]s_axi_awid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWADDR" *) input [31:0]s_axi_awaddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWVALID" *) input s_axi_awvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI AWREADY" *) output s_axi_awready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WDATA" *) input [31:0]s_axi_wdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WSTRB" *) input [3:0]s_axi_wstrb;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WLAST" *) input s_axi_wlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WVALID" *) input s_axi_wvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI WREADY" *) output s_axi_wready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BID" *) output [3:0]s_axi_bid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BVALID" *) output s_axi_bvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI BREADY" *) input s_axi_bready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARID" *) input [3:0]s_axi_arid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARADDR" *) input [31:0]s_axi_araddr;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARVALID" *) input s_axi_arvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI ARREADY" *) output s_axi_arready;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RID" *) output [3:0]s_axi_rid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RDATA" *) output [31:0]s_axi_rdata;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RLAST" *) output s_axi_rlast;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RVALID" *) output s_axi_rvalid;
  (* x_interface_info = "xilinx.com:interface:aximm:1.0 AXI_SLAVE_S_AXI RREADY" *) input s_axi_rready;

  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [31:0]NLW_U0_douta_UNCONNECTED;
  wire [31:0]NLW_U0_doutb_UNCONNECTED;
  wire [13:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;

  (* C_ADDRA_WIDTH = "14" *) 
  (* C_ADDRB_WIDTH = "14" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "8" *) 
  (* C_COMMON_CLK = "1" *) 
  (* C_COUNT_18K_BRAM = "0" *) 
  (* C_COUNT_36K_BRAM = "16" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "1" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     21.0181 mW" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_HAS_AXI_ID = "1" *) 
  (* C_HAS_ENA = "1" *) 
  (* C_HAS_ENB = "1" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "1" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "axi.mem" *) 
  (* C_INIT_FILE_NAME = "axi.mif" *) 
  (* C_INTERFACE_TYPE = "1" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "1" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "16384" *) 
  (* C_READ_DEPTH_B = "16384" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "32" *) 
  (* C_READ_WIDTH_B = "32" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "1" *) 
  (* C_USE_BYTE_WEB = "1" *) 
  (* C_USE_DEFAULT_DATA = "1" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "4" *) 
  (* C_WEB_WIDTH = "4" *) 
  (* C_WRITE_DEPTH_A = "16384" *) 
  (* C_WRITE_DEPTH_B = "16384" *) 
  (* C_WRITE_MODE_A = "READ_FIRST" *) 
  (* C_WRITE_MODE_B = "READ_FIRST" *) 
  (* C_WRITE_WIDTH_A = "32" *) 
  (* C_WRITE_WIDTH_B = "32" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(1'b0),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(NLW_U0_douta_UNCONNECTED[31:0]),
        .doutb(NLW_U0_doutb_UNCONNECTED[31:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[13:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(rsta_busy),
        .rstb(1'b0),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[13:0]),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea({1'b0,1'b0,1'b0,1'b0}),
        .web({1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm
   (s_axi_arready,
    SR,
    \gaxi_full_sm.r_valid_r_reg_0 ,
    s_axi_rlast,
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ,
    \gaxi_full_sm.r_valid_r_reg_1 ,
    \gaxi_full_sm.r_valid_r_reg_2 ,
    s_axi_arlen_7_sp_1,
    s_axi_arlen_2_sp_1,
    ENB_I,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] ,
    s_axi_araddr_14_sp_1,
    ENB_I_0,
    ENB_I_1,
    ENB_I_2,
    E,
    D,
    s_axi_arvalid_0,
    \FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ,
    s_axi_arvalid_1,
    \s_axi_arlen[7]_0 ,
    \gaxi_full_sm.arlen_cntr_reg[5] ,
    \s_axi_arid[3] ,
    s_axi_arvalid_2,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 ,
    ADDRBWRADDR,
    s_axi_arvalid_3,
    s_aclk,
    s_aresetn,
    s_axi_arvalid,
    s_axi_rready,
    Q,
    s_axi_araddr,
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] ,
    s_axi_arlen,
    ENB_dly_D,
    s_axi_arsize,
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] ,
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] ,
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 ,
    \gaxi_full_sm.arlen_cntr_reg[7] ,
    \gaxi_full_sm.arlen_cntr_reg[7]_0 ,
    \gaxi_full_sm.arlen_cntr_reg[6] ,
    \gaxi_full_sm.arlen_cntr_reg[5]_0 ,
    \gaxi_full_sm.arlen_cntr_reg[5]_1 ,
    \gaxi_full_sm.arlen_cntr_reg[4] ,
    \gaxi_full_sm.arlen_cntr_reg[3] ,
    s_axi_arid,
    \grid.S_AXI_RID_reg[3] ,
    addr_cnt_enb_r,
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 ,
    bmg_address_inc_c,
    s_axi_arburst);
  output s_axi_arready;
  output [0:0]SR;
  output \gaxi_full_sm.r_valid_r_reg_0 ;
  output s_axi_rlast;
  output [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ;
  output \gaxi_full_sm.r_valid_r_reg_1 ;
  output \gaxi_full_sm.r_valid_r_reg_2 ;
  output s_axi_arlen_7_sp_1;
  output s_axi_arlen_2_sp_1;
  output ENB_I;
  output \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] ;
  output s_axi_araddr_14_sp_1;
  output ENB_I_0;
  output ENB_I_1;
  output ENB_I_2;
  output [0:0]E;
  output [2:0]D;
  output s_axi_arvalid_0;
  output [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ;
  output [0:0]s_axi_arvalid_1;
  output [7:0]\s_axi_arlen[7]_0 ;
  output \gaxi_full_sm.arlen_cntr_reg[5] ;
  output [3:0]\s_axi_arid[3] ;
  output s_axi_arvalid_2;
  output [13:0]\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 ;
  output [11:0]ADDRBWRADDR;
  output [0:0]s_axi_arvalid_3;
  input s_aclk;
  input s_aresetn;
  input s_axi_arvalid;
  input s_axi_rready;
  input [1:0]Q;
  input [15:0]s_axi_araddr;
  input [2:0]\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] ;
  input [7:0]s_axi_arlen;
  input ENB_dly_D;
  input [0:0]s_axi_arsize;
  input \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] ;
  input [0:0]\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] ;
  input \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 ;
  input [7:0]\gaxi_full_sm.arlen_cntr_reg[7] ;
  input \gaxi_full_sm.arlen_cntr_reg[7]_0 ;
  input \gaxi_full_sm.arlen_cntr_reg[6] ;
  input \gaxi_full_sm.arlen_cntr_reg[5]_0 ;
  input \gaxi_full_sm.arlen_cntr_reg[5]_1 ;
  input \gaxi_full_sm.arlen_cntr_reg[4] ;
  input \gaxi_full_sm.arlen_cntr_reg[3] ;
  input [3:0]s_axi_arid;
  input [3:0]\grid.S_AXI_RID_reg[3] ;
  input [6:0]addr_cnt_enb_r;
  input [13:0]\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 ;
  input [15:2]bmg_address_inc_c;
  input [1:0]s_axi_arburst;

  wire [11:0]ADDRBWRADDR;
  wire [2:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_1;
  wire ENB_I_2;
  wire ENB_dly_D;
  wire \FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0 ;
  wire [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ;
  wire [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ;
  wire [1:0]Q;
  wire [0:0]SR;
  wire [6:0]addr_cnt_enb_r;
  wire ar_ready_c;
  wire [15:2]bmg_address_inc_c;
  wire \gaxi_full_sm.S_AXI_RLAST_i_1_n_0 ;
  wire \gaxi_full_sm.S_AXI_RLAST_i_2_n_0 ;
  wire \gaxi_full_sm.S_AXI_RLAST_i_3_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_2_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_3_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_4_n_0 ;
  wire \gaxi_full_sm.ar_ready_r_i_5_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[3] ;
  wire \gaxi_full_sm.arlen_cntr_reg[4] ;
  wire \gaxi_full_sm.arlen_cntr_reg[5] ;
  wire \gaxi_full_sm.arlen_cntr_reg[5]_0 ;
  wire \gaxi_full_sm.arlen_cntr_reg[5]_1 ;
  wire \gaxi_full_sm.arlen_cntr_reg[6] ;
  wire [7:0]\gaxi_full_sm.arlen_cntr_reg[7] ;
  wire \gaxi_full_sm.arlen_cntr_reg[7]_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] ;
  wire [13:0]\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 ;
  wire [13:0]\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0 ;
  wire [0:0]\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] ;
  wire [2:0]\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 ;
  wire \gaxi_full_sm.outstanding_read_r_i_1_n_0 ;
  wire \gaxi_full_sm.r_valid_r_i_1_n_0 ;
  wire \gaxi_full_sm.r_valid_r_i_2_n_0 ;
  wire \gaxi_full_sm.r_valid_r_i_3_n_0 ;
  wire \gaxi_full_sm.r_valid_r_reg_0 ;
  wire \gaxi_full_sm.r_valid_r_reg_1 ;
  wire \gaxi_full_sm.r_valid_r_reg_2 ;
  wire [3:0]\grid.S_AXI_RID_reg[3] ;
  wire [1:0]next_state;
  wire outstanding_read_r;
  wire [1:0]present_state;
  wire s_aclk;
  wire s_aresetn;
  wire [15:0]s_axi_araddr;
  wire s_axi_araddr_14_sn_1;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [3:0]\s_axi_arid[3] ;
  wire [7:0]s_axi_arlen;
  wire [7:0]\s_axi_arlen[7]_0 ;
  wire s_axi_arlen_2_sn_1;
  wire s_axi_arlen_7_sn_1;
  wire s_axi_arready;
  wire [0:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire s_axi_arvalid_0;
  wire [0:0]s_axi_arvalid_1;
  wire s_axi_arvalid_2;
  wire [0:0]s_axi_arvalid_3;
  wire s_axi_rlast;
  wire s_axi_rready;

  assign s_axi_araddr_14_sp_1 = s_axi_araddr_14_sn_1;
  assign s_axi_arlen_2_sp_1 = s_axi_arlen_2_sn_1;
  assign s_axi_arlen_7_sp_1 = s_axi_arlen_7_sn_1;
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_16 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [11]),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[13]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[13]),
        .O(ADDRBWRADDR[11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_17 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [10]),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[12]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[12]),
        .O(ADDRBWRADDR[10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_18 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [9]),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[11]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[11]),
        .O(ADDRBWRADDR[9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_19 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [8]),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[10]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[10]),
        .O(ADDRBWRADDR[8]));
  LUT4 #(
    .INIT(16'hAABA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2 
       (.I0(ENB_dly_D),
        .I1(\gaxi_full_sm.r_valid_r_i_2_n_0 ),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] ),
        .I3(s_axi_araddr_14_sn_1),
        .O(ENB_I));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_20 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [7]),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[9]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[9]),
        .O(ADDRBWRADDR[7]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_21 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [6]),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[8]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[8]),
        .O(ADDRBWRADDR[6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_22 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [5]),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[7]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[7]),
        .O(ADDRBWRADDR[5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_23 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [4]),
        .I1(addr_cnt_enb_r[5]),
        .I2(s_axi_araddr[6]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[6]),
        .O(ADDRBWRADDR[4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_24 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [3]),
        .I1(addr_cnt_enb_r[4]),
        .I2(s_axi_araddr[5]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[5]),
        .O(ADDRBWRADDR[3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_25 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [2]),
        .I1(addr_cnt_enb_r[3]),
        .I2(s_axi_araddr[4]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[4]),
        .O(ADDRBWRADDR[2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_26 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [1]),
        .I1(addr_cnt_enb_r[2]),
        .I2(s_axi_araddr[3]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[3]),
        .O(ADDRBWRADDR[1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_27 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [0]),
        .I1(addr_cnt_enb_r[1]),
        .I2(s_axi_araddr[2]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[2]),
        .O(ADDRBWRADDR[0]));
  LUT4 #(
    .INIT(16'hBAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__0 
       (.I0(ENB_dly_D),
        .I1(\gaxi_full_sm.r_valid_r_i_2_n_0 ),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] ),
        .I3(s_axi_araddr_14_sn_1),
        .O(ENB_I_0));
  LUT4 #(
    .INIT(16'hABAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__1 
       (.I0(ENB_dly_D),
        .I1(\gaxi_full_sm.r_valid_r_i_2_n_0 ),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] ),
        .I3(s_axi_araddr_14_sn_1),
        .O(ENB_I_1));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_2__2 
       (.I0(ENB_dly_D),
        .I1(\gaxi_full_sm.r_valid_r_i_2_n_0 ),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] ),
        .I3(s_axi_araddr_14_sn_1),
        .O(ENB_I_2));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_30 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [13]),
        .I1(addr_cnt_enb_r[6]),
        .I2(s_axi_araddr[15]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(bmg_address_inc_c[15]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] ));
  LUT5 #(
    .INIT(32'hFF00B8B8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_31 
       (.I0(s_axi_araddr[14]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I2(bmg_address_inc_c[14]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [12]),
        .I4(addr_cnt_enb_r[6]),
        .O(s_axi_araddr_14_sn_1));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'h2022FFFF)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35 
       (.I0(present_state[1]),
        .I1(outstanding_read_r),
        .I2(s_axi_rready),
        .I3(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I4(present_state[0]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ));
  LUT6 #(
    .INIT(64'h0000000015051555)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_1__0 
       (.I0(\gaxi_full_sm.ar_ready_r_i_5_n_0 ),
        .I1(\gaxi_full_sm.ar_ready_r_i_4_n_0 ),
        .I2(present_state[0]),
        .I3(present_state[1]),
        .I4(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I5(\gaxi_full_sm.ar_ready_r_i_2_n_0 ),
        .O(next_state[0]));
  LUT2 #(
    .INIT(4'hE)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_1__0 
       (.I0(s_axi_arvalid_2),
        .I1(\FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0 ),
        .O(next_state[1]));
  LUT6 #(
    .INIT(64'h00000000A0ACA0A0)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_2 
       (.I0(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(s_axi_arlen[7]),
        .I4(\gaxi_full_sm.r_valid_r_i_3_n_0 ),
        .I5(present_state[1]),
        .O(s_axi_arvalid_2));
  LUT6 #(
    .INIT(64'hFFF30000AAC00000)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_3 
       (.I0(outstanding_read_r),
        .I1(s_axi_arvalid),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4_n_0 ),
        .I3(present_state[0]),
        .I4(present_state[1]),
        .I5(\gaxi_full_sm.r_valid_r_reg_2 ),
        .O(\FSM_sequential_gaxi_full_sm.present_state[1]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(present_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "wait_rdaddr:00,os_rd:11,rd_mem:01,reg_rdaddr:10" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(present_state[1]),
        .R(SR));
  LUT5 #(
    .INIT(32'hFFFB00FB)) 
    \gaxi_full_sm.S_AXI_RLAST_i_1 
       (.I0(\gaxi_full_sm.S_AXI_RLAST_i_2_n_0 ),
        .I1(\gaxi_full_sm.S_AXI_RLAST_i_3_n_0 ),
        .I2(\gaxi_full_sm.r_valid_r_reg_1 ),
        .I3(\gaxi_full_sm.r_valid_r_reg_2 ),
        .I4(s_axi_rlast),
        .O(\gaxi_full_sm.S_AXI_RLAST_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010000000)) 
    \gaxi_full_sm.S_AXI_RLAST_i_2 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[7] [7]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[7] [6]),
        .I2(\gaxi_full_sm.arlen_cntr_reg[5] ),
        .I3(s_axi_rready),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(\gaxi_full_sm.S_AXI_RLAST_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'hFDFF)) 
    \gaxi_full_sm.S_AXI_RLAST_i_3 
       (.I0(s_axi_arvalid),
        .I1(present_state[0]),
        .I2(s_axi_arlen[7]),
        .I3(\gaxi_full_sm.r_valid_r_i_3_n_0 ),
        .O(\gaxi_full_sm.S_AXI_RLAST_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hD0000000)) 
    \gaxi_full_sm.S_AXI_RLAST_i_4 
       (.I0(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I1(s_axi_rready),
        .I2(outstanding_read_r),
        .I3(present_state[0]),
        .I4(present_state[1]),
        .O(\gaxi_full_sm.r_valid_r_reg_1 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gaxi_full_sm.S_AXI_RLAST_i_5 
       (.I0(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I1(s_axi_rready),
        .O(\gaxi_full_sm.r_valid_r_reg_2 ));
  FDRE \gaxi_full_sm.S_AXI_RLAST_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.S_AXI_RLAST_i_1_n_0 ),
        .Q(s_axi_rlast),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEAAAEAA)) 
    \gaxi_full_sm.ar_ready_r_i_1 
       (.I0(\gaxi_full_sm.ar_ready_r_i_2_n_0 ),
        .I1(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .I4(\gaxi_full_sm.ar_ready_r_i_4_n_0 ),
        .I5(\gaxi_full_sm.ar_ready_r_i_5_n_0 ),
        .O(ar_ready_c));
  LUT5 #(
    .INIT(32'h10001111)) 
    \gaxi_full_sm.ar_ready_r_i_2 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(s_axi_rready),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4_n_0 ),
        .I4(s_axi_arvalid),
        .O(\gaxi_full_sm.ar_ready_r_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \gaxi_full_sm.ar_ready_r_i_3 
       (.I0(s_axi_rready),
        .I1(\gaxi_full_sm.arlen_cntr_reg[5] ),
        .I2(\gaxi_full_sm.arlen_cntr_reg[7] [6]),
        .I3(\gaxi_full_sm.arlen_cntr_reg[7] [7]),
        .O(\gaxi_full_sm.ar_ready_r_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h45)) 
    \gaxi_full_sm.ar_ready_r_i_4 
       (.I0(outstanding_read_r),
        .I1(s_axi_rready),
        .I2(\gaxi_full_sm.r_valid_r_reg_0 ),
        .O(\gaxi_full_sm.ar_ready_r_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h4404440400004404)) 
    \gaxi_full_sm.ar_ready_r_i_5 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(s_axi_arvalid),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4_n_0 ),
        .I4(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I5(s_axi_rready),
        .O(\gaxi_full_sm.ar_ready_r_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.ar_ready_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ar_ready_c),
        .Q(s_axi_arready),
        .R(SR));
  LUT5 #(
    .INIT(32'h22627767)) 
    \gaxi_full_sm.arlen_cntr[0]_i_1 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I1(s_axi_arlen[0]),
        .I2(s_axi_arvalid),
        .I3(present_state[0]),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7] [0]),
        .O(\s_axi_arlen[7]_0 [0]));
  LUT6 #(
    .INIT(64'hB4B7B484B484B4B7)) 
    \gaxi_full_sm.arlen_cntr[1]_i_1 
       (.I0(s_axi_arlen[0]),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7] [0]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7] [1]),
        .O(\s_axi_arlen[7]_0 [1]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT5 #(
    .INIT(32'hA9FFA900)) 
    \gaxi_full_sm.arlen_cntr[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I4(\gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ),
        .O(\s_axi_arlen[7]_0 [2]));
  LUT6 #(
    .INIT(64'hFBFBFB08080808FB)) 
    \gaxi_full_sm.arlen_cntr[2]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(\gaxi_full_sm.arlen_cntr_reg[7] [0]),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7] [1]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7] [2]),
        .O(\gaxi_full_sm.arlen_cntr[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h7848787B787B7848)) 
    \gaxi_full_sm.arlen_cntr[3]_i_1 
       (.I0(s_axi_arlen_2_sn_1),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7] [3]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[3] ),
        .O(\s_axi_arlen[7]_0 [3]));
  LUT6 #(
    .INIT(64'hBF40BF4FBF40B040)) 
    \gaxi_full_sm.arlen_cntr[4]_i_1 
       (.I0(s_axi_arlen[3]),
        .I1(s_axi_arlen_2_sn_1),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arvalid_0),
        .I5(\gaxi_full_sm.arlen_cntr_reg[4] ),
        .O(\s_axi_arlen[7]_0 [4]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gaxi_full_sm.arlen_cntr[4]_i_2 
       (.I0(s_axi_arlen[2]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arlen[0]),
        .O(s_axi_arlen_2_sn_1));
  LUT6 #(
    .INIT(64'hB4B7B484B484B4B7)) 
    \gaxi_full_sm.arlen_cntr[5]_i_1 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[5]_0 ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I2(s_axi_arlen[5]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[5]_1 ),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7] [5]),
        .O(\s_axi_arlen[7]_0 [5]));
  LUT6 #(
    .INIT(64'hB888B8BBB8BBB888)) 
    \gaxi_full_sm.arlen_cntr[6]_i_1 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[6] ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7] [6]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[5] ),
        .O(\s_axi_arlen[7]_0 [6]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.arlen_cntr[6]_i_3 
       (.I0(\gaxi_full_sm.arlen_cntr_reg[7] [5]),
        .I1(\gaxi_full_sm.arlen_cntr_reg[7] [3]),
        .I2(\gaxi_full_sm.arlen_cntr_reg[7] [0]),
        .I3(\gaxi_full_sm.arlen_cntr_reg[7] [1]),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7] [2]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7] [4]),
        .O(\gaxi_full_sm.arlen_cntr_reg[5] ));
  LUT6 #(
    .INIT(64'hEEFFEFFFEEEEEFEE)) 
    \gaxi_full_sm.arlen_cntr[7]_i_1 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I1(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I2(\gaxi_full_sm.r_valid_r_reg_2 ),
        .I3(present_state[0]),
        .I4(present_state[1]),
        .I5(s_axi_arvalid),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 ));
  LUT6 #(
    .INIT(64'h7040707370737040)) 
    \gaxi_full_sm.arlen_cntr[7]_i_2 
       (.I0(\gaxi_full_sm.r_valid_r_i_3_n_0 ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.arlen_cntr_reg[7] [7]),
        .I5(\gaxi_full_sm.arlen_cntr_reg[7]_0 ),
        .O(\s_axi_arlen[7]_0 [7]));
  LUT1 #(
    .INIT(2'h1)) 
    \gaxi_full_sm.aw_ready_r_i_1 
       (.I0(s_aresetn),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT5 #(
    .INIT(32'hFDFFFFFF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[15]_i_2 
       (.I0(\gaxi_full_sm.r_valid_r_i_3_n_0 ),
        .I1(s_axi_arlen[7]),
        .I2(present_state[0]),
        .I3(s_axi_arvalid),
        .I4(present_state[1]),
        .O(s_axi_arlen_7_sn_1));
  LUT6 #(
    .INIT(64'hFFFFABBBFFFFFFFF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_1 
       (.I0(\gaxi_full_sm.r_valid_r_reg_1 ),
        .I1(\gaxi_full_sm.S_AXI_RLAST_i_3_n_0 ),
        .I2(present_state[1]),
        .I3(\gaxi_full_sm.r_valid_r_reg_2 ),
        .I4(\gaxi_full_sm.S_AXI_RLAST_i_2_n_0 ),
        .I5(s_aresetn),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h00000400)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_2 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4_n_0 ),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(s_axi_arburst[1]),
        .I4(s_axi_arburst[0]),
        .O(s_axi_arvalid_3));
  LUT6 #(
    .INIT(64'h0000000000010000)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arlen[5]),
        .I4(s_axi_arlen_2_sn_1),
        .I5(s_axi_arlen[7]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[10]_i_1 
       (.I0(s_axi_araddr[10]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[8]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [8]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[11]_i_1 
       (.I0(s_axi_araddr[11]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[9]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [9]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[12]_i_1 
       (.I0(s_axi_araddr[12]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[10]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [10]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[13]_i_1 
       (.I0(s_axi_araddr[13]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[11]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [11]));
  LUT6 #(
    .INIT(64'hDDDD8888CDC8CDC8)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[14]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(s_axi_araddr[14]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I3(bmg_address_inc_c[14]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [12]),
        .I5(addr_cnt_enb_r[6]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [12]));
  LUT6 #(
    .INIT(64'hEF40EF45EF40EA40)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[15]_i_1 
       (.I0(s_axi_arvalid_0),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 [13]),
        .I2(addr_cnt_enb_r[6]),
        .I3(s_axi_araddr[15]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I5(bmg_address_inc_c[15]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [13]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[2]_i_1 
       (.I0(s_axi_araddr[2]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [0]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[3]_i_1 
       (.I0(s_axi_araddr[3]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [1]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[4]_i_1 
       (.I0(s_axi_araddr[4]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[2]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [2]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[5]_i_1 
       (.I0(s_axi_araddr[5]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[3]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [3]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[6]_i_1 
       (.I0(s_axi_araddr[6]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[4]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [4]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[7]_i_1 
       (.I0(s_axi_araddr[7]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[5]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [5]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[8]_i_1 
       (.I0(s_axi_araddr[8]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[6]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [6]));
  LUT4 #(
    .INIT(16'hFB08)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r[9]_i_1 
       (.I0(s_axi_araddr[9]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(ADDRBWRADDR[7]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 [7]));
  LUT6 #(
    .INIT(64'h787B78487848787B)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_1 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] ),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I2(s_axi_araddr[0]),
        .I3(s_axi_arvalid_0),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [0]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0 ),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h47)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2 
       (.I0(s_axi_araddr[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I2(Q[0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5A6AFFFF5A6A0000)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_1 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arsize),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] ),
        .I3(s_axi_araddr[0]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ),
        .O(D[1]));
  LUT6 #(
    .INIT(64'h08FBFB08FB0808FB)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_arvalid),
        .I2(present_state[0]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0 ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h1DFF)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4 
       (.I0(Q[0]),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I2(s_axi_araddr[0]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF0A0A0A3A)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_1 
       (.I0(s_axi_arvalid),
        .I1(present_state[1]),
        .I2(present_state[0]),
        .I3(\gaxi_full_sm.r_valid_r_reg_2 ),
        .I4(\gaxi_full_sm.ar_ready_r_i_3_n_0 ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .O(s_axi_arvalid_1));
  LUT6 #(
    .INIT(64'h0DD0FFFF0DD00DD0)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_2 
       (.I0(s_axi_arvalid),
        .I1(present_state[0]),
        .I2(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [2]),
        .I3(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0 ),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 ),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h000000000000BF00)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3 
       (.I0(s_axi_rready),
        .I1(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I2(present_state[1]),
        .I3(s_axi_arvalid),
        .I4(present_state[0]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_4_n_0 ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEE888E888888888)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [1]),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0 ),
        .I2(Q[0]),
        .I3(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I4(s_axi_araddr[0]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] [0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hBA8A)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6 
       (.I0(Q[1]),
        .I1(addr_cnt_enb_r[0]),
        .I2(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_35_n_0 ),
        .I3(s_axi_araddr[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_1 
       (.I0(s_axi_arvalid),
        .I1(present_state[0]),
        .O(s_axi_arvalid_0));
  LUT6 #(
    .INIT(64'h0C00040400000000)) 
    \gaxi_full_sm.outstanding_read_r_i_1 
       (.I0(\gaxi_full_sm.S_AXI_RLAST_i_3_n_0 ),
        .I1(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I2(s_axi_rready),
        .I3(outstanding_read_r),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(\gaxi_full_sm.outstanding_read_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.outstanding_read_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.outstanding_read_r_i_1_n_0 ),
        .Q(outstanding_read_r),
        .R(SR));
  LUT6 #(
    .INIT(64'h5D55FFFF5D555D55)) 
    \gaxi_full_sm.r_valid_r_i_1 
       (.I0(\gaxi_full_sm.r_valid_r_i_2_n_0 ),
        .I1(\gaxi_full_sm.r_valid_r_i_3_n_0 ),
        .I2(s_axi_arlen[7]),
        .I3(s_axi_arvalid_0),
        .I4(s_axi_rready),
        .I5(\gaxi_full_sm.r_valid_r_reg_0 ),
        .O(\gaxi_full_sm.r_valid_r_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0CFF5D5D0C0C5555)) 
    \gaxi_full_sm.r_valid_r_i_2 
       (.I0(s_axi_arvalid),
        .I1(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I2(s_axi_rready),
        .I3(outstanding_read_r),
        .I4(present_state[0]),
        .I5(present_state[1]),
        .O(\gaxi_full_sm.r_valid_r_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \gaxi_full_sm.r_valid_r_i_3 
       (.I0(s_axi_arlen_2_sn_1),
        .I1(s_axi_arlen[5]),
        .I2(s_axi_arlen[6]),
        .I3(s_axi_arlen[3]),
        .I4(s_axi_arlen[4]),
        .O(\gaxi_full_sm.r_valid_r_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.r_valid_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.r_valid_r_i_1_n_0 ),
        .Q(\gaxi_full_sm.r_valid_r_reg_0 ),
        .R(SR));
  LUT6 #(
    .INIT(64'hBBBBFBBB88880888)) 
    \grid.S_AXI_RID[0]_i_1 
       (.I0(s_axi_arid[0]),
        .I1(s_axi_arvalid_0),
        .I2(present_state[1]),
        .I3(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I4(s_axi_rready),
        .I5(\grid.S_AXI_RID_reg[3] [0]),
        .O(\s_axi_arid[3] [0]));
  LUT6 #(
    .INIT(64'hBBBBFBBB88880888)) 
    \grid.S_AXI_RID[1]_i_1 
       (.I0(s_axi_arid[1]),
        .I1(s_axi_arvalid_0),
        .I2(present_state[1]),
        .I3(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I4(s_axi_rready),
        .I5(\grid.S_AXI_RID_reg[3] [1]),
        .O(\s_axi_arid[3] [1]));
  LUT6 #(
    .INIT(64'hBBBBFBBB88880888)) 
    \grid.S_AXI_RID[2]_i_1 
       (.I0(s_axi_arid[2]),
        .I1(s_axi_arvalid_0),
        .I2(present_state[1]),
        .I3(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I4(s_axi_rready),
        .I5(\grid.S_AXI_RID_reg[3] [2]),
        .O(\s_axi_arid[3] [2]));
  LUT6 #(
    .INIT(64'hF711F7F7C400C4C4)) 
    \grid.S_AXI_RID[3]_i_1 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(outstanding_read_r),
        .I3(s_axi_rready),
        .I4(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I5(s_axi_arvalid),
        .O(E));
  LUT6 #(
    .INIT(64'hBBBBFBBB88880888)) 
    \grid.S_AXI_RID[3]_i_2 
       (.I0(s_axi_arid[3]),
        .I1(s_axi_arvalid_0),
        .I2(present_state[1]),
        .I3(\gaxi_full_sm.r_valid_r_reg_0 ),
        .I4(s_axi_rready),
        .I5(\grid.S_AXI_RID_reg[3] [3]),
        .O(\s_axi_arid[3] [3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper
   (s_axi_arready,
    s_aresetn_a_c,
    \gaxi_full_sm.r_valid_r_reg ,
    s_axi_rlast,
    ENB_I,
    ADDRB,
    ENB_I_0,
    ENB_I_1,
    ENB_I_2,
    E,
    ADDRBWRADDR,
    s_axi_rid,
    s_aclk,
    s_aresetn,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    ENB_dly_D,
    s_axi_arid,
    s_axi_arburst);
  output s_axi_arready;
  output s_aresetn_a_c;
  output \gaxi_full_sm.r_valid_r_reg ;
  output s_axi_rlast;
  output ENB_I;
  output [1:0]ADDRB;
  output ENB_I_0;
  output ENB_I_1;
  output ENB_I_2;
  output [0:0]E;
  output [11:0]ADDRBWRADDR;
  output [3:0]s_axi_rid;
  input s_aclk;
  input s_aresetn;
  input s_axi_arvalid;
  input s_axi_rready;
  input [15:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input ENB_dly_D;
  input [3:0]s_axi_arid;
  input [1:0]s_axi_arburst;

  wire [1:0]ADDRB;
  wire [11:0]ADDRBWRADDR;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_40_n_0 ;
  wire [0:0]E;
  wire ENB_I;
  wire ENB_I_0;
  wire ENB_I_1;
  wire ENB_I_2;
  wire ENB_dly_D;
  wire [15:1]addr_cnt_enb_r;
  wire addr_cnt_enb_r1;
  wire [3:0]ar_id_r;
  wire [7:0]arlen_cntr;
  wire axi_read_fsm_n_16;
  wire axi_read_fsm_n_17;
  wire axi_read_fsm_n_18;
  wire axi_read_fsm_n_19;
  wire axi_read_fsm_n_20;
  wire axi_read_fsm_n_22;
  wire axi_read_fsm_n_23;
  wire axi_read_fsm_n_24;
  wire axi_read_fsm_n_25;
  wire axi_read_fsm_n_26;
  wire axi_read_fsm_n_27;
  wire axi_read_fsm_n_28;
  wire axi_read_fsm_n_29;
  wire axi_read_fsm_n_30;
  wire axi_read_fsm_n_31;
  wire axi_read_fsm_n_32;
  wire axi_read_fsm_n_33;
  wire axi_read_fsm_n_34;
  wire axi_read_fsm_n_35;
  wire axi_read_fsm_n_36;
  wire axi_read_fsm_n_37;
  wire axi_read_fsm_n_38;
  wire axi_read_fsm_n_39;
  wire axi_read_fsm_n_4;
  wire axi_read_fsm_n_40;
  wire axi_read_fsm_n_41;
  wire axi_read_fsm_n_42;
  wire axi_read_fsm_n_43;
  wire axi_read_fsm_n_44;
  wire axi_read_fsm_n_45;
  wire axi_read_fsm_n_46;
  wire axi_read_fsm_n_47;
  wire axi_read_fsm_n_48;
  wire axi_read_fsm_n_49;
  wire axi_read_fsm_n_5;
  wire axi_read_fsm_n_6;
  wire axi_read_fsm_n_7;
  wire axi_read_fsm_n_8;
  wire [15:2]bmg_address_inc_c;
  wire \gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[4]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ;
  wire \gaxi_full_sm.arlen_cntr[7]_i_3_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[15]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_i_2_n_3 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[12] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[13] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[14] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[15] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[0] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[1] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_2_n_0 ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1] ;
  wire \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2] ;
  wire \gaxi_full_sm.r_valid_r_reg ;
  wire incr_en_r;
  wire p_0_in;
  wire [2:2]p_2_out;
  wire s_aclk;
  wire s_aresetn;
  wire s_aresetn_a_c;
  wire [15:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [3:1]\NLW_gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_i_2_CO_UNCONNECTED ;
  wire [3:2]\NLW_gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_i_2_O_UNCONNECTED ;

  CARRY4 \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36 
       (.CI(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37_n_0 ),
        .CO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bmg_address_inc_c[13:10]),
        .S({\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[13] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[12] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10] }));
  CARRY4 \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37 
       (.CI(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38_n_0 ),
        .CO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_37_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(bmg_address_inc_c[9:6]),
        .S({\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] }));
  CARRY4 \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38 
       (.CI(1'b0),
        .CO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_38_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] }),
        .O(bmg_address_inc_c[5:2]),
        .S({\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_40_n_0 }));
  LUT3 #(
    .INIT(8'h6A)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_40 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] ),
        .I1(incr_en_r),
        .I2(p_0_in),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_40_n_0 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_fsm axi_read_fsm
       (.ADDRBWRADDR(ADDRBWRADDR),
        .D({axi_read_fsm_n_16,axi_read_fsm_n_17,axi_read_fsm_n_18}),
        .E(E),
        .ENB_I(ENB_I),
        .ENB_I_0(ENB_I_0),
        .ENB_I_1(ENB_I_1),
        .ENB_I_2(ENB_I_2),
        .ENB_dly_D(ENB_dly_D),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[0]_0 (axi_read_fsm_n_20),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 (axi_read_fsm_n_4),
        .Q({\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[1] ,\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[0] }),
        .SR(s_aresetn_a_c),
        .addr_cnt_enb_r({addr_cnt_enb_r[15],addr_cnt_enb_r[6:1]}),
        .bmg_address_inc_c(bmg_address_inc_c),
        .\gaxi_full_sm.arlen_cntr_reg[3] (\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[4] (\gaxi_full_sm.arlen_cntr[4]_i_3_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[5] (axi_read_fsm_n_30),
        .\gaxi_full_sm.arlen_cntr_reg[5]_0 (\gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[5]_1 (\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[6] (\gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ),
        .\gaxi_full_sm.arlen_cntr_reg[7] (arlen_cntr),
        .\gaxi_full_sm.arlen_cntr_reg[7]_0 (\gaxi_full_sm.arlen_cntr[7]_i_3_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] (ADDRB[1]),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_0 ({axi_read_fsm_n_36,axi_read_fsm_n_37,axi_read_fsm_n_38,axi_read_fsm_n_39,axi_read_fsm_n_40,axi_read_fsm_n_41,axi_read_fsm_n_42,axi_read_fsm_n_43,axi_read_fsm_n_44,axi_read_fsm_n_45,axi_read_fsm_n_46,axi_read_fsm_n_47,axi_read_fsm_n_48,axi_read_fsm_n_49}),
        .\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_1 ({\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[15] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[14] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[13] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[12] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] }),
        .\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] (\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] (\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0 ),
        .\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] ({\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2] ,\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1] ,\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0] }),
        .\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2]_0 (\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0 ),
        .\gaxi_full_sm.r_valid_r_reg_0 (\gaxi_full_sm.r_valid_r_reg ),
        .\gaxi_full_sm.r_valid_r_reg_1 (axi_read_fsm_n_5),
        .\gaxi_full_sm.r_valid_r_reg_2 (axi_read_fsm_n_6),
        .\grid.S_AXI_RID_reg[3] (ar_id_r),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_araddr_14_sp_1(ADDRB[0]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .\s_axi_arid[3] ({axi_read_fsm_n_31,axi_read_fsm_n_32,axi_read_fsm_n_33,axi_read_fsm_n_34}),
        .s_axi_arlen(s_axi_arlen),
        .\s_axi_arlen[7]_0 ({axi_read_fsm_n_22,axi_read_fsm_n_23,axi_read_fsm_n_24,axi_read_fsm_n_25,axi_read_fsm_n_26,axi_read_fsm_n_27,axi_read_fsm_n_28,axi_read_fsm_n_29}),
        .s_axi_arlen_2_sp_1(axi_read_fsm_n_8),
        .s_axi_arlen_7_sp_1(axi_read_fsm_n_7),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize[0]),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(axi_read_fsm_n_19),
        .s_axi_arvalid_1(p_2_out),
        .s_axi_arvalid_2(axi_read_fsm_n_35),
        .s_axi_arvalid_3(addr_cnt_enb_r1),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready));
  LUT3 #(
    .INIT(8'h01)) 
    \gaxi_full_sm.arlen_cntr[3]_i_2 
       (.I0(arlen_cntr[2]),
        .I1(arlen_cntr[1]),
        .I2(arlen_cntr[0]),
        .O(\gaxi_full_sm.arlen_cntr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFE0001)) 
    \gaxi_full_sm.arlen_cntr[4]_i_3 
       (.I0(arlen_cntr[3]),
        .I1(arlen_cntr[0]),
        .I2(arlen_cntr[1]),
        .I3(arlen_cntr[2]),
        .I4(arlen_cntr[4]),
        .O(\gaxi_full_sm.arlen_cntr[4]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[5]_i_2 
       (.I0(s_axi_arlen[4]),
        .I1(s_axi_arlen[3]),
        .I2(s_axi_arlen[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[2]),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \gaxi_full_sm.arlen_cntr[5]_i_3 
       (.I0(arlen_cntr[4]),
        .I1(arlen_cntr[2]),
        .I2(arlen_cntr[1]),
        .I3(arlen_cntr[0]),
        .I4(arlen_cntr[3]),
        .O(\gaxi_full_sm.arlen_cntr[5]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFB0004)) 
    \gaxi_full_sm.arlen_cntr[6]_i_2 
       (.I0(s_axi_arlen[5]),
        .I1(axi_read_fsm_n_8),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arlen[6]),
        .O(\gaxi_full_sm.arlen_cntr[6]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \gaxi_full_sm.arlen_cntr[7]_i_3 
       (.I0(axi_read_fsm_n_30),
        .I1(arlen_cntr[6]),
        .O(\gaxi_full_sm.arlen_cntr[7]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gaxi_full_sm.arlen_cntr_reg[0] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_20),
        .D(axi_read_fsm_n_29),
        .Q(arlen_cntr[0]),
        .S(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[1] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_20),
        .D(axi_read_fsm_n_28),
        .Q(arlen_cntr[1]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[2] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_20),
        .D(axi_read_fsm_n_27),
        .Q(arlen_cntr[2]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[3] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_20),
        .D(axi_read_fsm_n_26),
        .Q(arlen_cntr[3]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[4] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_20),
        .D(axi_read_fsm_n_25),
        .Q(arlen_cntr[4]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[5] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_20),
        .D(axi_read_fsm_n_24),
        .Q(arlen_cntr[5]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[6] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_20),
        .D(axi_read_fsm_n_23),
        .Q(arlen_cntr[6]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.arlen_cntr_reg[7] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_20),
        .D(axi_read_fsm_n_22),
        .Q(arlen_cntr[7]),
        .R(s_aresetn_a_c));
  LUT6 #(
    .INIT(64'hFFFF0054FFFF0000)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[15]_i_1 
       (.I0(axi_read_fsm_n_5),
        .I1(axi_read_fsm_n_7),
        .I2(axi_read_fsm_n_6),
        .I3(axi_read_fsm_n_35),
        .I4(addr_cnt_enb_r1),
        .I5(addr_cnt_enb_r[15]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5_n_0 ),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[1]),
        .I4(s_axi_arsize[0]),
        .I5(s_axi_arlen[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1 
       (.I0(s_axi_arlen[2]),
        .I1(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5_n_0 ),
        .I2(s_axi_arlen[1]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arsize[2]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000004001F)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arsize[1]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arlen[2]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5_n_0 ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01010101110113FF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arlen[1]),
        .I4(s_axi_arlen[2]),
        .I5(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5_n_0 ),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000400FF555555FF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1 
       (.I0(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5_n_0 ),
        .I1(s_axi_arlen[1]),
        .I2(s_axi_arsize[0]),
        .I3(s_axi_arsize[2]),
        .I4(s_axi_arsize[1]),
        .I5(s_axi_arlen[2]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0707FFFF070707FF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arlen[2]),
        .I4(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5_n_0 ),
        .I5(s_axi_arlen[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5 
       (.I0(s_axi_arlen[5]),
        .I1(s_axi_arlen[6]),
        .I2(s_axi_arlen[3]),
        .I3(s_axi_arlen[4]),
        .I4(s_axi_arlen[0]),
        .I5(s_axi_arlen[7]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[15] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[15]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[15]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[1] 
       (.C(s_aclk),
        .CE(addr_cnt_enb_r1),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[1]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[1]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[2] 
       (.C(s_aclk),
        .CE(addr_cnt_enb_r1),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[2]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[2]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[3] 
       (.C(s_aclk),
        .CE(addr_cnt_enb_r1),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[3]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[3]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[4] 
       (.C(s_aclk),
        .CE(addr_cnt_enb_r1),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[4]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[4]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[5] 
       (.C(s_aclk),
        .CE(addr_cnt_enb_r1),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[5]_i_1_n_0 ),
        .Q(addr_cnt_enb_r[5]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r_reg[6] 
       (.C(s_aclk),
        .CE(addr_cnt_enb_r1),
        .D(\gaxi_full_sm.gaxifull_mem_slave.addr_cnt_enb_r[6]_i_3_n_0 ),
        .Q(addr_cnt_enb_r[6]),
        .R(axi_read_fsm_n_4));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[10] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_41),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[10] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[11] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_40),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[11] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[12] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_39),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[12] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[13] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_38),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[13] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[14] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_37),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[14] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_36),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[15] ),
        .R(s_aresetn_a_c));
  CARRY4 \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_i_2 
       (.CI(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_36_n_0 ),
        .CO({\NLW_gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_i_2_CO_UNCONNECTED [3:1],\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_i_2_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[15]_i_2_O_UNCONNECTED [3:2],bmg_address_inc_c[15:14]}),
        .S({1'b0,1'b0,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[15] ,\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[14] }));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[2] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_49),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[2] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[3] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_48),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[3] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[4] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_47),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[4] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[5] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_46),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[5] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[6] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_45),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[6] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[7] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_44),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[7] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[8] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_43),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[8] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg[9] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_42),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.bmg_address_r_reg_n_0_[9] ),
        .R(s_aresetn_a_c));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1 
       (.I0(s_axi_arburst[1]),
        .I1(s_axi_arburst[0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.incr_en_r_reg 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_19),
        .D(\gaxi_full_sm.gaxifull_mem_slave.incr_en_r_i_1_n_0 ),
        .Q(incr_en_r),
        .R(s_aresetn_a_c));
  LUT2 #(
    .INIT(4'h1)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[2]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[1]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'hFFF0F5F7)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5 
       (.I0(s_axi_araddr[1]),
        .I1(s_axi_araddr[0]),
        .I2(s_axi_arsize[2]),
        .I3(s_axi_arsize[0]),
        .I4(s_axi_arsize[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.next_address_r[2]_i_5_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[0] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_18),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[0] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[1] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_17),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg_n_0_[1] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.next_address_r_reg[2] 
       (.C(s_aclk),
        .CE(p_2_out),
        .D(axi_read_fsm_n_16),
        .Q(p_0_in),
        .R(s_aresetn_a_c));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1 
       (.I0(s_axi_arsize[2]),
        .I1(s_axi_arsize[1]),
        .I2(s_axi_arsize[0]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1 
       (.I0(s_axi_arsize[0]),
        .I1(s_axi_arsize[2]),
        .I2(s_axi_arsize[1]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_2 
       (.I0(s_axi_arsize[1]),
        .I1(s_axi_arsize[0]),
        .I2(s_axi_arsize[2]),
        .O(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[0] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_19),
        .D(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[0]_i_1_n_0 ),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[0] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[1] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_19),
        .D(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[1]_i_1_n_0 ),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[1] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_19),
        .D(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r[2]_i_2_n_0 ),
        .Q(\gaxi_full_sm.gaxifull_mem_slave.num_of_bytes_r_reg_n_0_[2] ),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[0] 
       (.C(s_aclk),
        .CE(E),
        .D(axi_read_fsm_n_34),
        .Q(s_axi_rid[0]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[1] 
       (.C(s_aclk),
        .CE(E),
        .D(axi_read_fsm_n_33),
        .Q(s_axi_rid[1]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[2] 
       (.C(s_aclk),
        .CE(E),
        .D(axi_read_fsm_n_32),
        .Q(s_axi_rid[2]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \grid.S_AXI_RID_reg[3] 
       (.C(s_aclk),
        .CE(E),
        .D(axi_read_fsm_n_31),
        .Q(s_axi_rid[3]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \grid.ar_id_r_reg[0] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_19),
        .D(s_axi_arid[0]),
        .Q(ar_id_r[0]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \grid.ar_id_r_reg[1] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_19),
        .D(s_axi_arid[1]),
        .Q(ar_id_r[1]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \grid.ar_id_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_19),
        .D(s_axi_arid[2]),
        .Q(ar_id_r[2]),
        .R(s_aresetn_a_c));
  FDRE #(
    .INIT(1'b0)) 
    \grid.ar_id_r_reg[3] 
       (.C(s_aclk),
        .CE(axi_read_fsm_n_19),
        .D(s_axi_arid[3]),
        .Q(ar_id_r[3]),
        .R(s_aresetn_a_c));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm
   (s_axi_awready,
    s_axi_wready,
    \s_axi_awburst[1] ,
    addr_en_c,
    \gaxif_wlast_gen.awlen_cntr_r_reg[5] ,
    E,
    \FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ,
    \s_axi_awburst[1]_0 ,
    D,
    \s_axi_awlen[7] ,
    \gaxif_wlast_gen.awlen_cntr_r_reg[3] ,
    \s_axi_awaddr[15] ,
    p_0_in1_out,
    bvalid_c,
    ENA_I,
    ENA_I_0,
    ENA_I_1,
    ENA_I_2,
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ,
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 ,
    SR,
    s_aclk,
    s_axi_awburst,
    s_aresetn,
    s_axi_wvalid,
    \gaxif_ms_addr_gen.bmg_address_r_reg[2] ,
    Q,
    \gaxif_ms_addr_gen.next_address_r_reg[2] ,
    s_axi_awaddr,
    s_axi_awlen,
    \gaxif_wlast_gen.awlen_cntr_r_reg[7] ,
    \gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 ,
    \gaxif_ms_addr_gen.bmg_address_r_reg[15] ,
    \gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ,
    p_1_in__0,
    \gaxif_ms_addr_gen.bmg_address_r_reg[6] ,
    \gaxif_ms_addr_gen.incr_en_r_reg ,
    s_axi_awvalid,
    s_axi_bready,
    \gaxi_full_sm.aw_ready_r_reg_0 ,
    \gaxi_full_sm.aw_ready_r_reg_1 ,
    ENA_dly_D,
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] );
  output s_axi_awready;
  output s_axi_wready;
  output [0:0]\s_axi_awburst[1] ;
  output addr_en_c;
  output \gaxif_wlast_gen.awlen_cntr_r_reg[5] ;
  output [0:0]E;
  output [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ;
  output [0:0]\s_axi_awburst[1]_0 ;
  output [2:0]D;
  output [7:0]\s_axi_awlen[7] ;
  output \gaxif_wlast_gen.awlen_cntr_r_reg[3] ;
  output [13:0]\s_axi_awaddr[15] ;
  output p_0_in1_out;
  output bvalid_c;
  output ENA_I;
  output ENA_I_0;
  output ENA_I_1;
  output ENA_I_2;
  output \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ;
  output \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 ;
  input [0:0]SR;
  input s_aclk;
  input [1:0]s_axi_awburst;
  input s_aresetn;
  input s_axi_wvalid;
  input \gaxif_ms_addr_gen.bmg_address_r_reg[2] ;
  input [2:0]Q;
  input [1:0]\gaxif_ms_addr_gen.next_address_r_reg[2] ;
  input [15:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [7:0]\gaxif_wlast_gen.awlen_cntr_r_reg[7] ;
  input \gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 ;
  input [13:0]\gaxif_ms_addr_gen.bmg_address_r_reg[15] ;
  input \gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ;
  input [13:0]p_1_in__0;
  input [4:0]\gaxif_ms_addr_gen.bmg_address_r_reg[6] ;
  input \gaxif_ms_addr_gen.incr_en_r_reg ;
  input s_axi_awvalid;
  input s_axi_bready;
  input \gaxi_full_sm.aw_ready_r_reg_0 ;
  input \gaxi_full_sm.aw_ready_r_reg_1 ;
  input ENA_dly_D;
  input [1:0]\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] ;

  wire [2:0]D;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3_n_0 ;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_I_0;
  wire ENA_I_1;
  wire ENA_I_2;
  wire ENA_dly_D;
  wire \FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0 ;
  wire \FSM_sequential_gaxi_full_sm.present_state[0]_i_4_n_0 ;
  wire [0:0]\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ;
  wire [2:0]Q;
  wire [0:0]SR;
  wire addr_en_c;
  wire aw_ready_c;
  wire bvalid_c;
  wire \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ;
  wire \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 ;
  wire [1:0]\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] ;
  wire \gaxi_full_sm.aw_ready_r_i_3_n_0 ;
  wire \gaxi_full_sm.aw_ready_r_reg_0 ;
  wire \gaxi_full_sm.aw_ready_r_reg_1 ;
  wire [13:0]\gaxif_ms_addr_gen.bmg_address_r_reg[15] ;
  wire \gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ;
  wire \gaxif_ms_addr_gen.bmg_address_r_reg[2] ;
  wire [4:0]\gaxif_ms_addr_gen.bmg_address_r_reg[6] ;
  wire \gaxif_ms_addr_gen.incr_en_r_reg ;
  wire [1:0]\gaxif_ms_addr_gen.next_address_r_reg[2] ;
  wire \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3_n_0 ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[3] ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[5] ;
  wire [7:0]\gaxif_wlast_gen.awlen_cntr_r_reg[7] ;
  wire \gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 ;
  wire [1:0]next_state;
  wire p_0_in1_out;
  wire [13:0]p_1_in__0;
  wire [1:0]present_state;
  wire s_aclk;
  wire s_aresetn;
  wire [15:0]s_axi_awaddr;
  wire [13:0]\s_axi_awaddr[15] ;
  wire [1:0]s_axi_awburst;
  wire [0:0]\s_axi_awburst[1] ;
  wire [0:0]\s_axi_awburst[1]_0 ;
  wire [7:0]s_axi_awlen;
  wire [7:0]\s_axi_awlen[7] ;
  wire s_axi_awready;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire w_ready_c;

  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1 
       (.I0(ENA_dly_D),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3_n_0 ),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [13]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[13]),
        .O(ENA_I));
  LUT5 #(
    .INIT(32'hEAEEEAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__0 
       (.I0(ENA_dly_D),
        .I1(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [13]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[13]),
        .O(ENA_I_0));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__1 
       (.I0(ENA_dly_D),
        .I1(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [13]),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I3(p_1_in__0[13]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3_n_0 ),
        .O(ENA_I_1));
  LUT5 #(
    .INIT(32'hBABFAAAA)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_1__2 
       (.I0(ENA_dly_D),
        .I1(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [13]),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I3(p_1_in__0[13]),
        .I4(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ),
        .O(ENA_I_2));
  LUT6 #(
    .INIT(64'h0000006060600060)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(s_axi_wvalid),
        .I3(p_1_in__0[12]),
        .I4(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I5(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_29_n_0 ));
  LUT6 #(
    .INIT(64'h6060600000006000)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3 
       (.I0(present_state[1]),
        .I1(present_state[0]),
        .I2(s_axi_wvalid),
        .I3(p_1_in__0[12]),
        .I4(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I5(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [12]),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hAAAABABABEAABABA)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_1 
       (.I0(\FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0 ),
        .I1(present_state[1]),
        .I2(present_state[0]),
        .I3(\FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0 ),
        .I4(s_axi_wvalid),
        .I5(\FSM_sequential_gaxi_full_sm.present_state[0]_i_4_n_0 ),
        .O(next_state[0]));
  LUT5 #(
    .INIT(32'h55000030)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_2 
       (.I0(s_axi_bready),
        .I1(s_axi_wvalid),
        .I2(s_axi_awvalid),
        .I3(present_state[1]),
        .I4(present_state[0]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_3 
       (.I0(\gaxif_ms_addr_gen.incr_en_r_reg ),
        .I1(\gaxi_full_sm.aw_ready_r_reg_1 ),
        .I2(\gaxi_full_sm.aw_ready_r_reg_0 ),
        .O(\FSM_sequential_gaxi_full_sm.present_state[0]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFD)) 
    \FSM_sequential_gaxi_full_sm.present_state[0]_i_4 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[3] ),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [7]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [6]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [4]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [5]),
        .O(\FSM_sequential_gaxi_full_sm.present_state[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h00C8F0C80AF8FAF8)) 
    \FSM_sequential_gaxi_full_sm.present_state[1]_i_1 
       (.I0(s_axi_wvalid),
        .I1(s_axi_awvalid),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .I4(s_axi_bready),
        .I5(\gaxi_full_sm.aw_ready_r_i_3_n_0 ),
        .O(next_state[1]));
  (* FSM_ENCODED_STATES = "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_state[0]),
        .Q(present_state[0]),
        .R(SR));
  (* FSM_ENCODED_STATES = "os_wr:01,reg_wraddr:10,wr_mem:11,wait_wraddr:00" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_gaxi_full_sm.present_state_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(next_state[1]),
        .Q(present_state[1]),
        .R(SR));
  LUT2 #(
    .INIT(4'h8)) 
    \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_i_1 
       (.I0(s_axi_awvalid),
        .I1(s_axi_awready),
        .O(p_0_in1_out));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[0]_i_1 
       (.I0(bvalid_c),
        .I1(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] [0]),
        .O(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r[1]_i_1 
       (.I0(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] [0]),
        .I1(bvalid_c),
        .I2(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] [1]),
        .O(\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] ));
  LUT3 #(
    .INIT(8'h14)) 
    \gaxi_bvalid_id_r.bvalid_d1_c_i_1 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .O(bvalid_c));
  LUT5 #(
    .INIT(32'hE8EB282B)) 
    \gaxi_full_sm.aw_ready_r_i_2 
       (.I0(\gaxi_full_sm.aw_ready_r_i_3_n_0 ),
        .I1(present_state[0]),
        .I2(present_state[1]),
        .I3(s_axi_awvalid),
        .I4(s_axi_bready),
        .O(aw_ready_c));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h5455)) 
    \gaxi_full_sm.aw_ready_r_i_3 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I1(\gaxi_full_sm.aw_ready_r_reg_0 ),
        .I2(\gaxi_full_sm.aw_ready_r_reg_1 ),
        .I3(\gaxif_ms_addr_gen.incr_en_r_reg ),
        .O(\gaxi_full_sm.aw_ready_r_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.aw_ready_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(aw_ready_c),
        .Q(s_axi_awready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hBEAA)) 
    \gaxi_full_sm.w_ready_r_i_1 
       (.I0(addr_en_c),
        .I1(present_state[1]),
        .I2(present_state[0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .O(w_ready_c));
  LUT6 #(
    .INIT(64'hFFFEFFFFFFFFFFFF)) 
    \gaxi_full_sm.w_ready_r_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [5]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [4]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [6]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [7]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[3] ),
        .I5(s_axi_wvalid),
        .O(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_full_sm.w_ready_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(w_ready_c),
        .Q(s_axi_wready),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'h00F7FFFF)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_1 
       (.I0(addr_en_c),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I4(s_aresetn),
        .O(\s_axi_awburst[1] ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_2 
       (.I0(addr_en_c),
        .I1(s_axi_awburst[1]),
        .I2(s_axi_awburst[0]),
        .O(\s_axi_awburst[1]_0 ));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[10]_i_1 
       (.I0(s_axi_awaddr[10]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [8]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[8]),
        .O(\s_axi_awaddr[15] [8]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[11]_i_1 
       (.I0(s_axi_awaddr[11]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [9]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[9]),
        .O(\s_axi_awaddr[15] [9]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[12]_i_1 
       (.I0(s_axi_awaddr[12]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [10]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[10]),
        .O(\s_axi_awaddr[15] [10]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[13]_i_1 
       (.I0(s_axi_awaddr[13]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [11]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[11]),
        .O(\s_axi_awaddr[15] [11]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[14]_i_1 
       (.I0(s_axi_awaddr[14]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [12]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[12]),
        .O(\s_axi_awaddr[15] [12]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[15]_i_1 
       (.I0(s_axi_awaddr[15]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [13]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[13]),
        .O(\s_axi_awaddr[15] [13]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[2]_i_1 
       (.I0(s_axi_awaddr[2]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [0]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[6] [0]),
        .I4(p_1_in__0[0]),
        .O(\s_axi_awaddr[15] [0]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[3]_i_1 
       (.I0(s_axi_awaddr[3]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [1]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[6] [1]),
        .I4(p_1_in__0[1]),
        .O(\s_axi_awaddr[15] [1]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[4]_i_1 
       (.I0(s_axi_awaddr[4]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [2]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[6] [2]),
        .I4(p_1_in__0[2]),
        .O(\s_axi_awaddr[15] [2]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[5]_i_1 
       (.I0(s_axi_awaddr[5]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [3]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[6] [3]),
        .I4(p_1_in__0[3]),
        .O(\s_axi_awaddr[15] [3]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[6]_i_1 
       (.I0(s_axi_awaddr[6]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [4]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[6] [4]),
        .I4(p_1_in__0[4]),
        .O(\s_axi_awaddr[15] [4]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[7]_i_1 
       (.I0(s_axi_awaddr[7]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [5]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[5]),
        .O(\s_axi_awaddr[15] [5]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[8]_i_1 
       (.I0(s_axi_awaddr[8]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [6]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[6]),
        .O(\s_axi_awaddr[15] [6]));
  LUT5 #(
    .INIT(32'hB8BBB888)) 
    \gaxif_ms_addr_gen.bmg_address_r[9]_i_1 
       (.I0(s_axi_awaddr[9]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.bmg_address_r_reg[15] [7]),
        .I3(\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 ),
        .I4(p_1_in__0[7]),
        .O(\s_axi_awaddr[15] [7]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \gaxif_ms_addr_gen.next_address_r[0]_i_1 
       (.I0(s_axi_awaddr[0]),
        .I1(addr_en_c),
        .I2(Q[0]),
        .I3(\gaxif_ms_addr_gen.next_address_r_reg[2] [0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hB8888BBB8BBBB888)) 
    \gaxif_ms_addr_gen.next_address_r[1]_i_1 
       (.I0(s_axi_awaddr[1]),
        .I1(addr_en_c),
        .I2(\gaxif_ms_addr_gen.next_address_r_reg[2] [0]),
        .I3(Q[0]),
        .I4(\gaxif_ms_addr_gen.next_address_r_reg[2] [1]),
        .I5(Q[1]),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'hABBA)) 
    \gaxif_ms_addr_gen.next_address_r[2]_i_1 
       (.I0(addr_en_c),
        .I1(\gaxif_ms_addr_gen.bmg_address_r_reg[2] ),
        .I2(present_state[1]),
        .I3(present_state[0]),
        .O(\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 ));
  LUT6 #(
    .INIT(64'h00000000077FF880)) 
    \gaxif_ms_addr_gen.next_address_r[2]_i_2 
       (.I0(Q[0]),
        .I1(\gaxif_ms_addr_gen.next_address_r_reg[2] [0]),
        .I2(Q[1]),
        .I3(\gaxif_ms_addr_gen.next_address_r_reg[2] [1]),
        .I4(Q[2]),
        .I5(addr_en_c),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h0000000075770000)) 
    \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_1 
       (.I0(present_state[1]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[5] ),
        .I2(\gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3_n_0 ),
        .I3(\gaxif_ms_addr_gen.incr_en_r_reg ),
        .I4(s_axi_awvalid),
        .I5(present_state[0]),
        .O(addr_en_c));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3 
       (.I0(\gaxi_full_sm.aw_ready_r_reg_0 ),
        .I1(\gaxi_full_sm.aw_ready_r_reg_1 ),
        .O(\gaxif_ms_addr_gen.num_of_bytes_r[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h8B)) 
    \gaxif_wlast_gen.awlen_cntr_r[0]_i_1 
       (.I0(s_axi_awlen[0]),
        .I1(addr_en_c),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .O(\s_axi_awlen[7] [0]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT4 #(
    .INIT(16'hB88B)) 
    \gaxif_wlast_gen.awlen_cntr_r[1]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(addr_en_c),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [1]),
        .O(\s_axi_awlen[7] [1]));
  LUT5 #(
    .INIT(32'hBBB8888B)) 
    \gaxif_wlast_gen.awlen_cntr_r[2]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(addr_en_c),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [1]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [2]),
        .O(\s_axi_awlen[7] [2]));
  LUT6 #(
    .INIT(64'hBBBBBBB88888888B)) 
    \gaxif_wlast_gen.awlen_cntr_r[3]_i_1 
       (.I0(s_axi_awlen[3]),
        .I1(addr_en_c),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [2]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [1]),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [3]),
        .O(\s_axi_awlen[7] [3]));
  LUT4 #(
    .INIT(16'h8BB8)) 
    \gaxif_wlast_gen.awlen_cntr_r[4]_i_1 
       (.I0(s_axi_awlen[4]),
        .I1(addr_en_c),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [4]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[3] ),
        .O(\s_axi_awlen[7] [4]));
  LUT5 #(
    .INIT(32'hB8BB8B88)) 
    \gaxif_wlast_gen.awlen_cntr_r[5]_i_1 
       (.I0(s_axi_awlen[5]),
        .I1(addr_en_c),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [4]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[3] ),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [5]),
        .O(\s_axi_awlen[7] [5]));
  LUT6 #(
    .INIT(64'hBBBBB8BB88888B88)) 
    \gaxif_wlast_gen.awlen_cntr_r[6]_i_1 
       (.I0(s_axi_awlen[6]),
        .I1(addr_en_c),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [5]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[3] ),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [4]),
        .I5(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [6]),
        .O(\s_axi_awlen[7] [6]));
  LUT4 #(
    .INIT(16'h0001)) 
    \gaxif_wlast_gen.awlen_cntr_r[6]_i_2 
       (.I0(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [3]),
        .I1(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [0]),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [1]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [2]),
        .O(\gaxif_wlast_gen.awlen_cntr_r_reg[3] ));
  LUT5 #(
    .INIT(32'hF6F0FFF0)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_1 
       (.I0(present_state[0]),
        .I1(present_state[1]),
        .I2(addr_en_c),
        .I3(s_axi_wvalid),
        .I4(\FSM_sequential_gaxi_full_sm.present_state[0]_i_4_n_0 ),
        .O(E));
  LUT5 #(
    .INIT(32'hB8B8B88B)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_2 
       (.I0(s_axi_awlen[7]),
        .I1(addr_en_c),
        .I2(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [7]),
        .I3(\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 ),
        .I4(\gaxif_wlast_gen.awlen_cntr_r_reg[7] [6]),
        .O(\s_axi_awlen[7] [7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper
   (s_axi_awready,
    s_axi_wready,
    \gaxi_bvalid_id_r.bvalid_r_reg_0 ,
    ENA_I,
    ENA_I_0,
    ENA_I_1,
    ENA_I_2,
    ADDRARDADDR,
    s_axi_bid,
    SR,
    s_aclk,
    s_axi_awburst,
    s_aresetn,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_wvalid,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_bready,
    ENA_dly_D,
    s_axi_awid);
  output s_axi_awready;
  output s_axi_wready;
  output \gaxi_bvalid_id_r.bvalid_r_reg_0 ;
  output ENA_I;
  output ENA_I_0;
  output ENA_I_1;
  output ENA_I_2;
  output [11:0]ADDRARDADDR;
  output [3:0]s_axi_bid;
  input [0:0]SR;
  input s_aclk;
  input [1:0]s_axi_awburst;
  input s_aresetn;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input s_axi_wvalid;
  input [15:0]s_axi_awaddr;
  input s_axi_awvalid;
  input s_axi_bready;
  input ENA_dly_D;
  input [3:0]s_axi_awid;

  wire [11:0]ADDRARDADDR;
  wire [1:0]CONV_INTEGER;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_2 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_3 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_39_n_0 ;
  wire ENA_I;
  wire ENA_I_0;
  wire ENA_I_1;
  wire ENA_I_2;
  wire ENA_dly_D;
  wire [0:0]SR;
  wire [3:0]S_AXI_BID0;
  wire addr_cnt_enb1;
  wire addr_en_c;
  wire [7:0]awlen_cntr_r;
  wire axi_wr_fsm_n_11;
  wire axi_wr_fsm_n_12;
  wire axi_wr_fsm_n_13;
  wire axi_wr_fsm_n_14;
  wire axi_wr_fsm_n_15;
  wire axi_wr_fsm_n_16;
  wire axi_wr_fsm_n_17;
  wire axi_wr_fsm_n_18;
  wire axi_wr_fsm_n_19;
  wire axi_wr_fsm_n_2;
  wire axi_wr_fsm_n_20;
  wire axi_wr_fsm_n_21;
  wire axi_wr_fsm_n_22;
  wire axi_wr_fsm_n_23;
  wire axi_wr_fsm_n_24;
  wire axi_wr_fsm_n_25;
  wire axi_wr_fsm_n_26;
  wire axi_wr_fsm_n_27;
  wire axi_wr_fsm_n_28;
  wire axi_wr_fsm_n_29;
  wire axi_wr_fsm_n_30;
  wire axi_wr_fsm_n_31;
  wire axi_wr_fsm_n_32;
  wire axi_wr_fsm_n_33;
  wire axi_wr_fsm_n_4;
  wire axi_wr_fsm_n_40;
  wire axi_wr_fsm_n_41;
  wire axi_wr_fsm_n_5;
  wire axi_wr_fsm_n_6;
  wire [15:2]bmg_address_r;
  wire bvalid_c;
  wire \bvalid_count_r[0]_i_1_n_0 ;
  wire \bvalid_count_r[1]_i_1_n_0 ;
  wire \bvalid_count_r[2]_i_1_n_0 ;
  wire \bvalid_count_r_reg_n_0_[0] ;
  wire \bvalid_count_r_reg_n_0_[1] ;
  wire \bvalid_count_r_reg_n_0_[2] ;
  wire bvalid_d1_c;
  wire [1:0]bvalid_rd_cnt_r;
  wire [1:0]bvalid_wr_cnt_r;
  wire \gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ;
  wire \gaxi_bvalid_id_r.bvalid_r_reg_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[13]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0 ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5] ;
  wire \gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6] ;
  wire \gaxif_ms_addr_gen.next_address_r[2]_i_3_n_0 ;
  wire \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0] ;
  wire \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1] ;
  wire \gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2] ;
  wire \gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0 ;
  wire incr_en_r;
  wire incr_en_r0;
  wire [2:0]next_address_r;
  wire [2:0]num_of_bytes_c;
  wire p_0_in1_out;
  wire p_0_in2_in;
  wire [1:0]p_1_in;
  wire [15:2]p_1_in__0;
  wire s_aclk;
  wire s_aresetn;
  wire [15:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_wready;
  wire s_axi_wvalid;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_CO_UNCONNECTED ;
  wire [3:2]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_O_UNCONNECTED ;
  wire [1:0]\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOC_UNCONNECTED ;
  wire [1:0]\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOD_UNCONNECTED ;

  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_10 
       (.I0(bmg_address_r[7]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .I2(p_1_in__0[7]),
        .O(ADDRARDADDR[5]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_11 
       (.I0(bmg_address_r[6]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6] ),
        .I2(p_1_in__0[6]),
        .O(ADDRARDADDR[4]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_12 
       (.I0(bmg_address_r[5]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5] ),
        .I2(p_1_in__0[5]),
        .O(ADDRARDADDR[3]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_13 
       (.I0(bmg_address_r[4]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4] ),
        .I2(p_1_in__0[4]),
        .O(ADDRARDADDR[2]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_14 
       (.I0(bmg_address_r[3]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3] ),
        .I2(p_1_in__0[3]),
        .O(ADDRARDADDR[1]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_15 
       (.I0(bmg_address_r[2]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2] ),
        .I2(p_1_in__0[2]),
        .O(ADDRARDADDR[0]));
  CARRY4 \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28 
       (.CI(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0 ),
        .CO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_CO_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_28_O_UNCONNECTED [3:2],p_1_in__0[15:14]}),
        .S({1'b0,1'b0,bmg_address_r[15:14]}));
  CARRY4 \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32 
       (.CI(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ),
        .CO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_32_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in__0[13:10]),
        .S(bmg_address_r[13:10]));
  CARRY4 \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33 
       (.CI(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_0 ),
        .CO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_33_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(p_1_in__0[9:6]),
        .S(bmg_address_r[9:6]));
  CARRY4 \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34 
       (.CI(1'b0),
        .CO({\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_0 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_1 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_2 ,\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_34_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,bmg_address_r[2]}),
        .O(p_1_in__0[5:2]),
        .S({bmg_address_r[5:3],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_39_n_0 }));
  LUT3 #(
    .INIT(8'h6A)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_39 
       (.I0(bmg_address_r[2]),
        .I1(incr_en_r),
        .I2(p_0_in2_in),
        .O(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_39_n_0 ));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_4 
       (.I0(bmg_address_r[13]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .I2(p_1_in__0[13]),
        .O(ADDRARDADDR[11]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_5 
       (.I0(bmg_address_r[12]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .I2(p_1_in__0[12]),
        .O(ADDRARDADDR[10]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_6 
       (.I0(bmg_address_r[11]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .I2(p_1_in__0[11]),
        .O(ADDRARDADDR[9]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_7 
       (.I0(bmg_address_r[10]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .I2(p_1_in__0[10]),
        .O(ADDRARDADDR[8]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_8 
       (.I0(bmg_address_r[9]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .I2(p_1_in__0[9]),
        .O(ADDRARDADDR[7]));
  LUT3 #(
    .INIT(8'hB8)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_9 
       (.I0(bmg_address_r[8]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .I2(p_1_in__0[8]),
        .O(ADDRARDADDR[6]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_fsm axi_wr_fsm
       (.D(next_address_r),
        .E(axi_wr_fsm_n_5),
        .ENA_I(ENA_I),
        .ENA_I_0(ENA_I_0),
        .ENA_I_1(ENA_I_1),
        .ENA_I_2(ENA_I_2),
        .ENA_dly_D(ENA_dly_D),
        .\FSM_sequential_gaxi_full_sm.present_state_reg[1]_0 (axi_wr_fsm_n_6),
        .Q({\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2] ,\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1] ,\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0] }),
        .SR(SR),
        .addr_en_c(addr_en_c),
        .bvalid_c(bvalid_c),
        .\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] (axi_wr_fsm_n_40),
        .\gaxi_bid_gen.bvalid_wr_cnt_r_reg[0]_0 (axi_wr_fsm_n_41),
        .\gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] (bvalid_wr_cnt_r),
        .\gaxi_full_sm.aw_ready_r_reg_0 (\bvalid_count_r_reg_n_0_[2] ),
        .\gaxi_full_sm.aw_ready_r_reg_1 (\bvalid_count_r_reg_n_0_[1] ),
        .\gaxif_ms_addr_gen.bmg_address_r_reg[15] (bmg_address_r),
        .\gaxif_ms_addr_gen.bmg_address_r_reg[15]_0 (\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .\gaxif_ms_addr_gen.bmg_address_r_reg[2] (\gaxif_ms_addr_gen.next_address_r[2]_i_3_n_0 ),
        .\gaxif_ms_addr_gen.bmg_address_r_reg[6] ({\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6] ,\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5] ,\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4] ,\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3] ,\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2] }),
        .\gaxif_ms_addr_gen.incr_en_r_reg (\bvalid_count_r_reg_n_0_[0] ),
        .\gaxif_ms_addr_gen.next_address_r_reg[2] (p_1_in),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[3] (axi_wr_fsm_n_19),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[5] (axi_wr_fsm_n_4),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[7] (awlen_cntr_r),
        .\gaxif_wlast_gen.awlen_cntr_r_reg[7]_0 (\gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0 ),
        .p_0_in1_out(p_0_in1_out),
        .p_1_in__0(p_1_in__0),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[15] ({axi_wr_fsm_n_20,axi_wr_fsm_n_21,axi_wr_fsm_n_22,axi_wr_fsm_n_23,axi_wr_fsm_n_24,axi_wr_fsm_n_25,axi_wr_fsm_n_26,axi_wr_fsm_n_27,axi_wr_fsm_n_28,axi_wr_fsm_n_29,axi_wr_fsm_n_30,axi_wr_fsm_n_31,axi_wr_fsm_n_32,axi_wr_fsm_n_33}),
        .s_axi_awburst(s_axi_awburst),
        .\s_axi_awburst[1] (axi_wr_fsm_n_2),
        .\s_axi_awburst[1]_0 (addr_cnt_enb1),
        .s_axi_awlen(s_axi_awlen),
        .\s_axi_awlen[7] ({axi_wr_fsm_n_11,axi_wr_fsm_n_12,axi_wr_fsm_n_13,axi_wr_fsm_n_14,axi_wr_fsm_n_15,axi_wr_fsm_n_16,axi_wr_fsm_n_17,axi_wr_fsm_n_18}),
        .s_axi_awready(s_axi_awready),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
  LUT6 #(
    .INIT(64'hF0000FFF0FFFE000)) 
    \bvalid_count_r[0]_i_1 
       (.I0(\bvalid_count_r_reg_n_0_[1] ),
        .I1(\bvalid_count_r_reg_n_0_[2] ),
        .I2(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I3(s_axi_bready),
        .I4(bvalid_c),
        .I5(\bvalid_count_r_reg_n_0_[0] ),
        .O(\bvalid_count_r[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD5D52A2ABFBF4000)) 
    \bvalid_count_r[1]_i_1 
       (.I0(bvalid_c),
        .I1(s_axi_bready),
        .I2(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I3(\bvalid_count_r_reg_n_0_[2] ),
        .I4(\bvalid_count_r_reg_n_0_[1] ),
        .I5(\bvalid_count_r_reg_n_0_[0] ),
        .O(\bvalid_count_r[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hD52AFF00FF00BF00)) 
    \bvalid_count_r[2]_i_1 
       (.I0(bvalid_c),
        .I1(s_axi_bready),
        .I2(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I3(\bvalid_count_r_reg_n_0_[2] ),
        .I4(\bvalid_count_r_reg_n_0_[1] ),
        .I5(\bvalid_count_r_reg_n_0_[0] ),
        .O(\bvalid_count_r[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\bvalid_count_r[0]_i_1_n_0 ),
        .Q(\bvalid_count_r_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\bvalid_count_r[1]_i_1_n_0 ),
        .Q(\bvalid_count_r_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \bvalid_count_r_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\bvalid_count_r[2]_i_1_n_0 ),
        .Q(\bvalid_count_r_reg_n_0_[2] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[0] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(S_AXI_BID0[0]),
        .Q(s_axi_bid[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[1] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(S_AXI_BID0[1]),
        .Q(s_axi_bid[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[2] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(S_AXI_BID0[2]),
        .Q(s_axi_bid[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.S_AXI_BID_reg[3] 
       (.C(s_aclk),
        .CE(s_aresetn),
        .D(S_AXI_BID0[3]),
        .Q(s_axi_bid[3]),
        .R(1'b0));
  (* METHODOLOGY_DRC_VIOS = "" *) 
  (* RTL_RAM_BITS = "16" *) 
  (* RTL_RAM_NAME = "inst_blk_mem_gen/gnbram.gaxibmg.axi_wr_fsm/gaxi_bid_gen.axi_bid_array" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "3" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "3" *) 
  RAM32M #(
    .INIT_A(64'h0000000000000000),
    .INIT_B(64'h0000000000000000),
    .INIT_C(64'h0000000000000000),
    .INIT_D(64'h0000000000000000)) 
    \gaxi_bid_gen.axi_bid_array_reg_0_3_0_3 
       (.ADDRA({1'b0,1'b0,1'b0,CONV_INTEGER}),
        .ADDRB({1'b0,1'b0,1'b0,CONV_INTEGER}),
        .ADDRC({1'b0,1'b0,1'b0,CONV_INTEGER}),
        .ADDRD({1'b0,1'b0,1'b0,bvalid_wr_cnt_r}),
        .DIA(s_axi_awid[1:0]),
        .DIB(s_axi_awid[3:2]),
        .DIC({1'b0,1'b0}),
        .DID({1'b0,1'b0}),
        .DOA(S_AXI_BID0[1:0]),
        .DOB(S_AXI_BID0[3:2]),
        .DOC(\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOC_UNCONNECTED [1:0]),
        .DOD(\NLW_gaxi_bid_gen.axi_bid_array_reg_0_3_0_3_DOD_UNCONNECTED [1:0]),
        .WCLK(s_aclk),
        .WE(p_0_in1_out));
  LUT3 #(
    .INIT(8'h6A)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r[0]_i_1 
       (.I0(bvalid_rd_cnt_r[0]),
        .I1(s_axi_bready),
        .I2(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .O(CONV_INTEGER[0]));
  LUT4 #(
    .INIT(16'h6AAA)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r[1]_i_1 
       (.I0(bvalid_rd_cnt_r[1]),
        .I1(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .I2(s_axi_bready),
        .I3(bvalid_rd_cnt_r[0]),
        .O(CONV_INTEGER[1]));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(CONV_INTEGER[0]),
        .Q(bvalid_rd_cnt_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_rd_cnt_r_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(CONV_INTEGER[1]),
        .Q(bvalid_rd_cnt_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(axi_wr_fsm_n_41),
        .Q(bvalid_wr_cnt_r[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bid_gen.bvalid_wr_cnt_r_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(axi_wr_fsm_n_40),
        .Q(bvalid_wr_cnt_r[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bvalid_id_r.bvalid_d1_c_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(bvalid_c),
        .Q(bvalid_d1_c),
        .R(SR));
  LUT5 #(
    .INIT(32'hFEFFAAAA)) 
    \gaxi_bvalid_id_r.bvalid_r_i_1 
       (.I0(bvalid_d1_c),
        .I1(\bvalid_count_r_reg_n_0_[2] ),
        .I2(\bvalid_count_r_reg_n_0_[1] ),
        .I3(s_axi_bready),
        .I4(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .O(\gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxi_bvalid_id_r.bvalid_r_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxi_bvalid_id_r.bvalid_r_i_1_n_0 ),
        .Q(\gaxi_bvalid_id_r.bvalid_r_reg_0 ),
        .R(SR));
  LUT5 #(
    .INIT(32'hFF404040)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[13]_i_1 
       (.I0(s_axi_awburst[0]),
        .I1(s_axi_awburst[1]),
        .I2(addr_en_c),
        .I3(axi_wr_fsm_n_4),
        .I4(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000111)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1 
       (.I0(s_axi_awlen[2]),
        .I1(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0 ),
        .I2(s_axi_awsize[0]),
        .I3(s_axi_awlen[1]),
        .I4(s_axi_awsize[2]),
        .I5(s_axi_awsize[1]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0001000300000013)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[1]),
        .I3(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0 ),
        .I4(s_axi_awlen[2]),
        .I5(s_axi_awlen[1]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h00011111050F111F)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1 
       (.I0(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0 ),
        .I1(s_axi_awlen[2]),
        .I2(s_axi_awsize[2]),
        .I3(s_axi_awsize[0]),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awsize[1]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000F002F000FFFFF)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1 
       (.I0(s_axi_awlen[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awlen[2]),
        .I3(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0 ),
        .I4(s_axi_awsize[2]),
        .I5(s_axi_awsize[1]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h15FF151515FF15FF)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3 
       (.I0(s_axi_awsize[2]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[1]),
        .I3(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0 ),
        .I4(s_axi_awlen[1]),
        .I5(s_axi_awlen[2]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFEFF)) 
    \gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4 
       (.I0(s_axi_awlen[7]),
        .I1(s_axi_awlen[6]),
        .I2(s_axi_awlen[5]),
        .I3(s_axi_awlen[0]),
        .I4(s_axi_awlen[3]),
        .I5(s_axi_awlen[4]),
        .O(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[13] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[13]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[13] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[2] 
       (.C(s_aclk),
        .CE(addr_cnt_enb1),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[2]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[2] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[3] 
       (.C(s_aclk),
        .CE(addr_cnt_enb1),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[3]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[3] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[4] 
       (.C(s_aclk),
        .CE(addr_cnt_enb1),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[4]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[4] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[5] 
       (.C(s_aclk),
        .CE(addr_cnt_enb1),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[5]_i_1_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[5] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.addr_cnt_enb_reg[6] 
       (.C(s_aclk),
        .CE(addr_cnt_enb1),
        .D(\gaxif_ms_addr_gen.addr_cnt_enb[6]_i_3_n_0 ),
        .Q(\gaxif_ms_addr_gen.addr_cnt_enb_reg_n_0_[6] ),
        .R(axi_wr_fsm_n_2));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[10] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_25),
        .Q(bmg_address_r[10]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[11] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_24),
        .Q(bmg_address_r[11]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[12] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_23),
        .Q(bmg_address_r[12]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[13] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_22),
        .Q(bmg_address_r[13]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[14] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_21),
        .Q(bmg_address_r[14]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[15] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_20),
        .Q(bmg_address_r[15]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_33),
        .Q(bmg_address_r[2]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[3] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_32),
        .Q(bmg_address_r[3]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[4] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_31),
        .Q(bmg_address_r[4]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[5] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_30),
        .Q(bmg_address_r[5]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[6] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_29),
        .Q(bmg_address_r[6]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[7] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_28),
        .Q(bmg_address_r[7]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[8] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_27),
        .Q(bmg_address_r[8]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.bmg_address_r_reg[9] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(axi_wr_fsm_n_26),
        .Q(bmg_address_r[9]),
        .R(SR));
  LUT2 #(
    .INIT(4'hE)) 
    \gaxif_ms_addr_gen.incr_en_r_i_1 
       (.I0(s_axi_awburst[1]),
        .I1(s_axi_awburst[0]),
        .O(incr_en_r0));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.incr_en_r_reg 
       (.C(s_aclk),
        .CE(addr_en_c),
        .D(incr_en_r0),
        .Q(incr_en_r),
        .R(SR));
  LUT6 #(
    .INIT(64'h5555555755555555)) 
    \gaxif_ms_addr_gen.next_address_r[2]_i_3 
       (.I0(s_axi_wvalid),
        .I1(awlen_cntr_r[5]),
        .I2(awlen_cntr_r[4]),
        .I3(awlen_cntr_r[6]),
        .I4(awlen_cntr_r[7]),
        .I5(axi_wr_fsm_n_19),
        .O(\gaxif_ms_addr_gen.next_address_r[2]_i_3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.next_address_r_reg[0] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(next_address_r[0]),
        .Q(p_1_in[0]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.next_address_r_reg[1] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(next_address_r[1]),
        .Q(p_1_in[1]),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.next_address_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_6),
        .D(next_address_r[2]),
        .Q(p_0_in2_in),
        .R(SR));
  LUT3 #(
    .INIT(8'h01)) 
    \gaxif_ms_addr_gen.num_of_bytes_r[0]_i_1 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[2]),
        .I2(s_axi_awsize[0]),
        .O(num_of_bytes_c[0]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gaxif_ms_addr_gen.num_of_bytes_r[1]_i_1 
       (.I0(s_axi_awsize[0]),
        .I1(s_axi_awsize[1]),
        .I2(s_axi_awsize[2]),
        .O(num_of_bytes_c[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \gaxif_ms_addr_gen.num_of_bytes_r[2]_i_2 
       (.I0(s_axi_awsize[1]),
        .I1(s_axi_awsize[0]),
        .I2(s_axi_awsize[2]),
        .O(num_of_bytes_c[2]));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.num_of_bytes_r_reg[0] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .D(num_of_bytes_c[0]),
        .Q(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[0] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.num_of_bytes_r_reg[1] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .D(num_of_bytes_c[1]),
        .Q(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[1] ),
        .R(SR));
  FDRE #(
    .INIT(1'b0)) 
    \gaxif_ms_addr_gen.num_of_bytes_r_reg[2] 
       (.C(s_aclk),
        .CE(addr_en_c),
        .D(num_of_bytes_c[2]),
        .Q(\gaxif_ms_addr_gen.num_of_bytes_r_reg_n_0_[2] ),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gaxif_wlast_gen.awlen_cntr_r[7]_i_3 
       (.I0(awlen_cntr_r[5]),
        .I1(awlen_cntr_r[3]),
        .I2(awlen_cntr_r[0]),
        .I3(awlen_cntr_r[1]),
        .I4(awlen_cntr_r[2]),
        .I5(awlen_cntr_r[4]),
        .O(\gaxif_wlast_gen.awlen_cntr_r[7]_i_3_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[0] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_5),
        .D(axi_wr_fsm_n_18),
        .Q(awlen_cntr_r[0]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[1] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_5),
        .D(axi_wr_fsm_n_17),
        .Q(awlen_cntr_r[1]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[2] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_5),
        .D(axi_wr_fsm_n_16),
        .Q(awlen_cntr_r[2]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[3] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_5),
        .D(axi_wr_fsm_n_15),
        .Q(awlen_cntr_r[3]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[4] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_5),
        .D(axi_wr_fsm_n_14),
        .Q(awlen_cntr_r[4]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[5] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_5),
        .D(axi_wr_fsm_n_13),
        .Q(awlen_cntr_r[5]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[6] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_5),
        .D(axi_wr_fsm_n_12),
        .Q(awlen_cntr_r[6]),
        .S(SR));
  FDSE #(
    .INIT(1'b1)) 
    \gaxif_wlast_gen.awlen_cntr_r_reg[7] 
       (.C(s_aclk),
        .CE(axi_wr_fsm_n_5),
        .D(axi_wr_fsm_n_11),
        .Q(awlen_cntr_r[7]),
        .S(SR));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr
   (ENA_dly_D,
    ENB_dly_D,
    rsta_busy,
    rstb_busy,
    s_axi_rdata,
    s_aclk,
    ENA_I,
    ENB_I,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    ENA_I_0,
    ENB_I_1,
    ENA_I_2,
    ENB_I_3,
    ENA_I_4,
    ENB_I_5,
    s_aresetn,
    ADDRB,
    E);
  output ENA_dly_D;
  output ENB_dly_D;
  output rsta_busy;
  output rstb_busy;
  output [31:0]s_axi_rdata;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input ENA_I_0;
  input ENB_I_1;
  input ENA_I_2;
  input ENB_I_3;
  input ENA_I_4;
  input ENB_I_5;
  input s_aresetn;
  input [1:0]ADDRB;
  input [0:0]E;

  wire [11:0]ADDRARDADDR;
  wire [1:0]ADDRB;
  wire [11:0]ADDRBWRADDR;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_I_0;
  wire ENA_I_2;
  wire ENA_I_4;
  wire ENA_dly;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_I_1;
  wire ENB_I_3;
  wire ENB_I_5;
  wire ENB_dly;
  wire ENB_dly_D;
  wire POR_A;
  wire [7:0]ram_doutb;
  wire ram_rstram_b;
  wire \ramloop[10].ram.r_n_0 ;
  wire \ramloop[10].ram.r_n_1 ;
  wire \ramloop[10].ram.r_n_2 ;
  wire \ramloop[10].ram.r_n_3 ;
  wire \ramloop[10].ram.r_n_4 ;
  wire \ramloop[10].ram.r_n_5 ;
  wire \ramloop[10].ram.r_n_6 ;
  wire \ramloop[10].ram.r_n_7 ;
  wire \ramloop[11].ram.r_n_0 ;
  wire \ramloop[11].ram.r_n_1 ;
  wire \ramloop[11].ram.r_n_2 ;
  wire \ramloop[11].ram.r_n_3 ;
  wire \ramloop[11].ram.r_n_4 ;
  wire \ramloop[11].ram.r_n_5 ;
  wire \ramloop[11].ram.r_n_6 ;
  wire \ramloop[11].ram.r_n_7 ;
  wire \ramloop[12].ram.r_n_0 ;
  wire \ramloop[12].ram.r_n_1 ;
  wire \ramloop[12].ram.r_n_2 ;
  wire \ramloop[12].ram.r_n_3 ;
  wire \ramloop[12].ram.r_n_4 ;
  wire \ramloop[12].ram.r_n_5 ;
  wire \ramloop[12].ram.r_n_6 ;
  wire \ramloop[12].ram.r_n_7 ;
  wire \ramloop[13].ram.r_n_0 ;
  wire \ramloop[13].ram.r_n_1 ;
  wire \ramloop[13].ram.r_n_2 ;
  wire \ramloop[13].ram.r_n_3 ;
  wire \ramloop[13].ram.r_n_4 ;
  wire \ramloop[13].ram.r_n_5 ;
  wire \ramloop[13].ram.r_n_6 ;
  wire \ramloop[13].ram.r_n_7 ;
  wire \ramloop[14].ram.r_n_0 ;
  wire \ramloop[14].ram.r_n_1 ;
  wire \ramloop[14].ram.r_n_2 ;
  wire \ramloop[14].ram.r_n_3 ;
  wire \ramloop[14].ram.r_n_4 ;
  wire \ramloop[14].ram.r_n_5 ;
  wire \ramloop[14].ram.r_n_6 ;
  wire \ramloop[14].ram.r_n_7 ;
  wire \ramloop[15].ram.r_n_0 ;
  wire \ramloop[15].ram.r_n_1 ;
  wire \ramloop[15].ram.r_n_2 ;
  wire \ramloop[15].ram.r_n_3 ;
  wire \ramloop[15].ram.r_n_4 ;
  wire \ramloop[15].ram.r_n_5 ;
  wire \ramloop[15].ram.r_n_6 ;
  wire \ramloop[15].ram.r_n_7 ;
  wire \ramloop[1].ram.r_n_0 ;
  wire \ramloop[1].ram.r_n_1 ;
  wire \ramloop[1].ram.r_n_2 ;
  wire \ramloop[1].ram.r_n_3 ;
  wire \ramloop[1].ram.r_n_4 ;
  wire \ramloop[1].ram.r_n_5 ;
  wire \ramloop[1].ram.r_n_6 ;
  wire \ramloop[1].ram.r_n_7 ;
  wire \ramloop[2].ram.r_n_0 ;
  wire \ramloop[2].ram.r_n_1 ;
  wire \ramloop[2].ram.r_n_2 ;
  wire \ramloop[2].ram.r_n_3 ;
  wire \ramloop[2].ram.r_n_4 ;
  wire \ramloop[2].ram.r_n_5 ;
  wire \ramloop[2].ram.r_n_6 ;
  wire \ramloop[2].ram.r_n_7 ;
  wire \ramloop[3].ram.r_n_0 ;
  wire \ramloop[3].ram.r_n_1 ;
  wire \ramloop[3].ram.r_n_2 ;
  wire \ramloop[3].ram.r_n_3 ;
  wire \ramloop[3].ram.r_n_4 ;
  wire \ramloop[3].ram.r_n_5 ;
  wire \ramloop[3].ram.r_n_6 ;
  wire \ramloop[3].ram.r_n_7 ;
  wire \ramloop[4].ram.r_n_0 ;
  wire \ramloop[4].ram.r_n_1 ;
  wire \ramloop[4].ram.r_n_2 ;
  wire \ramloop[4].ram.r_n_3 ;
  wire \ramloop[4].ram.r_n_4 ;
  wire \ramloop[4].ram.r_n_5 ;
  wire \ramloop[4].ram.r_n_6 ;
  wire \ramloop[4].ram.r_n_7 ;
  wire \ramloop[5].ram.r_n_0 ;
  wire \ramloop[5].ram.r_n_1 ;
  wire \ramloop[5].ram.r_n_2 ;
  wire \ramloop[5].ram.r_n_3 ;
  wire \ramloop[5].ram.r_n_4 ;
  wire \ramloop[5].ram.r_n_5 ;
  wire \ramloop[5].ram.r_n_6 ;
  wire \ramloop[5].ram.r_n_7 ;
  wire \ramloop[6].ram.r_n_0 ;
  wire \ramloop[6].ram.r_n_1 ;
  wire \ramloop[6].ram.r_n_2 ;
  wire \ramloop[6].ram.r_n_3 ;
  wire \ramloop[6].ram.r_n_4 ;
  wire \ramloop[6].ram.r_n_5 ;
  wire \ramloop[6].ram.r_n_6 ;
  wire \ramloop[6].ram.r_n_7 ;
  wire \ramloop[7].ram.r_n_0 ;
  wire \ramloop[7].ram.r_n_1 ;
  wire \ramloop[7].ram.r_n_2 ;
  wire \ramloop[7].ram.r_n_3 ;
  wire \ramloop[7].ram.r_n_4 ;
  wire \ramloop[7].ram.r_n_5 ;
  wire \ramloop[7].ram.r_n_6 ;
  wire \ramloop[7].ram.r_n_7 ;
  wire \ramloop[8].ram.r_n_0 ;
  wire \ramloop[8].ram.r_n_1 ;
  wire \ramloop[8].ram.r_n_2 ;
  wire \ramloop[8].ram.r_n_3 ;
  wire \ramloop[8].ram.r_n_4 ;
  wire \ramloop[8].ram.r_n_5 ;
  wire \ramloop[8].ram.r_n_6 ;
  wire \ramloop[8].ram.r_n_7 ;
  wire \ramloop[9].ram.r_n_0 ;
  wire \ramloop[9].ram.r_n_1 ;
  wire \ramloop[9].ram.r_n_2 ;
  wire \ramloop[9].ram.r_n_3 ;
  wire \ramloop[9].ram.r_n_4 ;
  wire \ramloop[9].ram.r_n_5 ;
  wire \ramloop[9].ram.r_n_6 ;
  wire \ramloop[9].ram.r_n_7 ;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux__parameterized0 \has_mux_b.B 
       (.ADDRB(ADDRB),
        .DOBDO({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .E(E),
        .s_aclk(s_aclk),
        .s_axi_rdata(s_axi_rdata),
        .\s_axi_rdata[15] ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .\s_axi_rdata[15]_0 ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .\s_axi_rdata[15]_1 ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .\s_axi_rdata[15]_2 ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .\s_axi_rdata[23] ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .\s_axi_rdata[23]_0 ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .\s_axi_rdata[23]_1 ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .\s_axi_rdata[23]_2 ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .\s_axi_rdata[31] ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .\s_axi_rdata[31]_0 ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .\s_axi_rdata[31]_1 ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .\s_axi_rdata[31]_2 ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .\s_axi_rdata[7] ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .\s_axi_rdata[7]_0 ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .\s_axi_rdata[7]_1 (ram_doutb));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width \ramloop[0].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram (ram_doutb),
        .ENA_I(ENA_I),
        .ENA_dly(ENA_dly),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .s_axi_wstrb(s_axi_wstrb[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9 \ramloop[10].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[10].ram.r_n_0 ,\ramloop[10].ram.r_n_1 ,\ramloop[10].ram.r_n_2 ,\ramloop[10].ram.r_n_3 ,\ramloop[10].ram.r_n_4 ,\ramloop[10].ram.r_n_5 ,\ramloop[10].ram.r_n_6 ,\ramloop[10].ram.r_n_7 }),
        .ENA_I_2(ENA_I_2),
        .ENB_I_3(ENB_I_3),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[23:16]),
        .s_axi_wstrb(s_axi_wstrb[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10 \ramloop[11].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[11].ram.r_n_0 ,\ramloop[11].ram.r_n_1 ,\ramloop[11].ram.r_n_2 ,\ramloop[11].ram.r_n_3 ,\ramloop[11].ram.r_n_4 ,\ramloop[11].ram.r_n_5 ,\ramloop[11].ram.r_n_6 ,\ramloop[11].ram.r_n_7 }),
        .ENA_I_4(ENA_I_4),
        .ENB_I_5(ENB_I_5),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[23:16]),
        .s_axi_wstrb(s_axi_wstrb[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11 \ramloop[12].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[12].ram.r_n_0 ,\ramloop[12].ram.r_n_1 ,\ramloop[12].ram.r_n_2 ,\ramloop[12].ram.r_n_3 ,\ramloop[12].ram.r_n_4 ,\ramloop[12].ram.r_n_5 ,\ramloop[12].ram.r_n_6 ,\ramloop[12].ram.r_n_7 }),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[31:24]),
        .s_axi_wstrb(s_axi_wstrb[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12 \ramloop[13].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[13].ram.r_n_0 ,\ramloop[13].ram.r_n_1 ,\ramloop[13].ram.r_n_2 ,\ramloop[13].ram.r_n_3 ,\ramloop[13].ram.r_n_4 ,\ramloop[13].ram.r_n_5 ,\ramloop[13].ram.r_n_6 ,\ramloop[13].ram.r_n_7 }),
        .ENA_I_0(ENA_I_0),
        .ENB_I_1(ENB_I_1),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[31:24]),
        .s_axi_wstrb(s_axi_wstrb[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13 \ramloop[14].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[14].ram.r_n_0 ,\ramloop[14].ram.r_n_1 ,\ramloop[14].ram.r_n_2 ,\ramloop[14].ram.r_n_3 ,\ramloop[14].ram.r_n_4 ,\ramloop[14].ram.r_n_5 ,\ramloop[14].ram.r_n_6 ,\ramloop[14].ram.r_n_7 }),
        .ENA_I_2(ENA_I_2),
        .ENB_I_3(ENB_I_3),
        .ENB_dly(ENB_dly),
        .ENB_dly_D(ENB_dly_D),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[31:24]),
        .s_axi_wstrb(s_axi_wstrb[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14 \ramloop[15].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[15].ram.r_n_0 ,\ramloop[15].ram.r_n_1 ,\ramloop[15].ram.r_n_2 ,\ramloop[15].ram.r_n_3 ,\ramloop[15].ram.r_n_4 ,\ramloop[15].ram.r_n_5 ,\ramloop[15].ram.r_n_6 ,\ramloop[15].ram.r_n_7 }),
        .ENA_I_4(ENA_I_4),
        .ENA_dly(ENA_dly),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I_5(ENB_I_5),
        .ENB_dly(ENB_dly),
        .ENB_dly_D(ENB_dly_D),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .rsta_busy(rsta_busy),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_wdata(s_axi_wdata[31:24]),
        .s_axi_wstrb(s_axi_wstrb[3]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0 \ramloop[1].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[1].ram.r_n_0 ,\ramloop[1].ram.r_n_1 ,\ramloop[1].ram.r_n_2 ,\ramloop[1].ram.r_n_3 ,\ramloop[1].ram.r_n_4 ,\ramloop[1].ram.r_n_5 ,\ramloop[1].ram.r_n_6 ,\ramloop[1].ram.r_n_7 }),
        .ENA_I_0(ENA_I_0),
        .ENB_I_1(ENB_I_1),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .s_axi_wstrb(s_axi_wstrb[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1 \ramloop[2].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[2].ram.r_n_0 ,\ramloop[2].ram.r_n_1 ,\ramloop[2].ram.r_n_2 ,\ramloop[2].ram.r_n_3 ,\ramloop[2].ram.r_n_4 ,\ramloop[2].ram.r_n_5 ,\ramloop[2].ram.r_n_6 ,\ramloop[2].ram.r_n_7 }),
        .ENA_I_2(ENA_I_2),
        .ENB_I_3(ENB_I_3),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .s_axi_wstrb(s_axi_wstrb[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2 \ramloop[3].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .DOBDO({\ramloop[3].ram.r_n_0 ,\ramloop[3].ram.r_n_1 ,\ramloop[3].ram.r_n_2 ,\ramloop[3].ram.r_n_3 ,\ramloop[3].ram.r_n_4 ,\ramloop[3].ram.r_n_5 ,\ramloop[3].ram.r_n_6 ,\ramloop[3].ram.r_n_7 }),
        .ENA_I_4(ENA_I_4),
        .ENB_I_5(ENB_I_5),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[7:0]),
        .s_axi_wstrb(s_axi_wstrb[0]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3 \ramloop[4].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[4].ram.r_n_0 ,\ramloop[4].ram.r_n_1 ,\ramloop[4].ram.r_n_2 ,\ramloop[4].ram.r_n_3 ,\ramloop[4].ram.r_n_4 ,\ramloop[4].ram.r_n_5 ,\ramloop[4].ram.r_n_6 ,\ramloop[4].ram.r_n_7 }),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[15:8]),
        .s_axi_wstrb(s_axi_wstrb[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4 \ramloop[5].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[5].ram.r_n_0 ,\ramloop[5].ram.r_n_1 ,\ramloop[5].ram.r_n_2 ,\ramloop[5].ram.r_n_3 ,\ramloop[5].ram.r_n_4 ,\ramloop[5].ram.r_n_5 ,\ramloop[5].ram.r_n_6 ,\ramloop[5].ram.r_n_7 }),
        .ENA_I_0(ENA_I_0),
        .ENB_I_1(ENB_I_1),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[15:8]),
        .s_axi_wstrb(s_axi_wstrb[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5 \ramloop[6].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[6].ram.r_n_0 ,\ramloop[6].ram.r_n_1 ,\ramloop[6].ram.r_n_2 ,\ramloop[6].ram.r_n_3 ,\ramloop[6].ram.r_n_4 ,\ramloop[6].ram.r_n_5 ,\ramloop[6].ram.r_n_6 ,\ramloop[6].ram.r_n_7 }),
        .ENA_I_2(ENA_I_2),
        .ENB_I_3(ENB_I_3),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[15:8]),
        .s_axi_wstrb(s_axi_wstrb[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6 \ramloop[7].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[7].ram.r_n_0 ,\ramloop[7].ram.r_n_1 ,\ramloop[7].ram.r_n_2 ,\ramloop[7].ram.r_n_3 ,\ramloop[7].ram.r_n_4 ,\ramloop[7].ram.r_n_5 ,\ramloop[7].ram.r_n_6 ,\ramloop[7].ram.r_n_7 }),
        .ENA_I_4(ENA_I_4),
        .ENB_I_5(ENB_I_5),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[15:8]),
        .s_axi_wstrb(s_axi_wstrb[1]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7 \ramloop[8].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[8].ram.r_n_0 ,\ramloop[8].ram.r_n_1 ,\ramloop[8].ram.r_n_2 ,\ramloop[8].ram.r_n_3 ,\ramloop[8].ram.r_n_4 ,\ramloop[8].ram.r_n_5 ,\ramloop[8].ram.r_n_6 ,\ramloop[8].ram.r_n_7 }),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[23:16]),
        .s_axi_wstrb(s_axi_wstrb[2]));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8 \ramloop[9].ram.r 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ({\ramloop[9].ram.r_n_0 ,\ramloop[9].ram.r_n_1 ,\ramloop[9].ram.r_n_2 ,\ramloop[9].ram.r_n_3 ,\ramloop[9].ram.r_n_4 ,\ramloop[9].ram.r_n_5 ,\ramloop[9].ram.r_n_6 ,\ramloop[9].ram.r_n_7 }),
        .ENA_I_0(ENA_I_0),
        .ENB_I_1(ENB_I_1),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata[23:16]),
        .s_axi_wstrb(s_axi_wstrb[2]));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_mux" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_mux__parameterized0
   (s_axi_rdata,
    ADDRB,
    E,
    s_aclk,
    DOBDO,
    \s_axi_rdata[7] ,
    \s_axi_rdata[7]_0 ,
    \s_axi_rdata[7]_1 ,
    \s_axi_rdata[15] ,
    \s_axi_rdata[15]_0 ,
    \s_axi_rdata[15]_1 ,
    \s_axi_rdata[15]_2 ,
    \s_axi_rdata[23] ,
    \s_axi_rdata[23]_0 ,
    \s_axi_rdata[23]_1 ,
    \s_axi_rdata[23]_2 ,
    \s_axi_rdata[31] ,
    \s_axi_rdata[31]_0 ,
    \s_axi_rdata[31]_1 ,
    \s_axi_rdata[31]_2 );
  output [31:0]s_axi_rdata;
  input [1:0]ADDRB;
  input [0:0]E;
  input s_aclk;
  input [7:0]DOBDO;
  input [7:0]\s_axi_rdata[7] ;
  input [7:0]\s_axi_rdata[7]_0 ;
  input [7:0]\s_axi_rdata[7]_1 ;
  input [7:0]\s_axi_rdata[15] ;
  input [7:0]\s_axi_rdata[15]_0 ;
  input [7:0]\s_axi_rdata[15]_1 ;
  input [7:0]\s_axi_rdata[15]_2 ;
  input [7:0]\s_axi_rdata[23] ;
  input [7:0]\s_axi_rdata[23]_0 ;
  input [7:0]\s_axi_rdata[23]_1 ;
  input [7:0]\s_axi_rdata[23]_2 ;
  input [7:0]\s_axi_rdata[31] ;
  input [7:0]\s_axi_rdata[31]_0 ;
  input [7:0]\s_axi_rdata[31]_1 ;
  input [7:0]\s_axi_rdata[31]_2 ;

  wire [1:0]ADDRB;
  wire [7:0]DOBDO;
  wire [0:0]E;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ;
  wire \no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ;
  wire s_aclk;
  wire [31:0]s_axi_rdata;
  wire [7:0]\s_axi_rdata[15] ;
  wire [7:0]\s_axi_rdata[15]_0 ;
  wire [7:0]\s_axi_rdata[15]_1 ;
  wire [7:0]\s_axi_rdata[15]_2 ;
  wire [7:0]\s_axi_rdata[23] ;
  wire [7:0]\s_axi_rdata[23]_0 ;
  wire [7:0]\s_axi_rdata[23]_1 ;
  wire [7:0]\s_axi_rdata[23]_2 ;
  wire [7:0]\s_axi_rdata[31] ;
  wire [7:0]\s_axi_rdata[31]_0 ;
  wire [7:0]\s_axi_rdata[31]_1 ;
  wire [7:0]\s_axi_rdata[31]_2 ;
  wire [7:0]\s_axi_rdata[7] ;
  wire [7:0]\s_axi_rdata[7]_0 ;
  wire [7:0]\s_axi_rdata[7]_1 ;
  wire [2:1]sel_pipe;

  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1 
       (.I0(ADDRB[0]),
        .I1(E),
        .I2(sel_pipe[1]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1 
       (.I0(ADDRB[1]),
        .I1(E),
        .I2(sel_pipe[2]),
        .O(\no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[1] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[1]_i_1_n_0 ),
        .Q(sel_pipe[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \no_softecc_sel_reg.ce_pri.sel_pipe_reg[2] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\no_softecc_sel_reg.ce_pri.sel_pipe[2]_i_1_n_0 ),
        .Q(sel_pipe[2]),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(DOBDO[0]),
        .I1(\s_axi_rdata[7] [0]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[7]_0 [0]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[7]_1 [0]),
        .O(s_axi_rdata[0]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(\s_axi_rdata[15] [2]),
        .I1(\s_axi_rdata[15]_0 [2]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[15]_1 [2]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[15]_2 [2]),
        .O(s_axi_rdata[10]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(\s_axi_rdata[15] [3]),
        .I1(\s_axi_rdata[15]_0 [3]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[15]_1 [3]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[15]_2 [3]),
        .O(s_axi_rdata[11]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(\s_axi_rdata[15] [4]),
        .I1(\s_axi_rdata[15]_0 [4]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[15]_1 [4]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[15]_2 [4]),
        .O(s_axi_rdata[12]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(\s_axi_rdata[15] [5]),
        .I1(\s_axi_rdata[15]_0 [5]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[15]_1 [5]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[15]_2 [5]),
        .O(s_axi_rdata[13]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(\s_axi_rdata[15] [6]),
        .I1(\s_axi_rdata[15]_0 [6]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[15]_1 [6]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[15]_2 [6]),
        .O(s_axi_rdata[14]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(\s_axi_rdata[15] [7]),
        .I1(\s_axi_rdata[15]_0 [7]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[15]_1 [7]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[15]_2 [7]),
        .O(s_axi_rdata[15]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(\s_axi_rdata[23] [0]),
        .I1(\s_axi_rdata[23]_0 [0]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[23]_1 [0]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[23]_2 [0]),
        .O(s_axi_rdata[16]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(\s_axi_rdata[23] [1]),
        .I1(\s_axi_rdata[23]_0 [1]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[23]_1 [1]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[23]_2 [1]),
        .O(s_axi_rdata[17]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(\s_axi_rdata[23] [2]),
        .I1(\s_axi_rdata[23]_0 [2]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[23]_1 [2]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[23]_2 [2]),
        .O(s_axi_rdata[18]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(\s_axi_rdata[23] [3]),
        .I1(\s_axi_rdata[23]_0 [3]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[23]_1 [3]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[23]_2 [3]),
        .O(s_axi_rdata[19]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(DOBDO[1]),
        .I1(\s_axi_rdata[7] [1]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[7]_0 [1]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[7]_1 [1]),
        .O(s_axi_rdata[1]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(\s_axi_rdata[23] [4]),
        .I1(\s_axi_rdata[23]_0 [4]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[23]_1 [4]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[23]_2 [4]),
        .O(s_axi_rdata[20]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(\s_axi_rdata[23] [5]),
        .I1(\s_axi_rdata[23]_0 [5]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[23]_1 [5]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[23]_2 [5]),
        .O(s_axi_rdata[21]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(\s_axi_rdata[23] [6]),
        .I1(\s_axi_rdata[23]_0 [6]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[23]_1 [6]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[23]_2 [6]),
        .O(s_axi_rdata[22]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(\s_axi_rdata[23] [7]),
        .I1(\s_axi_rdata[23]_0 [7]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[23]_1 [7]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[23]_2 [7]),
        .O(s_axi_rdata[23]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(\s_axi_rdata[31] [0]),
        .I1(\s_axi_rdata[31]_0 [0]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[31]_1 [0]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[31]_2 [0]),
        .O(s_axi_rdata[24]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(\s_axi_rdata[31] [1]),
        .I1(\s_axi_rdata[31]_0 [1]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[31]_1 [1]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[31]_2 [1]),
        .O(s_axi_rdata[25]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(\s_axi_rdata[31] [2]),
        .I1(\s_axi_rdata[31]_0 [2]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[31]_1 [2]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[31]_2 [2]),
        .O(s_axi_rdata[26]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(\s_axi_rdata[31] [3]),
        .I1(\s_axi_rdata[31]_0 [3]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[31]_1 [3]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[31]_2 [3]),
        .O(s_axi_rdata[27]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(\s_axi_rdata[31] [4]),
        .I1(\s_axi_rdata[31]_0 [4]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[31]_1 [4]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[31]_2 [4]),
        .O(s_axi_rdata[28]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(\s_axi_rdata[31] [5]),
        .I1(\s_axi_rdata[31]_0 [5]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[31]_1 [5]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[31]_2 [5]),
        .O(s_axi_rdata[29]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(DOBDO[2]),
        .I1(\s_axi_rdata[7] [2]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[7]_0 [2]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[7]_1 [2]),
        .O(s_axi_rdata[2]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(\s_axi_rdata[31] [6]),
        .I1(\s_axi_rdata[31]_0 [6]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[31]_1 [6]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[31]_2 [6]),
        .O(s_axi_rdata[30]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(\s_axi_rdata[31] [7]),
        .I1(\s_axi_rdata[31]_0 [7]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[31]_1 [7]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[31]_2 [7]),
        .O(s_axi_rdata[31]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(DOBDO[3]),
        .I1(\s_axi_rdata[7] [3]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[7]_0 [3]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[7]_1 [3]),
        .O(s_axi_rdata[3]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(DOBDO[4]),
        .I1(\s_axi_rdata[7] [4]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[7]_0 [4]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[7]_1 [4]),
        .O(s_axi_rdata[4]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(DOBDO[5]),
        .I1(\s_axi_rdata[7] [5]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[7]_0 [5]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[7]_1 [5]),
        .O(s_axi_rdata[5]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(DOBDO[6]),
        .I1(\s_axi_rdata[7] [6]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[7]_0 [6]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[7]_1 [6]),
        .O(s_axi_rdata[6]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(DOBDO[7]),
        .I1(\s_axi_rdata[7] [7]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[7]_0 [7]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[7]_1 [7]),
        .O(s_axi_rdata[7]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(\s_axi_rdata[15] [0]),
        .I1(\s_axi_rdata[15]_0 [0]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[15]_1 [0]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[15]_2 [0]),
        .O(s_axi_rdata[8]));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(\s_axi_rdata[15] [1]),
        .I1(\s_axi_rdata[15]_0 [1]),
        .I2(sel_pipe[2]),
        .I3(\s_axi_rdata[15]_1 [1]),
        .I4(sel_pipe[1]),
        .I5(\s_axi_rdata[15]_2 [1]),
        .O(s_axi_rdata[9]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    ENA_dly_D,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    ENA_dly);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output ENA_dly_D;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input ENA_dly;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I;
  wire ENA_dly;
  wire ENA_dly_D;
  wire ENB_I;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENA_dly),
        .Q(ENA_dly_D),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I_0,
    ENB_I_1,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I_0;
  input ENB_I_1;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_0;
  wire ENB_I_1;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_0(ENA_I_0),
        .ENB_I_1(ENB_I_1),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I_2,
    ENB_I_3,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I_2;
  input ENB_I_3;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_2;
  wire ENB_I_3;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_2(ENA_I_2),
        .ENB_I_3(ENB_I_3),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I_4,
    ENB_I_5,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I_4;
  input ENB_I_5;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_4;
  wire ENB_I_5;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_4(ENA_I_4),
        .ENB_I_5(ENB_I_5),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I_0,
    ENB_I_1,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I_0;
  input ENB_I_1;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_0;
  wire ENB_I_1;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_0(ENA_I_0),
        .ENB_I_1(ENB_I_1),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    ENB_dly_D,
    s_aclk,
    ENA_I_2,
    ENB_I_3,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    ENB_dly);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output ENB_dly_D;
  input s_aclk;
  input ENA_I_2;
  input ENB_I_3;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input ENB_dly;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_2;
  wire ENB_I_3;
  wire ENB_dly;
  wire ENB_dly_D;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_D_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ENB_dly),
        .Q(ENB_dly_D),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_2(ENA_I_2),
        .ENB_I_3(ENB_I_3),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    POR_A,
    ram_rstram_b,
    ENA_dly,
    ENB_dly,
    rsta_busy,
    rstb_busy,
    s_aclk,
    ENA_I_4,
    ENB_I_5,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    s_aresetn,
    ENB_dly_D,
    ENA_dly_D);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  output POR_A;
  output ram_rstram_b;
  output ENA_dly;
  output ENB_dly;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input ENA_I_4;
  input ENB_I_5;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_aresetn;
  input ENB_dly_D;
  input ENA_dly_D;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_4;
  wire ENA_dly;
  wire ENA_dly_D;
  wire ENB_I_5;
  wire ENB_dly;
  wire ENB_dly_D;
  wire POR_A;
  wire \SAFETY_CKT_GEN.POR_A_i_1_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ;
  wire \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ;
  wire ram_rstram_a_busy;
  wire ram_rstram_b;
  wire ram_rstram_b_busy;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENA_NO_REG.ENA_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(POR_A),
        .Q(ENA_dly),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.ENB_NO_REG.ENB_dly_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_rstram_b),
        .Q(ENB_dly),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h6)) 
    \SAFETY_CKT_GEN.POR_A_i_1 
       (.I0(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .I1(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .O(\SAFETY_CKT_GEN.POR_A_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.POR_A_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.POR_A_i_1_n_0 ),
        .Q(POR_A),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hFE)) 
    \SAFETY_CKT_GEN.RSTA_BUSY_NO_REG.RSTA_BUSY_i_1 
       (.I0(POR_A),
        .I1(ENA_dly),
        .I2(ENA_dly_D),
        .O(ram_rstram_a_busy));
  FDRE \SAFETY_CKT_GEN.RSTA_BUSY_NO_REG.RSTA_BUSY_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_rstram_a_busy),
        .Q(rsta_busy),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[0] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(1'b1),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "U0/\inst_blk_mem_gen/gnbram.gaxibmg.axi_blk_mem_gen/valid.cstr/ramloop[15].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg " *) 
  (* srl_name = "U0/\inst_blk_mem_gen/gnbram.gaxibmg.axi_blk_mem_gen/valid.cstr/ramloop[15].ram.r/SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 " *) 
  SRL16E #(
    .INIT(16'h0000)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3 
       (.A0(1'b0),
        .A1(1'b1),
        .A2(1'b0),
        .A3(1'b0),
        .CE(1'b1),
        .CLK(s_aclk),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[0] ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[4] 
       (.C(s_aclk),
        .CE(1'b1),
        .D(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg[3]_srl3_n_0 ),
        .Q(\SAFETY_CKT_GEN.RSTA_SHFT_REG_reg_n_0_[4] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'hFFFD)) 
    \SAFETY_CKT_GEN.nSPRAM_RST_BUSY.RSTB_BUSY_NO_REG.RSTB_BUSY_i_1 
       (.I0(s_aresetn),
        .I1(POR_A),
        .I2(ENB_dly),
        .I3(ENB_dly_D),
        .O(ram_rstram_b_busy));
  FDRE \SAFETY_CKT_GEN.nSPRAM_RST_BUSY.RSTB_BUSY_NO_REG.RSTB_BUSY_reg 
       (.C(s_aclk),
        .CE(1'b1),
        .D(ram_rstram_b_busy),
        .Q(rstb_busy),
        .R(1'b0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 (POR_A),
        .ENA_I_4(ENA_I_4),
        .ENB_I_5(ENB_I_5),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized2
   (DOBDO,
    s_aclk,
    ENA_I_4,
    ENB_I_5,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]DOBDO;
  input s_aclk;
  input ENA_I_4;
  input ENB_I_5;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]DOBDO;
  wire ENA_I_4;
  wire ENB_I_5;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .DOBDO(DOBDO),
        .ENA_I_4(ENA_I_4),
        .ENB_I_5(ENB_I_5),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I_0,
    ENB_I_1,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I_0;
  input ENB_I_1;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_0;
  wire ENB_I_1;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_0(ENA_I_0),
        .ENB_I_1(ENB_I_1),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I_2,
    ENB_I_3,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I_2;
  input ENB_I_3;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_2;
  wire ENB_I_3;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_2(ENA_I_2),
        .ENB_I_3(ENB_I_3),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I_4,
    ENB_I_5,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I_4;
  input ENB_I_5;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_4;
  wire ENB_I_5;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_4(ENA_I_4),
        .ENB_I_5(ENB_I_5),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I(ENA_I),
        .ENB_I(ENB_I),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I_0,
    ENB_I_1,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I_0;
  input ENB_I_1;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_0;
  wire ENB_I_1;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_0(ENA_I_0),
        .ENB_I_1(ENB_I_1),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_width" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_width__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ,
    s_aclk,
    ENA_I_2,
    ENB_I_3,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  input s_aclk;
  input ENA_I_2;
  input ENB_I_3;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ;
  wire ENA_I_2;
  wire ENB_I_3;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9 \prim_init.ram 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRBWRADDR(ADDRBWRADDR),
        .\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram ),
        .ENA_I_2(ENA_I_2),
        .ENB_I_3(ENB_I_3),
        .POR_A(POR_A),
        .ram_rstram_b(ram_rstram_b),
        .s_aclk(s_aclk),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_01(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_02(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_03(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_04(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_05(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_06(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_07(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_08(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_09(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_0A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_0B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_0C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_0D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_0E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_0F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_10(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_11(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_12(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_13(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_14(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_15(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_16(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_17(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_18(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_19(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_1A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_1B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_1C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_1D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_1E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_1F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_20(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_21(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_22(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_23(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_24(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_25(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_26(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_27(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_28(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_29(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_2A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_2B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_2C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_2D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_2E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_2F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_30(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_31(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_32(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_33(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_34(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_35(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_36(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_37(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_38(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_39(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_3A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_3B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_3C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_3D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_3E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_3F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_40(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_41(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_42(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_43(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_44(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_45(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_46(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_47(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_48(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_49(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_4A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_4B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_4C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_4D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_4E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_4F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_50(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_51(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_52(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_53(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_54(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_55(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_56(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_57(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_58(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_59(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_5A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_5B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_5C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_5D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_5E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_5F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_60(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_61(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_62(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_63(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_64(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_65(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_66(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_67(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_68(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_69(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_6A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_6B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_6C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_6D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_6E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_6F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_70(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_71(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_72(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_73(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_74(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_75(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_76(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_77(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_78(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_79(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_7A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_7B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_7C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_7D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_7E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_7F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized0
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_0,
    ENB_I_1,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_0;
  input ENB_I_1;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_0;
  wire ENB_I_1;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_01(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_02(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_03(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_04(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_05(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_06(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_07(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_08(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_09(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_0A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_0B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_0C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_0D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_0E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_0F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_10(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_11(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_12(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_13(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_14(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_15(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_16(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_17(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_18(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_19(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_1A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_1B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_1C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_1D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_1E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_1F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_20(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_21(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_22(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_23(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_24(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_25(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_26(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_27(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_28(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_29(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_2A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_2B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_2C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_2D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_2E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_2F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_30(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_31(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_32(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_33(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_34(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_35(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_36(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_37(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_38(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_39(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_3A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_3B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_3C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_3D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_3E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_3F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_40(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_41(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_42(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_43(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_44(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_45(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_46(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_47(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_48(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_49(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_4A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_4B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_4C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_4D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_4E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_4F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_50(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_51(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_52(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_53(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_54(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_55(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_56(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_57(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_58(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_59(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_5A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_5B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_5C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_5D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_5E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_5F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_60(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_61(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_62(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_63(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_64(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_65(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_66(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_67(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_68(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_69(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_6A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_6B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_6C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_6D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_6E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_6F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_70(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_71(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_72(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_73(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_74(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_75(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_76(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_77(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_78(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_79(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_7A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_7B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_7C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_7D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_7E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_7F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_0),
        .ENBWREN(ENB_I_1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized1
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_2,
    ENB_I_3,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_2;
  input ENB_I_3;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_2;
  wire ENB_I_3;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_01(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_02(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_03(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_04(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_05(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_06(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_07(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_08(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_09(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_0A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_0B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_0C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_0D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_0E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_0F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_10(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_11(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_12(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_13(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_14(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_15(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_16(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_17(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_18(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_19(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_1A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_1B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_1C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_1D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_1E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_1F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_20(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_21(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_22(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_23(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_24(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_25(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_26(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_27(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_28(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_29(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_2A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_2B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_2C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_2D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_2E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_2F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_30(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_31(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_32(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_33(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_34(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_35(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_36(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_37(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_38(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_39(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_3A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_3B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_3C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_3D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_3E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_3F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_40(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_41(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_42(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_43(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_44(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_45(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_46(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_47(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_48(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_49(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_4A(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_4B(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_4C(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_4D(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_4E(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_4F(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_50(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_51(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_52(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_53(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_54(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_55(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_56(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_57(256'hFCF8F4F0ECE8E4E0DCD8D4D0CCC8C4C0BCB8B4B0ACA8A4A09C9894908C888480),
    .INIT_58(256'h7C7874706C6864605C5854504C4844403C3834302C2824201C1814100C080400),
    .INIT_59(256'h00000000000000000000000000000000000000000000A4A09C9894908C888480),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_2),
        .ENBWREN(ENB_I_3),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized10
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_4,
    ENB_I_5,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_4;
  input ENB_I_5;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_4;
  wire ENB_I_5;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_4),
        .ENBWREN(ENB_I_5),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized11
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_01(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_02(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_03(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_04(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_05(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_06(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_07(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_08(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_09(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_10(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_11(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_12(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_13(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_14(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_15(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_16(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_17(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_18(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_19(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_20(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_21(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_22(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_23(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_24(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_25(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_26(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_27(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_28(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_29(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_30(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_31(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_32(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_33(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_34(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_35(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_36(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_37(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_38(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_39(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_40(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_41(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_42(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_43(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_44(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_45(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_46(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_47(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_48(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_49(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_50(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_51(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_52(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_53(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_54(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_55(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_56(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_57(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_58(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_59(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_60(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_61(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_62(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_63(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_64(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_65(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_66(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_67(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_68(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_69(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_70(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_71(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_72(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_73(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_74(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_75(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_76(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_77(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_78(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_79(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized12
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_0,
    ENB_I_1,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_0;
  input ENB_I_1;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_0;
  wire ENB_I_1;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_01(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_02(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_03(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_04(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_05(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_06(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_07(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_08(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_09(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_10(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_11(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_12(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_13(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_14(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_15(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_16(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_17(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_18(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_19(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_20(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_21(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_22(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_23(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_24(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_25(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_26(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_27(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_28(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_29(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_30(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_31(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_32(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_33(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_34(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_35(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_36(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_37(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_38(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_39(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_40(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_41(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_42(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_43(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_44(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_45(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_46(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_47(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_48(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_49(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_50(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_51(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_52(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_53(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_54(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_55(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_56(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_57(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_58(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_59(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_5F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_60(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_61(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_62(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_63(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_64(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_65(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_66(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_67(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_68(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_69(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_6F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_70(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_71(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_72(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_73(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_74(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_75(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_76(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_77(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_78(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_79(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_7F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_0),
        .ENBWREN(ENB_I_1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized13
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_2,
    ENB_I_3,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_2;
  input ENB_I_3;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_2;
  wire ENB_I_3;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_01(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_02(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_03(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_04(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_05(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_06(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_07(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_08(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_09(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_0F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_10(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_11(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_12(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_13(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_14(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_15(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_16(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_17(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_18(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_19(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_1F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_20(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_21(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_22(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_23(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_24(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_25(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_26(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_27(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_28(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_29(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_2F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_30(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_31(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_32(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_33(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_34(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_35(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_36(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_37(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_38(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_39(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_40(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_41(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_42(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_43(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_44(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_45(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_46(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_47(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_48(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_49(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4A(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4B(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4C(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4D(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_4F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_50(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_51(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_52(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_53(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_54(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_55(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_56(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_57(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_58(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_59(256'h000000000000000000000000000000000000000000001F1F1F1F1F1F1F1F1F1F),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_2),
        .ENBWREN(ENB_I_3),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized14
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    ram_rstram_b,
    s_aclk,
    ENA_I_4,
    ENB_I_5,
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    s_aresetn);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  output ram_rstram_b;
  input s_aclk;
  input ENA_I_4;
  input ENB_I_5;
  input \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;
  input s_aresetn;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_4;
  wire ENB_I_5;
  wire ram_rstram_b;
  wire s_aclk;
  wire s_aresetn;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_4),
        .ENBWREN(ENB_I_5),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
  LUT2 #(
    .INIT(4'hB)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_i_3__0 
       (.I0(\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_1 ),
        .I1(s_aresetn),
        .O(ram_rstram_b));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized2
   (DOBDO,
    s_aclk,
    ENA_I_4,
    ENB_I_5,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]DOBDO;
  input s_aclk;
  input ENA_I_4;
  input ENB_I_5;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire [7:0]DOBDO;
  wire ENA_I_4;
  wire ENB_I_5;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],DOBDO}),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_4),
        .ENBWREN(ENB_I_5),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized3
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_03(256'h0101010101010101010101010101010101010101010101010101010101010101),
    .INIT_04(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_05(256'h0202020202020202020202020202020202020202020202020202020202020202),
    .INIT_06(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_07(256'h0303030303030303030303030303030303030303030303030303030303030303),
    .INIT_08(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_09(256'h0404040404040404040404040404040404040404040404040404040404040404),
    .INIT_0A(256'h0505050505050505050505050505050505050505050505050505050505050505),
    .INIT_0B(256'h0505050505050505050505050505050505050505050505050505050505050505),
    .INIT_0C(256'h0606060606060606060606060606060606060606060606060606060606060606),
    .INIT_0D(256'h0606060606060606060606060606060606060606060606060606060606060606),
    .INIT_0E(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_0F(256'h0707070707070707070707070707070707070707070707070707070707070707),
    .INIT_10(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_11(256'h0808080808080808080808080808080808080808080808080808080808080808),
    .INIT_12(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_13(256'h0909090909090909090909090909090909090909090909090909090909090909),
    .INIT_14(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_15(256'h0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A),
    .INIT_16(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_17(256'h0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B0B),
    .INIT_18(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_19(256'h0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C),
    .INIT_1A(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_1B(256'h0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D0D),
    .INIT_1C(256'h0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E),
    .INIT_1D(256'h0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E),
    .INIT_1E(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_1F(256'h0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F0F),
    .INIT_20(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_21(256'h1010101010101010101010101010101010101010101010101010101010101010),
    .INIT_22(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_23(256'h1111111111111111111111111111111111111111111111111111111111111111),
    .INIT_24(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_25(256'h1212121212121212121212121212121212121212121212121212121212121212),
    .INIT_26(256'h1313131313131313131313131313131313131313131313131313131313131313),
    .INIT_27(256'h1313131313131313131313131313131313131313131313131313131313131313),
    .INIT_28(256'h1414141414141414141414141414141414141414141414141414141414141414),
    .INIT_29(256'h1414141414141414141414141414141414141414141414141414141414141414),
    .INIT_2A(256'h1515151515151515151515151515151515151515151515151515151515151515),
    .INIT_2B(256'h1515151515151515151515151515151515151515151515151515151515151515),
    .INIT_2C(256'h1616161616161616161616161616161616161616161616161616161616161616),
    .INIT_2D(256'h1616161616161616161616161616161616161616161616161616161616161616),
    .INIT_2E(256'h1717171717171717171717171717171717171717171717171717171717171717),
    .INIT_2F(256'h1717171717171717171717171717171717171717171717171717171717171717),
    .INIT_30(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_31(256'h1818181818181818181818181818181818181818181818181818181818181818),
    .INIT_32(256'h1919191919191919191919191919191919191919191919191919191919191919),
    .INIT_33(256'h1919191919191919191919191919191919191919191919191919191919191919),
    .INIT_34(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_35(256'h1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A),
    .INIT_36(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_37(256'h1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B1B),
    .INIT_38(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_39(256'h1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C1C),
    .INIT_3A(256'h1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D),
    .INIT_3B(256'h1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D1D),
    .INIT_3C(256'h1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E),
    .INIT_3D(256'h1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E1E),
    .INIT_3E(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_3F(256'h1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F1F),
    .INIT_40(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_41(256'h2020202020202020202020202020202020202020202020202020202020202020),
    .INIT_42(256'h2121212121212121212121212121212121212121212121212121212121212121),
    .INIT_43(256'h2121212121212121212121212121212121212121212121212121212121212121),
    .INIT_44(256'h2222222222222222222222222222222222222222222222222222222222222222),
    .INIT_45(256'h2222222222222222222222222222222222222222222222222222222222222222),
    .INIT_46(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_47(256'h2323232323232323232323232323232323232323232323232323232323232323),
    .INIT_48(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_49(256'h2424242424242424242424242424242424242424242424242424242424242424),
    .INIT_4A(256'h2525252525252525252525252525252525252525252525252525252525252525),
    .INIT_4B(256'h2525252525252525252525252525252525252525252525252525252525252525),
    .INIT_4C(256'h2626262626262626262626262626262626262626262626262626262626262626),
    .INIT_4D(256'h2626262626262626262626262626262626262626262626262626262626262626),
    .INIT_4E(256'h2727272727272727272727272727272727272727272727272727272727272727),
    .INIT_4F(256'h2727272727272727272727272727272727272727272727272727272727272727),
    .INIT_50(256'h2828282828282828282828282828282828282828282828282828282828282828),
    .INIT_51(256'h2828282828282828282828282828282828282828282828282828282828282828),
    .INIT_52(256'h2929292929292929292929292929292929292929292929292929292929292929),
    .INIT_53(256'h2929292929292929292929292929292929292929292929292929292929292929),
    .INIT_54(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_55(256'h2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A),
    .INIT_56(256'h2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B),
    .INIT_57(256'h2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B2B),
    .INIT_58(256'h2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C),
    .INIT_59(256'h2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C2C),
    .INIT_5A(256'h2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D),
    .INIT_5B(256'h2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D2D),
    .INIT_5C(256'h2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E),
    .INIT_5D(256'h2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E2E),
    .INIT_5E(256'h2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F),
    .INIT_5F(256'h2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F2F),
    .INIT_60(256'h3030303030303030303030303030303030303030303030303030303030303030),
    .INIT_61(256'h3030303030303030303030303030303030303030303030303030303030303030),
    .INIT_62(256'h3131313131313131313131313131313131313131313131313131313131313131),
    .INIT_63(256'h3131313131313131313131313131313131313131313131313131313131313131),
    .INIT_64(256'h3232323232323232323232323232323232323232323232323232323232323232),
    .INIT_65(256'h3232323232323232323232323232323232323232323232323232323232323232),
    .INIT_66(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_67(256'h3333333333333333333333333333333333333333333333333333333333333333),
    .INIT_68(256'h3434343434343434343434343434343434343434343434343434343434343434),
    .INIT_69(256'h3434343434343434343434343434343434343434343434343434343434343434),
    .INIT_6A(256'h3535353535353535353535353535353535353535353535353535353535353535),
    .INIT_6B(256'h3535353535353535353535353535353535353535353535353535353535353535),
    .INIT_6C(256'h3636363636363636363636363636363636363636363636363636363636363636),
    .INIT_6D(256'h3636363636363636363636363636363636363636363636363636363636363636),
    .INIT_6E(256'h3737373737373737373737373737373737373737373737373737373737373737),
    .INIT_6F(256'h3737373737373737373737373737373737373737373737373737373737373737),
    .INIT_70(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_71(256'h3838383838383838383838383838383838383838383838383838383838383838),
    .INIT_72(256'h3939393939393939393939393939393939393939393939393939393939393939),
    .INIT_73(256'h3939393939393939393939393939393939393939393939393939393939393939),
    .INIT_74(256'h3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A),
    .INIT_75(256'h3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A),
    .INIT_76(256'h3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_77(256'h3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B3B),
    .INIT_78(256'h3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_79(256'h3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C),
    .INIT_7A(256'h3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D),
    .INIT_7B(256'h3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D3D),
    .INIT_7C(256'h3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E),
    .INIT_7D(256'h3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E3E),
    .INIT_7E(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_7F(256'h3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F3F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized4
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_0,
    ENB_I_1,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_0;
  input ENB_I_1;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_0;
  wire ENB_I_1;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_01(256'h4040404040404040404040404040404040404040404040404040404040404040),
    .INIT_02(256'h4141414141414141414141414141414141414141414141414141414141414141),
    .INIT_03(256'h4141414141414141414141414141414141414141414141414141414141414141),
    .INIT_04(256'h4242424242424242424242424242424242424242424242424242424242424242),
    .INIT_05(256'h4242424242424242424242424242424242424242424242424242424242424242),
    .INIT_06(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_07(256'h4343434343434343434343434343434343434343434343434343434343434343),
    .INIT_08(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_09(256'h4444444444444444444444444444444444444444444444444444444444444444),
    .INIT_0A(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_0B(256'h4545454545454545454545454545454545454545454545454545454545454545),
    .INIT_0C(256'h4646464646464646464646464646464646464646464646464646464646464646),
    .INIT_0D(256'h4646464646464646464646464646464646464646464646464646464646464646),
    .INIT_0E(256'h4747474747474747474747474747474747474747474747474747474747474747),
    .INIT_0F(256'h4747474747474747474747474747474747474747474747474747474747474747),
    .INIT_10(256'h4848484848484848484848484848484848484848484848484848484848484848),
    .INIT_11(256'h4848484848484848484848484848484848484848484848484848484848484848),
    .INIT_12(256'h4949494949494949494949494949494949494949494949494949494949494949),
    .INIT_13(256'h4949494949494949494949494949494949494949494949494949494949494949),
    .INIT_14(256'h4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A),
    .INIT_15(256'h4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A),
    .INIT_16(256'h4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B),
    .INIT_17(256'h4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B4B),
    .INIT_18(256'h4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_19(256'h4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C4C),
    .INIT_1A(256'h4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D),
    .INIT_1B(256'h4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D4D),
    .INIT_1C(256'h4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E),
    .INIT_1D(256'h4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E4E),
    .INIT_1E(256'h4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F),
    .INIT_1F(256'h4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F4F),
    .INIT_20(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_21(256'h5050505050505050505050505050505050505050505050505050505050505050),
    .INIT_22(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_23(256'h5151515151515151515151515151515151515151515151515151515151515151),
    .INIT_24(256'h5252525252525252525252525252525252525252525252525252525252525252),
    .INIT_25(256'h5252525252525252525252525252525252525252525252525252525252525252),
    .INIT_26(256'h5353535353535353535353535353535353535353535353535353535353535353),
    .INIT_27(256'h5353535353535353535353535353535353535353535353535353535353535353),
    .INIT_28(256'h5454545454545454545454545454545454545454545454545454545454545454),
    .INIT_29(256'h5454545454545454545454545454545454545454545454545454545454545454),
    .INIT_2A(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_2B(256'h5555555555555555555555555555555555555555555555555555555555555555),
    .INIT_2C(256'h5656565656565656565656565656565656565656565656565656565656565656),
    .INIT_2D(256'h5656565656565656565656565656565656565656565656565656565656565656),
    .INIT_2E(256'h5757575757575757575757575757575757575757575757575757575757575757),
    .INIT_2F(256'h5757575757575757575757575757575757575757575757575757575757575757),
    .INIT_30(256'h5858585858585858585858585858585858585858585858585858585858585858),
    .INIT_31(256'h5858585858585858585858585858585858585858585858585858585858585858),
    .INIT_32(256'h5959595959595959595959595959595959595959595959595959595959595959),
    .INIT_33(256'h5959595959595959595959595959595959595959595959595959595959595959),
    .INIT_34(256'h5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A),
    .INIT_35(256'h5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A),
    .INIT_36(256'h5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B),
    .INIT_37(256'h5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B),
    .INIT_38(256'h5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C),
    .INIT_39(256'h5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C),
    .INIT_3A(256'h5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D),
    .INIT_3B(256'h5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D5D),
    .INIT_3C(256'h5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E),
    .INIT_3D(256'h5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E5E),
    .INIT_3E(256'h5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F),
    .INIT_3F(256'h5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F5F),
    .INIT_40(256'h6060606060606060606060606060606060606060606060606060606060606060),
    .INIT_41(256'h6060606060606060606060606060606060606060606060606060606060606060),
    .INIT_42(256'h6161616161616161616161616161616161616161616161616161616161616161),
    .INIT_43(256'h6161616161616161616161616161616161616161616161616161616161616161),
    .INIT_44(256'h6262626262626262626262626262626262626262626262626262626262626262),
    .INIT_45(256'h6262626262626262626262626262626262626262626262626262626262626262),
    .INIT_46(256'h6363636363636363636363636363636363636363636363636363636363636363),
    .INIT_47(256'h6363636363636363636363636363636363636363636363636363636363636363),
    .INIT_48(256'h6464646464646464646464646464646464646464646464646464646464646464),
    .INIT_49(256'h6464646464646464646464646464646464646464646464646464646464646464),
    .INIT_4A(256'h6565656565656565656565656565656565656565656565656565656565656565),
    .INIT_4B(256'h6565656565656565656565656565656565656565656565656565656565656565),
    .INIT_4C(256'h6666666666666666666666666666666666666666666666666666666666666666),
    .INIT_4D(256'h6666666666666666666666666666666666666666666666666666666666666666),
    .INIT_4E(256'h6767676767676767676767676767676767676767676767676767676767676767),
    .INIT_4F(256'h6767676767676767676767676767676767676767676767676767676767676767),
    .INIT_50(256'h6868686868686868686868686868686868686868686868686868686868686868),
    .INIT_51(256'h6868686868686868686868686868686868686868686868686868686868686868),
    .INIT_52(256'h6969696969696969696969696969696969696969696969696969696969696969),
    .INIT_53(256'h6969696969696969696969696969696969696969696969696969696969696969),
    .INIT_54(256'h6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A),
    .INIT_55(256'h6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A),
    .INIT_56(256'h6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B),
    .INIT_57(256'h6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B6B),
    .INIT_58(256'h6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C),
    .INIT_59(256'h6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C6C),
    .INIT_5A(256'h6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D),
    .INIT_5B(256'h6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D6D),
    .INIT_5C(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_5D(256'h6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E6E),
    .INIT_5E(256'h6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F),
    .INIT_5F(256'h6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F6F),
    .INIT_60(256'h7070707070707070707070707070707070707070707070707070707070707070),
    .INIT_61(256'h7070707070707070707070707070707070707070707070707070707070707070),
    .INIT_62(256'h7171717171717171717171717171717171717171717171717171717171717171),
    .INIT_63(256'h7171717171717171717171717171717171717171717171717171717171717171),
    .INIT_64(256'h7272727272727272727272727272727272727272727272727272727272727272),
    .INIT_65(256'h7272727272727272727272727272727272727272727272727272727272727272),
    .INIT_66(256'h7373737373737373737373737373737373737373737373737373737373737373),
    .INIT_67(256'h7373737373737373737373737373737373737373737373737373737373737373),
    .INIT_68(256'h7474747474747474747474747474747474747474747474747474747474747474),
    .INIT_69(256'h7474747474747474747474747474747474747474747474747474747474747474),
    .INIT_6A(256'h7575757575757575757575757575757575757575757575757575757575757575),
    .INIT_6B(256'h7575757575757575757575757575757575757575757575757575757575757575),
    .INIT_6C(256'h7676767676767676767676767676767676767676767676767676767676767676),
    .INIT_6D(256'h7676767676767676767676767676767676767676767676767676767676767676),
    .INIT_6E(256'h7777777777777777777777777777777777777777777777777777777777777777),
    .INIT_6F(256'h7777777777777777777777777777777777777777777777777777777777777777),
    .INIT_70(256'h7878787878787878787878787878787878787878787878787878787878787878),
    .INIT_71(256'h7878787878787878787878787878787878787878787878787878787878787878),
    .INIT_72(256'h7979797979797979797979797979797979797979797979797979797979797979),
    .INIT_73(256'h7979797979797979797979797979797979797979797979797979797979797979),
    .INIT_74(256'h7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A),
    .INIT_75(256'h7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A),
    .INIT_76(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_77(256'h7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B7B),
    .INIT_78(256'h7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C),
    .INIT_79(256'h7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C7C),
    .INIT_7A(256'h7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D),
    .INIT_7B(256'h7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D),
    .INIT_7C(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_7D(256'h7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E7E),
    .INIT_7E(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_7F(256'h7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_0),
        .ENBWREN(ENB_I_1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized5
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_2,
    ENB_I_3,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_2;
  input ENB_I_3;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_2;
  wire ENB_I_3;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_01(256'h8080808080808080808080808080808080808080808080808080808080808080),
    .INIT_02(256'h8181818181818181818181818181818181818181818181818181818181818181),
    .INIT_03(256'h8181818181818181818181818181818181818181818181818181818181818181),
    .INIT_04(256'h8282828282828282828282828282828282828282828282828282828282828282),
    .INIT_05(256'h8282828282828282828282828282828282828282828282828282828282828282),
    .INIT_06(256'h8383838383838383838383838383838383838383838383838383838383838383),
    .INIT_07(256'h8383838383838383838383838383838383838383838383838383838383838383),
    .INIT_08(256'h8484848484848484848484848484848484848484848484848484848484848484),
    .INIT_09(256'h8484848484848484848484848484848484848484848484848484848484848484),
    .INIT_0A(256'h8585858585858585858585858585858585858585858585858585858585858585),
    .INIT_0B(256'h8585858585858585858585858585858585858585858585858585858585858585),
    .INIT_0C(256'h8686868686868686868686868686868686868686868686868686868686868686),
    .INIT_0D(256'h8686868686868686868686868686868686868686868686868686868686868686),
    .INIT_0E(256'h8787878787878787878787878787878787878787878787878787878787878787),
    .INIT_0F(256'h8787878787878787878787878787878787878787878787878787878787878787),
    .INIT_10(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_11(256'h8888888888888888888888888888888888888888888888888888888888888888),
    .INIT_12(256'h8989898989898989898989898989898989898989898989898989898989898989),
    .INIT_13(256'h8989898989898989898989898989898989898989898989898989898989898989),
    .INIT_14(256'h8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A),
    .INIT_15(256'h8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A),
    .INIT_16(256'h8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B),
    .INIT_17(256'h8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B8B),
    .INIT_18(256'h8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C),
    .INIT_19(256'h8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C8C),
    .INIT_1A(256'h8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D),
    .INIT_1B(256'h8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D8D),
    .INIT_1C(256'h8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E),
    .INIT_1D(256'h8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E),
    .INIT_1E(256'h8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F),
    .INIT_1F(256'h8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F8F),
    .INIT_20(256'h9090909090909090909090909090909090909090909090909090909090909090),
    .INIT_21(256'h9090909090909090909090909090909090909090909090909090909090909090),
    .INIT_22(256'h9191919191919191919191919191919191919191919191919191919191919191),
    .INIT_23(256'h9191919191919191919191919191919191919191919191919191919191919191),
    .INIT_24(256'h9292929292929292929292929292929292929292929292929292929292929292),
    .INIT_25(256'h9292929292929292929292929292929292929292929292929292929292929292),
    .INIT_26(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_27(256'h9393939393939393939393939393939393939393939393939393939393939393),
    .INIT_28(256'h9494949494949494949494949494949494949494949494949494949494949494),
    .INIT_29(256'h9494949494949494949494949494949494949494949494949494949494949494),
    .INIT_2A(256'h9595959595959595959595959595959595959595959595959595959595959595),
    .INIT_2B(256'h9595959595959595959595959595959595959595959595959595959595959595),
    .INIT_2C(256'h9696969696969696969696969696969696969696969696969696969696969696),
    .INIT_2D(256'h9696969696969696969696969696969696969696969696969696969696969696),
    .INIT_2E(256'h9797979797979797979797979797979797979797979797979797979797979797),
    .INIT_2F(256'h9797979797979797979797979797979797979797979797979797979797979797),
    .INIT_30(256'h9898989898989898989898989898989898989898989898989898989898989898),
    .INIT_31(256'h9898989898989898989898989898989898989898989898989898989898989898),
    .INIT_32(256'h9999999999999999999999999999999999999999999999999999999999999999),
    .INIT_33(256'h9999999999999999999999999999999999999999999999999999999999999999),
    .INIT_34(256'h9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A),
    .INIT_35(256'h9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A),
    .INIT_36(256'h9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B),
    .INIT_37(256'h9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B9B),
    .INIT_38(256'h9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C),
    .INIT_39(256'h9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C9C),
    .INIT_3A(256'h9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D),
    .INIT_3B(256'h9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D9D),
    .INIT_3C(256'h9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E),
    .INIT_3D(256'h9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E9E),
    .INIT_3E(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_3F(256'h9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F9F),
    .INIT_40(256'hA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0),
    .INIT_41(256'hA0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0A0),
    .INIT_42(256'hA1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1),
    .INIT_43(256'hA1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1A1),
    .INIT_44(256'hA2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2),
    .INIT_45(256'hA2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2A2),
    .INIT_46(256'hA3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3),
    .INIT_47(256'hA3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3A3),
    .INIT_48(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_49(256'hA4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4A4),
    .INIT_4A(256'hA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5),
    .INIT_4B(256'hA5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5),
    .INIT_4C(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_4D(256'hA6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6A6),
    .INIT_4E(256'hA7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7),
    .INIT_4F(256'hA7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7A7),
    .INIT_50(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_51(256'hA8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8A8),
    .INIT_52(256'hA9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9),
    .INIT_53(256'hA9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9A9),
    .INIT_54(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_55(256'hAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA),
    .INIT_56(256'hABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB),
    .INIT_57(256'hABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABABAB),
    .INIT_58(256'hACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACACAC),
    .INIT_59(256'h00000000000000000000000000000000000000000000ACACACACACACACACACAC),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_2),
        .ENBWREN(ENB_I_3),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized6
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_4,
    ENB_I_5,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_4;
  input ENB_I_5;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_4;
  wire ENB_I_5;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_10(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_11(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_12(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_13(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_14(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_15(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_16(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_17(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_18(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_19(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_1F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_20(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_21(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_22(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_23(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_24(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_25(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_26(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_27(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_28(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_29(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_2F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_30(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_31(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_32(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_33(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_34(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_35(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_36(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_37(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_38(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_39(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_3F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_40(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_41(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_42(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_43(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_44(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_45(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_46(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_47(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_48(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_49(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_4F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_50(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_51(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_52(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_53(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_54(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_55(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_56(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_57(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_58(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_59(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_4),
        .ENBWREN(ENB_I_5),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized7
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I,
    ENB_I,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I;
  wire ENB_I;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_01(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_02(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_03(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_04(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_05(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_06(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_07(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_08(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_09(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_10(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_11(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_12(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_13(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_14(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_15(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_16(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_17(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_18(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_19(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_20(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_21(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_22(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_23(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_24(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_25(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_26(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_27(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_28(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_29(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_30(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_31(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_32(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_33(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_34(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_35(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_36(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_37(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_38(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_39(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_40(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_41(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_42(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_43(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_44(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_45(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_46(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_47(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_48(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_49(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_50(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_51(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_52(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_53(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_54(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_55(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_56(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_57(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_58(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_59(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_60(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_61(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_62(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_63(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_64(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_65(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_66(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_67(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_68(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_69(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_70(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_71(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_72(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_73(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_74(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_75(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_76(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_77(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_78(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_79(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I),
        .ENBWREN(ENB_I),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized8
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_0,
    ENB_I_1,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_0;
  input ENB_I_1;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_0;
  wire ENB_I_1;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_01(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_02(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_03(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_04(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_05(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_06(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_07(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_08(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_09(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_10(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_11(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_12(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_13(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_14(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_15(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_16(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_17(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_18(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_19(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_20(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_21(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_22(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_23(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_24(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_25(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_26(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_27(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_28(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_29(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_30(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_31(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_32(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_33(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_34(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_35(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_36(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_37(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_38(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_39(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_40(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_41(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_42(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_43(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_44(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_45(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_46(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_47(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_48(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_49(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_50(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_51(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_52(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_53(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_54(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_55(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_56(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_57(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_58(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_59(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_5F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_60(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_61(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_62(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_63(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_64(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_65(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_66(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_67(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_68(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_69(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_6F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_70(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_71(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_72(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_73(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_74(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_75(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_76(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_77(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_78(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_79(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_7F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_0),
        .ENBWREN(ENB_I_1),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

(* ORIG_REF_NAME = "blk_mem_gen_prim_wrapper_init" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_prim_wrapper_init__parameterized9
   (\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ,
    s_aclk,
    ENA_I_2,
    ENB_I_3,
    POR_A,
    ram_rstram_b,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb);
  output [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  input s_aclk;
  input ENA_I_2;
  input ENB_I_3;
  input POR_A;
  input ram_rstram_b;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [7:0]s_axi_wdata;
  input [0:0]s_axi_wstrb;

  wire [11:0]ADDRARDADDR;
  wire [11:0]ADDRBWRADDR;
  wire [7:0]\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 ;
  wire \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 ;
  wire ENA_I_2;
  wire ENB_I_3;
  wire POR_A;
  wire ram_rstram_b;
  wire s_aclk;
  wire [7:0]s_axi_wdata;
  wire [0:0]s_axi_wstrb;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ;
  wire \NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ;
  wire [31:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED ;
  wire [31:8]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED ;
  wire [3:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED ;
  wire [3:1]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED ;
  wire [7:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED ;
  wire [8:0]\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED ;

  (* box_type = "PRIMITIVE" *) 
  RAMB36E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .EN_ECC_READ("FALSE"),
    .EN_ECC_WRITE("FALSE"),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_08(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_09(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_0F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_01(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_02(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_03(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_04(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_05(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_06(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_07(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_08(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_09(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_0F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_10(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_11(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_12(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_13(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_14(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_15(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_16(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_17(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_18(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_19(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_1F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_20(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_21(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_22(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_23(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_24(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_25(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_26(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_27(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_28(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_29(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_2F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_30(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_31(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_32(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_33(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_34(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_35(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_36(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_37(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_38(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_39(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_3F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_40(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_41(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_42(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_43(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_44(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_45(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_46(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_47(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_48(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_49(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4A(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4B(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4C(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4D(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4E(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_4F(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_50(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_51(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_52(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_53(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_54(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_55(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_56(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_57(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_58(256'hC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0),
    .INIT_59(256'h00000000000000000000000000000000000000000000C0C0C0C0C0C0C0C0C0C0),
    .INIT_5A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_5F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_60(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_61(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_62(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_63(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_64(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_65(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_66(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_67(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_68(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_69(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_6F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_70(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_71(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_72(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_73(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_74(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_75(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_76(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_77(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_78(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_79(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7A(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7B(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7C(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7D(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7E(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_7F(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_A(36'h000000000),
    .INIT_B(36'h000000000),
    .INIT_FILE("NONE"),
    .IS_CLKARDCLK_INVERTED(1'b0),
    .IS_CLKBWRCLK_INVERTED(1'b0),
    .IS_ENARDEN_INVERTED(1'b0),
    .IS_ENBWREN_INVERTED(1'b0),
    .IS_RSTRAMARSTRAM_INVERTED(1'b0),
    .IS_RSTRAMB_INVERTED(1'b0),
    .IS_RSTREGARSTREG_INVERTED(1'b0),
    .IS_RSTREGB_INVERTED(1'b0),
    .RAM_EXTENSION_A("NONE"),
    .RAM_EXTENSION_B("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("DELAYED_WRITE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(9),
    .RSTREG_PRIORITY_A("REGCE"),
    .RSTREG_PRIORITY_B("REGCE"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(36'h000000000),
    .SRVAL_B(36'h000000000),
    .WRITE_MODE_A("READ_FIRST"),
    .WRITE_MODE_B("READ_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(9)) 
    \DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram 
       (.ADDRARDADDR({1'b1,ADDRARDADDR,1'b1,1'b1,1'b1}),
        .ADDRBWRADDR({1'b1,ADDRBWRADDR,1'b1,1'b1,1'b1}),
        .CASCADEINA(1'b0),
        .CASCADEINB(1'b0),
        .CASCADEOUTA(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTA_UNCONNECTED ),
        .CASCADEOUTB(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_CASCADEOUTB_UNCONNECTED ),
        .CLKARDCLK(s_aclk),
        .CLKBWRCLK(s_aclk),
        .DBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DBITERR_UNCONNECTED ),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,s_axi_wdata}),
        .DIBDI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .DIPADIP({1'b0,1'b0,1'b0,1'b0}),
        .DIPBDIP({1'b0,1'b0,1'b0,1'b0}),
        .DOADO(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOADO_UNCONNECTED [31:0]),
        .DOBDO({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOBDO_UNCONNECTED [31:8],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_0 }),
        .DOPADOP(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPADOP_UNCONNECTED [3:0]),
        .DOPBDOP({\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_DOPBDOP_UNCONNECTED [3:1],\DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_n_75 }),
        .ECCPARITY(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_ECCPARITY_UNCONNECTED [7:0]),
        .ENARDEN(ENA_I_2),
        .ENBWREN(ENB_I_3),
        .INJECTDBITERR(1'b0),
        .INJECTSBITERR(1'b0),
        .RDADDRECC(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_RDADDRECC_UNCONNECTED [8:0]),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(POR_A),
        .RSTRAMB(ram_rstram_b),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .SBITERR(\NLW_DEVICE_7SERIES.NO_BMM_INFO.SDP.SIMPLE_PRIM36.ram_SBITERR_UNCONNECTED ),
        .WEA({s_axi_wstrb,s_axi_wstrb,s_axi_wstrb,s_axi_wstrb}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top
   (ENA_dly_D,
    ENB_dly_D,
    rsta_busy,
    rstb_busy,
    s_axi_rdata,
    s_aclk,
    ENA_I,
    ENB_I,
    ADDRARDADDR,
    ADDRBWRADDR,
    s_axi_wdata,
    s_axi_wstrb,
    ENA_I_0,
    ENB_I_1,
    ENA_I_2,
    ENB_I_3,
    ENA_I_4,
    ENB_I_5,
    s_aresetn,
    ADDRB,
    E);
  output ENA_dly_D;
  output ENB_dly_D;
  output rsta_busy;
  output rstb_busy;
  output [31:0]s_axi_rdata;
  input s_aclk;
  input ENA_I;
  input ENB_I;
  input [11:0]ADDRARDADDR;
  input [11:0]ADDRBWRADDR;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input ENA_I_0;
  input ENB_I_1;
  input ENA_I_2;
  input ENB_I_3;
  input ENA_I_4;
  input ENB_I_5;
  input s_aresetn;
  input [1:0]ADDRB;
  input [0:0]E;

  wire [11:0]ADDRARDADDR;
  wire [1:0]ADDRB;
  wire [11:0]ADDRBWRADDR;
  wire [0:0]E;
  wire ENA_I;
  wire ENA_I_0;
  wire ENA_I_2;
  wire ENA_I_4;
  wire ENA_dly_D;
  wire ENB_I;
  wire ENB_I_1;
  wire ENB_I_3;
  wire ENB_I_5;
  wire ENB_dly_D;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_rdata;
  wire [31:0]s_axi_wdata;
  wire [3:0]s_axi_wstrb;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_generic_cstr \valid.cstr 
       (.ADDRARDADDR(ADDRARDADDR),
        .ADDRB(ADDRB),
        .ADDRBWRADDR(ADDRBWRADDR),
        .E(E),
        .ENA_I(ENA_I),
        .ENA_I_0(ENA_I_0),
        .ENA_I_2(ENA_I_2),
        .ENA_I_4(ENA_I_4),
        .ENA_dly_D(ENA_dly_D),
        .ENB_I(ENB_I),
        .ENB_I_1(ENB_I_1),
        .ENB_I_3(ENB_I_3),
        .ENB_I_5(ENB_I_5),
        .ENB_dly_D(ENB_dly_D),
        .rsta_busy(rsta_busy),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
endmodule

(* C_ADDRA_WIDTH = "14" *) (* C_ADDRB_WIDTH = "14" *) (* C_ALGORITHM = "1" *) 
(* C_AXI_ID_WIDTH = "4" *) (* C_AXI_SLAVE_TYPE = "0" *) (* C_AXI_TYPE = "1" *) 
(* C_BYTE_SIZE = "8" *) (* C_COMMON_CLK = "1" *) (* C_COUNT_18K_BRAM = "0" *) 
(* C_COUNT_36K_BRAM = "16" *) (* C_CTRL_ECC_ALGO = "NONE" *) (* C_DEFAULT_DATA = "0" *) 
(* C_DISABLE_WARN_BHV_COLL = "0" *) (* C_DISABLE_WARN_BHV_RANGE = "0" *) (* C_ELABORATION_DIR = "./" *) 
(* C_ENABLE_32BIT_ADDRESS = "0" *) (* C_EN_DEEPSLEEP_PIN = "0" *) (* C_EN_ECC_PIPE = "0" *) 
(* C_EN_RDADDRA_CHG = "0" *) (* C_EN_RDADDRB_CHG = "0" *) (* C_EN_SAFETY_CKT = "1" *) 
(* C_EN_SHUTDOWN_PIN = "0" *) (* C_EN_SLEEP_PIN = "0" *) (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     21.0181 mW" *) 
(* C_FAMILY = "artix7" *) (* C_HAS_AXI_ID = "1" *) (* C_HAS_ENA = "1" *) 
(* C_HAS_ENB = "1" *) (* C_HAS_INJECTERR = "0" *) (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
(* C_HAS_MEM_OUTPUT_REGS_B = "0" *) (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
(* C_HAS_REGCEA = "0" *) (* C_HAS_REGCEB = "0" *) (* C_HAS_RSTA = "0" *) 
(* C_HAS_RSTB = "1" *) (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
(* C_INITA_VAL = "0" *) (* C_INITB_VAL = "0" *) (* C_INIT_FILE = "axi.mem" *) 
(* C_INIT_FILE_NAME = "axi.mif" *) (* C_INTERFACE_TYPE = "1" *) (* C_LOAD_INIT_FILE = "1" *) 
(* C_MEM_TYPE = "1" *) (* C_MUX_PIPELINE_STAGES = "0" *) (* C_PRIM_TYPE = "1" *) 
(* C_READ_DEPTH_A = "16384" *) (* C_READ_DEPTH_B = "16384" *) (* C_READ_LATENCY_A = "1" *) 
(* C_READ_LATENCY_B = "1" *) (* C_READ_WIDTH_A = "32" *) (* C_READ_WIDTH_B = "32" *) 
(* C_RSTRAM_A = "0" *) (* C_RSTRAM_B = "0" *) (* C_RST_PRIORITY_A = "CE" *) 
(* C_RST_PRIORITY_B = "CE" *) (* C_SIM_COLLISION_CHECK = "ALL" *) (* C_USE_BRAM_BLOCK = "0" *) 
(* C_USE_BYTE_WEA = "1" *) (* C_USE_BYTE_WEB = "1" *) (* C_USE_DEFAULT_DATA = "1" *) 
(* C_USE_ECC = "0" *) (* C_USE_SOFTECC = "0" *) (* C_USE_URAM = "0" *) 
(* C_WEA_WIDTH = "4" *) (* C_WEB_WIDTH = "4" *) (* C_WRITE_DEPTH_A = "16384" *) 
(* C_WRITE_DEPTH_B = "16384" *) (* C_WRITE_MODE_A = "READ_FIRST" *) (* C_WRITE_MODE_B = "READ_FIRST" *) 
(* C_WRITE_WIDTH_A = "32" *) (* C_WRITE_WIDTH_B = "32" *) (* C_XDEVICEFAMILY = "artix7" *) 
(* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4
   (clka,
    rsta,
    ena,
    regcea,
    wea,
    addra,
    dina,
    douta,
    clkb,
    rstb,
    enb,
    regceb,
    web,
    addrb,
    dinb,
    doutb,
    injectsbiterr,
    injectdbiterr,
    eccpipece,
    sbiterr,
    dbiterr,
    rdaddrecc,
    sleep,
    deepsleep,
    shutdown,
    rsta_busy,
    rstb_busy,
    s_aclk,
    s_aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    s_axi_injectsbiterr,
    s_axi_injectdbiterr,
    s_axi_sbiterr,
    s_axi_dbiterr,
    s_axi_rdaddrecc);
  input clka;
  input rsta;
  input ena;
  input regcea;
  input [3:0]wea;
  input [13:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input rstb;
  input enb;
  input regceb;
  input [3:0]web;
  input [13:0]addrb;
  input [31:0]dinb;
  output [31:0]doutb;
  input injectsbiterr;
  input injectdbiterr;
  input eccpipece;
  output sbiterr;
  output dbiterr;
  output [13:0]rdaddrecc;
  input sleep;
  input deepsleep;
  input shutdown;
  output rsta_busy;
  output rstb_busy;
  input s_aclk;
  input s_aresetn;
  input [3:0]s_axi_awid;
  input [31:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input s_axi_awvalid;
  output s_axi_awready;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_wlast;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [31:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [31:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output s_axi_rvalid;
  input s_axi_rready;
  input s_axi_injectsbiterr;
  input s_axi_injectdbiterr;
  output s_axi_sbiterr;
  output s_axi_dbiterr;
  output [13:0]s_axi_rdaddrecc;

  wire \<const0> ;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire [31:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [31:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [31:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;

  assign dbiterr = \<const0> ;
  assign douta[31] = \<const0> ;
  assign douta[30] = \<const0> ;
  assign douta[29] = \<const0> ;
  assign douta[28] = \<const0> ;
  assign douta[27] = \<const0> ;
  assign douta[26] = \<const0> ;
  assign douta[25] = \<const0> ;
  assign douta[24] = \<const0> ;
  assign douta[23] = \<const0> ;
  assign douta[22] = \<const0> ;
  assign douta[21] = \<const0> ;
  assign douta[20] = \<const0> ;
  assign douta[19] = \<const0> ;
  assign douta[18] = \<const0> ;
  assign douta[17] = \<const0> ;
  assign douta[16] = \<const0> ;
  assign douta[15] = \<const0> ;
  assign douta[14] = \<const0> ;
  assign douta[13] = \<const0> ;
  assign douta[12] = \<const0> ;
  assign douta[11] = \<const0> ;
  assign douta[10] = \<const0> ;
  assign douta[9] = \<const0> ;
  assign douta[8] = \<const0> ;
  assign douta[7] = \<const0> ;
  assign douta[6] = \<const0> ;
  assign douta[5] = \<const0> ;
  assign douta[4] = \<const0> ;
  assign douta[3] = \<const0> ;
  assign douta[2] = \<const0> ;
  assign douta[1] = \<const0> ;
  assign douta[0] = \<const0> ;
  assign doutb[31] = \<const0> ;
  assign doutb[30] = \<const0> ;
  assign doutb[29] = \<const0> ;
  assign doutb[28] = \<const0> ;
  assign doutb[27] = \<const0> ;
  assign doutb[26] = \<const0> ;
  assign doutb[25] = \<const0> ;
  assign doutb[24] = \<const0> ;
  assign doutb[23] = \<const0> ;
  assign doutb[22] = \<const0> ;
  assign doutb[21] = \<const0> ;
  assign doutb[20] = \<const0> ;
  assign doutb[19] = \<const0> ;
  assign doutb[18] = \<const0> ;
  assign doutb[17] = \<const0> ;
  assign doutb[16] = \<const0> ;
  assign doutb[15] = \<const0> ;
  assign doutb[14] = \<const0> ;
  assign doutb[13] = \<const0> ;
  assign doutb[12] = \<const0> ;
  assign doutb[11] = \<const0> ;
  assign doutb[10] = \<const0> ;
  assign doutb[9] = \<const0> ;
  assign doutb[8] = \<const0> ;
  assign doutb[7] = \<const0> ;
  assign doutb[6] = \<const0> ;
  assign doutb[5] = \<const0> ;
  assign doutb[4] = \<const0> ;
  assign doutb[3] = \<const0> ;
  assign doutb[2] = \<const0> ;
  assign doutb[1] = \<const0> ;
  assign doutb[0] = \<const0> ;
  assign rdaddrecc[13] = \<const0> ;
  assign rdaddrecc[12] = \<const0> ;
  assign rdaddrecc[11] = \<const0> ;
  assign rdaddrecc[10] = \<const0> ;
  assign rdaddrecc[9] = \<const0> ;
  assign rdaddrecc[8] = \<const0> ;
  assign rdaddrecc[7] = \<const0> ;
  assign rdaddrecc[6] = \<const0> ;
  assign rdaddrecc[5] = \<const0> ;
  assign rdaddrecc[4] = \<const0> ;
  assign rdaddrecc[3] = \<const0> ;
  assign rdaddrecc[2] = \<const0> ;
  assign rdaddrecc[1] = \<const0> ;
  assign rdaddrecc[0] = \<const0> ;
  assign s_axi_bresp[1] = \<const0> ;
  assign s_axi_bresp[0] = \<const0> ;
  assign s_axi_dbiterr = \<const0> ;
  assign s_axi_rdaddrecc[13] = \<const0> ;
  assign s_axi_rdaddrecc[12] = \<const0> ;
  assign s_axi_rdaddrecc[11] = \<const0> ;
  assign s_axi_rdaddrecc[10] = \<const0> ;
  assign s_axi_rdaddrecc[9] = \<const0> ;
  assign s_axi_rdaddrecc[8] = \<const0> ;
  assign s_axi_rdaddrecc[7] = \<const0> ;
  assign s_axi_rdaddrecc[6] = \<const0> ;
  assign s_axi_rdaddrecc[5] = \<const0> ;
  assign s_axi_rdaddrecc[4] = \<const0> ;
  assign s_axi_rdaddrecc[3] = \<const0> ;
  assign s_axi_rdaddrecc[2] = \<const0> ;
  assign s_axi_rdaddrecc[1] = \<const0> ;
  assign s_axi_rdaddrecc[0] = \<const0> ;
  assign s_axi_rresp[1] = \<const0> ;
  assign s_axi_rresp[0] = \<const0> ;
  assign s_axi_sbiterr = \<const0> ;
  assign sbiterr = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth inst_blk_mem_gen
       (.\gaxi_bvalid_id_r.bvalid_r_reg (s_axi_bvalid),
        .\gaxi_full_sm.r_valid_r_reg (s_axi_rvalid),
        .rsta_busy(rsta_busy),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_araddr(s_axi_araddr[15:0]),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr[15:0]),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wvalid(s_axi_wvalid));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4_synth
   (\gaxi_full_sm.r_valid_r_reg ,
    s_axi_awready,
    s_axi_wready,
    \gaxi_bvalid_id_r.bvalid_r_reg ,
    s_axi_arready,
    s_axi_rid,
    rsta_busy,
    rstb_busy,
    s_axi_rdata,
    s_axi_bid,
    s_axi_rlast,
    s_aclk,
    s_axi_awburst,
    s_aresetn,
    s_axi_arvalid,
    s_axi_rready,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_arsize,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_bready,
    s_axi_arid,
    s_axi_awid,
    s_axi_wvalid,
    s_axi_awaddr,
    s_axi_awvalid,
    s_axi_arburst);
  output \gaxi_full_sm.r_valid_r_reg ;
  output s_axi_awready;
  output s_axi_wready;
  output \gaxi_bvalid_id_r.bvalid_r_reg ;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output rsta_busy;
  output rstb_busy;
  output [31:0]s_axi_rdata;
  output [3:0]s_axi_bid;
  output s_axi_rlast;
  input s_aclk;
  input [1:0]s_axi_awburst;
  input s_aresetn;
  input s_axi_arvalid;
  input s_axi_rready;
  input [15:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [2:0]s_axi_arsize;
  input [31:0]s_axi_wdata;
  input [3:0]s_axi_wstrb;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [3:0]s_axi_awid;
  input s_axi_wvalid;
  input [15:0]s_axi_awaddr;
  input s_axi_awvalid;
  input [1:0]s_axi_arburst;

  wire [2:1]ADDRB;
  wire \gaxi_bvalid_id_r.bvalid_r_reg ;
  wire \gaxi_full_sm.r_valid_r_reg ;
  wire rsta_busy;
  wire rstb_busy;
  wire s_aclk;
  wire s_aresetn;
  wire s_aresetn_a_c;
  wire [15:0]s_axi_araddr;
  wire [11:0]s_axi_araddr_out_c;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [15:0]s_axi_awaddr;
  wire [11:0]s_axi_awaddr_out_c;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_rd_en_c;
  wire [31:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [31:0]s_axi_wdata;
  wire s_axi_wready;
  wire [3:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire \valid.cstr/ramloop[0].ram.r/ENA_dly_D ;
  wire \valid.cstr/ramloop[12].ram.r/ENA_I ;
  wire \valid.cstr/ramloop[12].ram.r/ENB_I ;
  wire \valid.cstr/ramloop[13].ram.r/ENA_I ;
  wire \valid.cstr/ramloop[13].ram.r/ENB_I ;
  wire \valid.cstr/ramloop[14].ram.r/ENA_I ;
  wire \valid.cstr/ramloop[14].ram.r/ENB_I ;
  wire \valid.cstr/ramloop[14].ram.r/ENB_dly_D ;
  wire \valid.cstr/ramloop[15].ram.r/ENA_I ;
  wire \valid.cstr/ramloop[15].ram.r/ENB_I ;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_top \gnbram.gaxibmg.axi_blk_mem_gen 
       (.ADDRARDADDR(s_axi_awaddr_out_c),
        .ADDRB(ADDRB),
        .ADDRBWRADDR(s_axi_araddr_out_c),
        .E(s_axi_rd_en_c),
        .ENA_I(\valid.cstr/ramloop[12].ram.r/ENA_I ),
        .ENA_I_0(\valid.cstr/ramloop[13].ram.r/ENA_I ),
        .ENA_I_2(\valid.cstr/ramloop[14].ram.r/ENA_I ),
        .ENA_I_4(\valid.cstr/ramloop[15].ram.r/ENA_I ),
        .ENA_dly_D(\valid.cstr/ramloop[0].ram.r/ENA_dly_D ),
        .ENB_I(\valid.cstr/ramloop[12].ram.r/ENB_I ),
        .ENB_I_1(\valid.cstr/ramloop[13].ram.r/ENB_I ),
        .ENB_I_3(\valid.cstr/ramloop[14].ram.r/ENB_I ),
        .ENB_I_5(\valid.cstr/ramloop[15].ram.r/ENB_I ),
        .ENB_dly_D(\valid.cstr/ramloop[14].ram.r/ENB_dly_D ),
        .rsta_busy(rsta_busy),
        .rstb_busy(rstb_busy),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wstrb(s_axi_wstrb));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_read_wrapper \gnbram.gaxibmg.axi_rd_sm 
       (.ADDRB(ADDRB),
        .ADDRBWRADDR(s_axi_araddr_out_c),
        .E(s_axi_rd_en_c),
        .ENB_I(\valid.cstr/ramloop[14].ram.r/ENB_I ),
        .ENB_I_0(\valid.cstr/ramloop[15].ram.r/ENB_I ),
        .ENB_I_1(\valid.cstr/ramloop[13].ram.r/ENB_I ),
        .ENB_I_2(\valid.cstr/ramloop[12].ram.r/ENB_I ),
        .ENB_dly_D(\valid.cstr/ramloop[14].ram.r/ENB_dly_D ),
        .\gaxi_full_sm.r_valid_r_reg (\gaxi_full_sm.r_valid_r_reg ),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_aresetn_a_c(s_aresetn_a_c),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_axi_write_wrapper \gnbram.gaxibmg.axi_wr_fsm 
       (.ADDRARDADDR(s_axi_awaddr_out_c),
        .ENA_I(\valid.cstr/ramloop[15].ram.r/ENA_I ),
        .ENA_I_0(\valid.cstr/ramloop[14].ram.r/ENA_I ),
        .ENA_I_1(\valid.cstr/ramloop[13].ram.r/ENA_I ),
        .ENA_I_2(\valid.cstr/ramloop[12].ram.r/ENA_I ),
        .ENA_dly_D(\valid.cstr/ramloop[0].ram.r/ENA_dly_D ),
        .SR(s_aresetn_a_c),
        .\gaxi_bvalid_id_r.bvalid_r_reg_0 (\gaxi_bvalid_id_r.bvalid_r_reg ),
        .s_aclk(s_aclk),
        .s_aresetn(s_aresetn),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_wready(s_axi_wready),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
