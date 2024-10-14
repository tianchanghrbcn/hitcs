-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Aug 20 19:25:36 2024
-- Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/ywy_c/Documents/coding/hitcoa_at2024/lab4/lab4.srcs/sources_1/ip/ma_river_core_0/ma_river_core_0_stub.vhdl
-- Design      : ma_river_core_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity ma_river_core_0 is
  Port ( 
    ext_int : in STD_LOGIC_VECTOR ( 5 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    araddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    arlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    arvalid : out STD_LOGIC;
    arready : in STD_LOGIC;
    rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    rlast : in STD_LOGIC;
    rvalid : in STD_LOGIC;
    rready : out STD_LOGIC;
    awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    awaddr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    awlen : out STD_LOGIC_VECTOR ( 3 downto 0 );
    awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    awlock : out STD_LOGIC_VECTOR ( 1 downto 0 );
    awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    awvalid : out STD_LOGIC;
    awready : in STD_LOGIC;
    wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    wstrb : out STD_LOGIC_VECTOR ( 3 downto 0 );
    wlast : out STD_LOGIC;
    wvalid : out STD_LOGIC;
    wready : in STD_LOGIC;
    bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    bvalid : in STD_LOGIC;
    bready : out STD_LOGIC;
    debug_wb_pc0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_rf_wen0 : out STD_LOGIC;
    debug_wb_rf_wnum0 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    debug_wb_rf_wdata0 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_pc1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_rf_wen1 : out STD_LOGIC;
    debug_wb_rf_wnum1 : out STD_LOGIC_VECTOR ( 4 downto 0 );
    debug_wb_rf_wdata1 : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_pc : out STD_LOGIC_VECTOR ( 31 downto 0 );
    debug_wb_rf_wen : out STD_LOGIC;
    debug_wb_rf_wnum : out STD_LOGIC_VECTOR ( 4 downto 0 );
    debug_wb_rf_wdata : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );

end ma_river_core_0;

architecture stub of ma_river_core_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ext_int[5:0],aclk,aresetn,arid[3:0],araddr[31:0],arlen[3:0],arsize[2:0],arburst[1:0],arlock[1:0],arcache[3:0],arprot[2:0],arvalid,arready,rid[3:0],rdata[31:0],rresp[1:0],rlast,rvalid,rready,awid[3:0],awaddr[31:0],awlen[3:0],awsize[2:0],awburst[1:0],awlock[1:0],awcache[3:0],awprot[2:0],awvalid,awready,wid[3:0],wdata[31:0],wstrb[3:0],wlast,wvalid,wready,bid[3:0],bresp[1:0],bvalid,bready,debug_wb_pc0[31:0],debug_wb_rf_wen0,debug_wb_rf_wnum0[4:0],debug_wb_rf_wdata0[31:0],debug_wb_pc1[31:0],debug_wb_rf_wen1,debug_wb_rf_wnum1[4:0],debug_wb_rf_wdata1[31:0],debug_wb_pc[31:0],debug_wb_rf_wen,debug_wb_rf_wnum[4:0],debug_wb_rf_wdata[31:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ma_river_core,Vivado 2019.2";
begin
end;
