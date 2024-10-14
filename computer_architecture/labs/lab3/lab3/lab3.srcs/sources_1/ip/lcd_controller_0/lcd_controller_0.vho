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

-- IP VLNV: xilinx.com:user:lcd_controller:1.0
-- IP Revision: 4

-- The following code must appear in the VHDL architecture header.

------------- Begin Cut here for COMPONENT Declaration ------ COMP_TAG
COMPONENT lcd_controller_0
  PORT (
    aclk : IN STD_LOGIC;
    aresetn : IN STD_LOGIC;
    sim : IN STD_LOGIC;
    lcd_rst : OUT STD_LOGIC;
    lcd_cs : OUT STD_LOGIC;
    lcd_rs : OUT STD_LOGIC;
    lcd_rd : OUT STD_LOGIC;
    lcd_wr : OUT STD_LOGIC;
    lcd_db : INOUT STD_LOGIC_VECTOR(15 DOWNTO 0);
    lcd_bl_ctr : OUT STD_LOGIC;
    dma_start_en : OUT STD_LOGIC;
    dma_address : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    dma_length : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    dma_iack : OUT STD_LOGIC;
    dma_ready_dev : OUT STD_LOGIC;
    dma_valid_dev : IN STD_LOGIC;
    dma_last_dev : IN STD_LOGIC;
    dma_data_dev : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    grc_io_port_raddress : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    grc_io_port_rdataword : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    grc_io_port_waddress : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    grc_io_port_wenable : OUT STD_LOGIC;
    grc_io_port_wdataword : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    arid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    araddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    arlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    arsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    arburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    arlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    arcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    arprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    arvalid : IN STD_LOGIC;
    arready : OUT STD_LOGIC;
    rid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    rdata : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    rresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rlast : OUT STD_LOGIC;
    rvalid : OUT STD_LOGIC;
    rready : IN STD_LOGIC;
    awid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    awaddr : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    awlen : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    awsize : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    awburst : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    awlock : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    awcache : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    awprot : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
    awvalid : IN STD_LOGIC;
    awready : OUT STD_LOGIC;
    wid : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
    wdata : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    wstrb : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    wlast : IN STD_LOGIC;
    wvalid : IN STD_LOGIC;
    wready : OUT STD_LOGIC;
    bid : OUT STD_LOGIC_VECTOR(5 DOWNTO 0);
    bresp : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    bvalid : OUT STD_LOGIC;
    bready : IN STD_LOGIC
  );
END COMPONENT;
-- COMP_TAG_END ------ End COMPONENT Declaration ------------

-- The following code must appear in the VHDL architecture
-- body. Substitute your own instance name and net names.

------------- Begin Cut here for INSTANTIATION Template ----- INST_TAG
your_instance_name : lcd_controller_0
  PORT MAP (
    aclk => aclk,
    aresetn => aresetn,
    sim => sim,
    lcd_rst => lcd_rst,
    lcd_cs => lcd_cs,
    lcd_rs => lcd_rs,
    lcd_rd => lcd_rd,
    lcd_wr => lcd_wr,
    lcd_db => lcd_db,
    lcd_bl_ctr => lcd_bl_ctr,
    dma_start_en => dma_start_en,
    dma_address => dma_address,
    dma_length => dma_length,
    dma_iack => dma_iack,
    dma_ready_dev => dma_ready_dev,
    dma_valid_dev => dma_valid_dev,
    dma_last_dev => dma_last_dev,
    dma_data_dev => dma_data_dev,
    grc_io_port_raddress => grc_io_port_raddress,
    grc_io_port_rdataword => grc_io_port_rdataword,
    grc_io_port_waddress => grc_io_port_waddress,
    grc_io_port_wenable => grc_io_port_wenable,
    grc_io_port_wdataword => grc_io_port_wdataword,
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
    bready => bready
  );
-- INST_TAG_END ------ End INSTANTIATION Template ---------

-- You must compile the wrapper file lcd_controller_0.vhd when simulating
-- the core, lcd_controller_0. When compiling the wrapper file, be sure to
-- reference the VHDL simulation library.

