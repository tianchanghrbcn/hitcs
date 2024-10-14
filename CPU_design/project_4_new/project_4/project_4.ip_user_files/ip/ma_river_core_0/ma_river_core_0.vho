-- (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of Xilinx, Inc. and is protected under U.S. and
-- international copyright and other intellectual property
-- laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- Xilinx, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) Xilinx shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or Xilinx had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- Xilinx products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of Xilinx products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: hit.edu.cn:user:ma_river_core:1.0
-- IP Revision: 2

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT ma_river_core_0
  PORT (
    ext_int : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    arid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    araddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    arlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    arsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    arburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    arlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    arcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    arprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    arvalid : OUT STD_LOGIC;
    arready : IN STD_LOGIC;
    rid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    rdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    rresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rlast : IN STD_LOGIC;
    rvalid : IN STD_LOGIC;
    rready : OUT STD_LOGIC;
    awid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    awaddr : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    awlen : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    awsize : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    awburst : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    awlock : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    awcache : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    awprot : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
    awvalid : OUT STD_LOGIC;
    awready : IN STD_LOGIC;
    wid : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    wstrb : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    wlast : OUT STD_LOGIC;
    wvalid : OUT STD_LOGIC;
    wready : IN STD_LOGIC;
    bid : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    bresp : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    bvalid : IN STD_LOGIC;
    bready : OUT STD_LOGIC;
    debug_wb_pc0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    debug_wb_rf_wen0 : OUT STD_LOGIC;
    debug_wb_rf_wnum0 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    debug_wb_rf_wdata0 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    debug_wb_pc1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    debug_wb_rf_wen1 : OUT STD_LOGIC;
    debug_wb_rf_wnum1 : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    debug_wb_rf_wdata1 : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    debug_wb_pc : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    debug_wb_rf_wen : OUT STD_LOGIC;
    debug_wb_rf_wnum : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    debug_wb_rf_wdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0)
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : ma_river_core_0
  PORT MAP (
    ext_int => ext_int,
    aclk => aclk,
    aresetn => aresetn,
    arid => arid,
    araddr => araddr,
    arlen => arlen,
    arsize => arsize,
    arburst => arburst,
    arlock => arlock,
    arcache => arcache,
    arprot => arprot,
    arvalid => arvalid,
    arready => arready,
    rid => rid,
    rdata => rdata,
    rresp => rresp,
    rlast => rlast,
    rvalid => rvalid,
    rready => rready,
    awid => awid,
    awaddr => awaddr,
    awlen => awlen,
    awsize => awsize,
    awburst => awburst,
    awlock => awlock,
    awcache => awcache,
    awprot => awprot,
    awvalid => awvalid,
    awready => awready,
    wid => wid,
    wdata => wdata,
    wstrb => wstrb,
    wlast => wlast,
    wvalid => wvalid,
    wready => wready,
    bid => bid,
    bresp => bresp,
    bvalid => bvalid,
    bready => bready,
    debug_wb_pc0 => debug_wb_pc0,
    debug_wb_rf_wen0 => debug_wb_rf_wen0,
    debug_wb_rf_wnum0 => debug_wb_rf_wnum0,
    debug_wb_rf_wdata0 => debug_wb_rf_wdata0,
    debug_wb_pc1 => debug_wb_pc1,
    debug_wb_rf_wen1 => debug_wb_rf_wen1,
    debug_wb_rf_wnum1 => debug_wb_rf_wnum1,
    debug_wb_rf_wdata1 => debug_wb_rf_wdata1,
    debug_wb_pc => debug_wb_pc,
    debug_wb_rf_wen => debug_wb_rf_wen,
    debug_wb_rf_wnum => debug_wb_rf_wnum,
    debug_wb_rf_wdata => debug_wb_rf_wdata
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

