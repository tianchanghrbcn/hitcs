-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Tue Sep 10 19:18:22 2024
-- Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ cpu_data_ram_sim_netlist.vhdl
-- Design      : cpu_data_ram
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram is
  port (
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram is
  signal qspo_int : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of qspo_int : signal is "true";
  signal \^spo\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute KEEP : string;
  attribute KEEP of \qspo_int_reg[0]\ : label is "yes";
  attribute equivalent_register_removal : string;
  attribute equivalent_register_removal of \qspo_int_reg[0]\ : label is "no";
  attribute KEEP of \qspo_int_reg[10]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[10]\ : label is "no";
  attribute KEEP of \qspo_int_reg[11]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[11]\ : label is "no";
  attribute KEEP of \qspo_int_reg[12]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[12]\ : label is "no";
  attribute KEEP of \qspo_int_reg[13]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[13]\ : label is "no";
  attribute KEEP of \qspo_int_reg[14]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[14]\ : label is "no";
  attribute KEEP of \qspo_int_reg[15]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[15]\ : label is "no";
  attribute KEEP of \qspo_int_reg[16]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[16]\ : label is "no";
  attribute KEEP of \qspo_int_reg[17]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[17]\ : label is "no";
  attribute KEEP of \qspo_int_reg[18]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[18]\ : label is "no";
  attribute KEEP of \qspo_int_reg[19]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[19]\ : label is "no";
  attribute KEEP of \qspo_int_reg[1]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[1]\ : label is "no";
  attribute KEEP of \qspo_int_reg[20]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[20]\ : label is "no";
  attribute KEEP of \qspo_int_reg[21]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[21]\ : label is "no";
  attribute KEEP of \qspo_int_reg[22]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[22]\ : label is "no";
  attribute KEEP of \qspo_int_reg[23]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[23]\ : label is "no";
  attribute KEEP of \qspo_int_reg[24]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[24]\ : label is "no";
  attribute KEEP of \qspo_int_reg[25]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[25]\ : label is "no";
  attribute KEEP of \qspo_int_reg[26]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[26]\ : label is "no";
  attribute KEEP of \qspo_int_reg[27]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[27]\ : label is "no";
  attribute KEEP of \qspo_int_reg[28]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[28]\ : label is "no";
  attribute KEEP of \qspo_int_reg[29]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[29]\ : label is "no";
  attribute KEEP of \qspo_int_reg[2]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[2]\ : label is "no";
  attribute KEEP of \qspo_int_reg[30]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[30]\ : label is "no";
  attribute KEEP of \qspo_int_reg[31]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[31]\ : label is "no";
  attribute KEEP of \qspo_int_reg[3]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[3]\ : label is "no";
  attribute KEEP of \qspo_int_reg[4]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[4]\ : label is "no";
  attribute KEEP of \qspo_int_reg[5]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[5]\ : label is "no";
  attribute KEEP of \qspo_int_reg[6]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[6]\ : label is "no";
  attribute KEEP of \qspo_int_reg[7]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[7]\ : label is "no";
  attribute KEEP of \qspo_int_reg[8]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[8]\ : label is "no";
  attribute KEEP of \qspo_int_reg[9]\ : label is "yes";
  attribute equivalent_register_removal of \qspo_int_reg[9]\ : label is "no";
  attribute RTL_RAM_BITS : integer;
  attribute RTL_RAM_BITS of ram_reg_0_127_0_0 : label is 4096;
  attribute RTL_RAM_NAME : string;
  attribute RTL_RAM_NAME of ram_reg_0_127_0_0 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin : integer;
  attribute ram_addr_begin of ram_reg_0_127_0_0 : label is 0;
  attribute ram_addr_end : integer;
  attribute ram_addr_end of ram_reg_0_127_0_0 : label is 127;
  attribute ram_offset : integer;
  attribute ram_offset of ram_reg_0_127_0_0 : label is 0;
  attribute ram_slice_begin : integer;
  attribute ram_slice_begin of ram_reg_0_127_0_0 : label is 0;
  attribute ram_slice_end : integer;
  attribute ram_slice_end of ram_reg_0_127_0_0 : label is 0;
  attribute RTL_RAM_BITS of ram_reg_0_127_10_10 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_10_10 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_10_10 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_10_10 : label is 127;
  attribute ram_offset of ram_reg_0_127_10_10 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_10_10 : label is 10;
  attribute ram_slice_end of ram_reg_0_127_10_10 : label is 10;
  attribute RTL_RAM_BITS of ram_reg_0_127_11_11 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_11_11 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_11_11 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_11_11 : label is 127;
  attribute ram_offset of ram_reg_0_127_11_11 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_11_11 : label is 11;
  attribute ram_slice_end of ram_reg_0_127_11_11 : label is 11;
  attribute RTL_RAM_BITS of ram_reg_0_127_12_12 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_12_12 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_12_12 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_12_12 : label is 127;
  attribute ram_offset of ram_reg_0_127_12_12 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_12_12 : label is 12;
  attribute ram_slice_end of ram_reg_0_127_12_12 : label is 12;
  attribute RTL_RAM_BITS of ram_reg_0_127_13_13 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_13_13 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_13_13 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_13_13 : label is 127;
  attribute ram_offset of ram_reg_0_127_13_13 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_13_13 : label is 13;
  attribute ram_slice_end of ram_reg_0_127_13_13 : label is 13;
  attribute RTL_RAM_BITS of ram_reg_0_127_14_14 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_14_14 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_14_14 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_14_14 : label is 127;
  attribute ram_offset of ram_reg_0_127_14_14 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_14_14 : label is 14;
  attribute ram_slice_end of ram_reg_0_127_14_14 : label is 14;
  attribute RTL_RAM_BITS of ram_reg_0_127_15_15 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_15_15 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_15_15 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_15_15 : label is 127;
  attribute ram_offset of ram_reg_0_127_15_15 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_15_15 : label is 15;
  attribute ram_slice_end of ram_reg_0_127_15_15 : label is 15;
  attribute RTL_RAM_BITS of ram_reg_0_127_16_16 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_16_16 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_16_16 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_16_16 : label is 127;
  attribute ram_offset of ram_reg_0_127_16_16 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_16_16 : label is 16;
  attribute ram_slice_end of ram_reg_0_127_16_16 : label is 16;
  attribute RTL_RAM_BITS of ram_reg_0_127_17_17 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_17_17 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_17_17 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_17_17 : label is 127;
  attribute ram_offset of ram_reg_0_127_17_17 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_17_17 : label is 17;
  attribute ram_slice_end of ram_reg_0_127_17_17 : label is 17;
  attribute RTL_RAM_BITS of ram_reg_0_127_18_18 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_18_18 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_18_18 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_18_18 : label is 127;
  attribute ram_offset of ram_reg_0_127_18_18 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_18_18 : label is 18;
  attribute ram_slice_end of ram_reg_0_127_18_18 : label is 18;
  attribute RTL_RAM_BITS of ram_reg_0_127_19_19 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_19_19 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_19_19 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_19_19 : label is 127;
  attribute ram_offset of ram_reg_0_127_19_19 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_19_19 : label is 19;
  attribute ram_slice_end of ram_reg_0_127_19_19 : label is 19;
  attribute RTL_RAM_BITS of ram_reg_0_127_1_1 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_1_1 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_1_1 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_1_1 : label is 127;
  attribute ram_offset of ram_reg_0_127_1_1 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_1_1 : label is 1;
  attribute ram_slice_end of ram_reg_0_127_1_1 : label is 1;
  attribute RTL_RAM_BITS of ram_reg_0_127_20_20 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_20_20 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_20_20 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_20_20 : label is 127;
  attribute ram_offset of ram_reg_0_127_20_20 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_20_20 : label is 20;
  attribute ram_slice_end of ram_reg_0_127_20_20 : label is 20;
  attribute RTL_RAM_BITS of ram_reg_0_127_21_21 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_21_21 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_21_21 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_21_21 : label is 127;
  attribute ram_offset of ram_reg_0_127_21_21 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_21_21 : label is 21;
  attribute ram_slice_end of ram_reg_0_127_21_21 : label is 21;
  attribute RTL_RAM_BITS of ram_reg_0_127_22_22 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_22_22 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_22_22 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_22_22 : label is 127;
  attribute ram_offset of ram_reg_0_127_22_22 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_22_22 : label is 22;
  attribute ram_slice_end of ram_reg_0_127_22_22 : label is 22;
  attribute RTL_RAM_BITS of ram_reg_0_127_23_23 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_23_23 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_23_23 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_23_23 : label is 127;
  attribute ram_offset of ram_reg_0_127_23_23 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_23_23 : label is 23;
  attribute ram_slice_end of ram_reg_0_127_23_23 : label is 23;
  attribute RTL_RAM_BITS of ram_reg_0_127_24_24 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_24_24 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_24_24 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_24_24 : label is 127;
  attribute ram_offset of ram_reg_0_127_24_24 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_24_24 : label is 24;
  attribute ram_slice_end of ram_reg_0_127_24_24 : label is 24;
  attribute RTL_RAM_BITS of ram_reg_0_127_25_25 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_25_25 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_25_25 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_25_25 : label is 127;
  attribute ram_offset of ram_reg_0_127_25_25 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_25_25 : label is 25;
  attribute ram_slice_end of ram_reg_0_127_25_25 : label is 25;
  attribute RTL_RAM_BITS of ram_reg_0_127_26_26 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_26_26 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_26_26 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_26_26 : label is 127;
  attribute ram_offset of ram_reg_0_127_26_26 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_26_26 : label is 26;
  attribute ram_slice_end of ram_reg_0_127_26_26 : label is 26;
  attribute RTL_RAM_BITS of ram_reg_0_127_27_27 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_27_27 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_27_27 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_27_27 : label is 127;
  attribute ram_offset of ram_reg_0_127_27_27 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_27_27 : label is 27;
  attribute ram_slice_end of ram_reg_0_127_27_27 : label is 27;
  attribute RTL_RAM_BITS of ram_reg_0_127_28_28 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_28_28 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_28_28 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_28_28 : label is 127;
  attribute ram_offset of ram_reg_0_127_28_28 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_28_28 : label is 28;
  attribute ram_slice_end of ram_reg_0_127_28_28 : label is 28;
  attribute RTL_RAM_BITS of ram_reg_0_127_29_29 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_29_29 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_29_29 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_29_29 : label is 127;
  attribute ram_offset of ram_reg_0_127_29_29 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_29_29 : label is 29;
  attribute ram_slice_end of ram_reg_0_127_29_29 : label is 29;
  attribute RTL_RAM_BITS of ram_reg_0_127_2_2 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_2_2 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_2_2 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_2_2 : label is 127;
  attribute ram_offset of ram_reg_0_127_2_2 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_2_2 : label is 2;
  attribute ram_slice_end of ram_reg_0_127_2_2 : label is 2;
  attribute RTL_RAM_BITS of ram_reg_0_127_30_30 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_30_30 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_30_30 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_30_30 : label is 127;
  attribute ram_offset of ram_reg_0_127_30_30 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_30_30 : label is 30;
  attribute ram_slice_end of ram_reg_0_127_30_30 : label is 30;
  attribute RTL_RAM_BITS of ram_reg_0_127_31_31 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_31_31 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_31_31 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_31_31 : label is 127;
  attribute ram_offset of ram_reg_0_127_31_31 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_31_31 : label is 31;
  attribute ram_slice_end of ram_reg_0_127_31_31 : label is 31;
  attribute RTL_RAM_BITS of ram_reg_0_127_3_3 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_3_3 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_3_3 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_3_3 : label is 127;
  attribute ram_offset of ram_reg_0_127_3_3 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_3_3 : label is 3;
  attribute ram_slice_end of ram_reg_0_127_3_3 : label is 3;
  attribute RTL_RAM_BITS of ram_reg_0_127_4_4 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_4_4 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_4_4 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_4_4 : label is 127;
  attribute ram_offset of ram_reg_0_127_4_4 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_4_4 : label is 4;
  attribute ram_slice_end of ram_reg_0_127_4_4 : label is 4;
  attribute RTL_RAM_BITS of ram_reg_0_127_5_5 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_5_5 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_5_5 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_5_5 : label is 127;
  attribute ram_offset of ram_reg_0_127_5_5 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_5_5 : label is 5;
  attribute ram_slice_end of ram_reg_0_127_5_5 : label is 5;
  attribute RTL_RAM_BITS of ram_reg_0_127_6_6 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_6_6 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_6_6 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_6_6 : label is 127;
  attribute ram_offset of ram_reg_0_127_6_6 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_6_6 : label is 6;
  attribute ram_slice_end of ram_reg_0_127_6_6 : label is 6;
  attribute RTL_RAM_BITS of ram_reg_0_127_7_7 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_7_7 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_7_7 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_7_7 : label is 127;
  attribute ram_offset of ram_reg_0_127_7_7 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_7_7 : label is 7;
  attribute ram_slice_end of ram_reg_0_127_7_7 : label is 7;
  attribute RTL_RAM_BITS of ram_reg_0_127_8_8 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_8_8 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_8_8 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_8_8 : label is 127;
  attribute ram_offset of ram_reg_0_127_8_8 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_8_8 : label is 8;
  attribute ram_slice_end of ram_reg_0_127_8_8 : label is 8;
  attribute RTL_RAM_BITS of ram_reg_0_127_9_9 : label is 4096;
  attribute RTL_RAM_NAME of ram_reg_0_127_9_9 : label is "synth_options.dist_mem_inst/gen_sp_ram.spram_inst/ram";
  attribute ram_addr_begin of ram_reg_0_127_9_9 : label is 0;
  attribute ram_addr_end of ram_reg_0_127_9_9 : label is 127;
  attribute ram_offset of ram_reg_0_127_9_9 : label is 0;
  attribute ram_slice_begin of ram_reg_0_127_9_9 : label is 9;
  attribute ram_slice_end of ram_reg_0_127_9_9 : label is 9;
begin
  spo(31 downto 0) <= \^spo\(31 downto 0);
\qspo_int_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(0),
      Q => qspo_int(0),
      R => '0'
    );
\qspo_int_reg[10]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(10),
      Q => qspo_int(10),
      R => '0'
    );
\qspo_int_reg[11]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(11),
      Q => qspo_int(11),
      R => '0'
    );
\qspo_int_reg[12]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(12),
      Q => qspo_int(12),
      R => '0'
    );
\qspo_int_reg[13]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(13),
      Q => qspo_int(13),
      R => '0'
    );
\qspo_int_reg[14]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(14),
      Q => qspo_int(14),
      R => '0'
    );
\qspo_int_reg[15]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(15),
      Q => qspo_int(15),
      R => '0'
    );
\qspo_int_reg[16]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(16),
      Q => qspo_int(16),
      R => '0'
    );
\qspo_int_reg[17]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(17),
      Q => qspo_int(17),
      R => '0'
    );
\qspo_int_reg[18]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(18),
      Q => qspo_int(18),
      R => '0'
    );
\qspo_int_reg[19]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(19),
      Q => qspo_int(19),
      R => '0'
    );
\qspo_int_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(1),
      Q => qspo_int(1),
      R => '0'
    );
\qspo_int_reg[20]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(20),
      Q => qspo_int(20),
      R => '0'
    );
\qspo_int_reg[21]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(21),
      Q => qspo_int(21),
      R => '0'
    );
\qspo_int_reg[22]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(22),
      Q => qspo_int(22),
      R => '0'
    );
\qspo_int_reg[23]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(23),
      Q => qspo_int(23),
      R => '0'
    );
\qspo_int_reg[24]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(24),
      Q => qspo_int(24),
      R => '0'
    );
\qspo_int_reg[25]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(25),
      Q => qspo_int(25),
      R => '0'
    );
\qspo_int_reg[26]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(26),
      Q => qspo_int(26),
      R => '0'
    );
\qspo_int_reg[27]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(27),
      Q => qspo_int(27),
      R => '0'
    );
\qspo_int_reg[28]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(28),
      Q => qspo_int(28),
      R => '0'
    );
\qspo_int_reg[29]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(29),
      Q => qspo_int(29),
      R => '0'
    );
\qspo_int_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(2),
      Q => qspo_int(2),
      R => '0'
    );
\qspo_int_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(30),
      Q => qspo_int(30),
      R => '0'
    );
\qspo_int_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(31),
      Q => qspo_int(31),
      R => '0'
    );
\qspo_int_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(3),
      Q => qspo_int(3),
      R => '0'
    );
\qspo_int_reg[4]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(4),
      Q => qspo_int(4),
      R => '0'
    );
\qspo_int_reg[5]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(5),
      Q => qspo_int(5),
      R => '0'
    );
\qspo_int_reg[6]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(6),
      Q => qspo_int(6),
      R => '0'
    );
\qspo_int_reg[7]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(7),
      Q => qspo_int(7),
      R => '0'
    );
\qspo_int_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(8),
      Q => qspo_int(8),
      R => '0'
    );
\qspo_int_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => clk,
      CE => '1',
      D => \^spo\(9),
      Q => qspo_int(9),
      R => '0'
    );
ram_reg_0_127_0_0: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(0),
      O => \^spo\(0),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_10_10: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(10),
      O => \^spo\(10),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_11_11: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(11),
      O => \^spo\(11),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_12_12: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(12),
      O => \^spo\(12),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_13_13: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(13),
      O => \^spo\(13),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_14_14: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(14),
      O => \^spo\(14),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_15_15: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(15),
      O => \^spo\(15),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_16_16: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(16),
      O => \^spo\(16),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_17_17: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(17),
      O => \^spo\(17),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_18_18: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(18),
      O => \^spo\(18),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_19_19: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(19),
      O => \^spo\(19),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_1_1: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"33333333333333333333333333333333"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(1),
      O => \^spo\(1),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_20_20: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(20),
      O => \^spo\(20),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_21_21: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(21),
      O => \^spo\(21),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_22_22: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(22),
      O => \^spo\(22),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_23_23: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(23),
      O => \^spo\(23),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_24_24: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(24),
      O => \^spo\(24),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_25_25: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(25),
      O => \^spo\(25),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_26_26: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(26),
      O => \^spo\(26),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_27_27: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(27),
      O => \^spo\(27),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_28_28: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(28),
      O => \^spo\(28),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_29_29: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(29),
      O => \^spo\(29),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_2_2: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C3C"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(2),
      O => \^spo\(2),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_30_30: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(30),
      O => \^spo\(30),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_31_31: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(31),
      O => \^spo\(31),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_3_3: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"3FC03FC03FC03FC03FC03FC03FC03FC0"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(3),
      O => \^spo\(3),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_4_4: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"3FFFC0003FFFC0003FFFC0003FFFC000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(4),
      O => \^spo\(4),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_5_5: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"3FFFFFFFC00000003FFFFFFFC0000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(5),
      O => \^spo\(5),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_6_6: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"3FFFFFFFFFFFFFFFC000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(6),
      O => \^spo\(6),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_7_7: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"C0000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(7),
      O => \^spo\(7),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_8_8: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(8),
      O => \^spo\(8),
      WCLK => clk,
      WE => we
    );
ram_reg_0_127_9_9: unisim.vcomponents.RAM128X1S
    generic map(
      INIT => X"00000000000000000000000000000000"
    )
        port map (
      A0 => a(0),
      A1 => a(1),
      A2 => a(2),
      A3 => a(3),
      A4 => a(4),
      A5 => a(5),
      A6 => a(6),
      D => d(9),
      O => \^spo\(9),
      WCLK => clk,
      WE => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    we : in STD_LOGIC;
    a : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth is
begin
\gen_sp_ram.spram_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_spram
     port map (
      a(6 downto 0) => a(6 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      spo(31 downto 0) => spo(31 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 6 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 6 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    i_ce : in STD_LOGIC;
    qspo_ce : in STD_LOGIC;
    qdpo_ce : in STD_LOGIC;
    qdpo_clk : in STD_LOGIC;
    qspo_rst : in STD_LOGIC;
    qdpo_rst : in STD_LOGIC;
    qspo_srst : in STD_LOGIC;
    qdpo_srst : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 31 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 7;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 128;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is "cpu_data_ram.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 : entity is 32;
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
begin
  dpo(31) <= \<const0>\;
  dpo(30) <= \<const0>\;
  dpo(29) <= \<const0>\;
  dpo(28) <= \<const0>\;
  dpo(27) <= \<const0>\;
  dpo(26) <= \<const0>\;
  dpo(25) <= \<const0>\;
  dpo(24) <= \<const0>\;
  dpo(23) <= \<const0>\;
  dpo(22) <= \<const0>\;
  dpo(21) <= \<const0>\;
  dpo(20) <= \<const0>\;
  dpo(19) <= \<const0>\;
  dpo(18) <= \<const0>\;
  dpo(17) <= \<const0>\;
  dpo(16) <= \<const0>\;
  dpo(15) <= \<const0>\;
  dpo(14) <= \<const0>\;
  dpo(13) <= \<const0>\;
  dpo(12) <= \<const0>\;
  dpo(11) <= \<const0>\;
  dpo(10) <= \<const0>\;
  dpo(9) <= \<const0>\;
  dpo(8) <= \<const0>\;
  dpo(7) <= \<const0>\;
  dpo(6) <= \<const0>\;
  dpo(5) <= \<const0>\;
  dpo(4) <= \<const0>\;
  dpo(3) <= \<const0>\;
  dpo(2) <= \<const0>\;
  dpo(1) <= \<const0>\;
  dpo(0) <= \<const0>\;
  qdpo(31) <= \<const0>\;
  qdpo(30) <= \<const0>\;
  qdpo(29) <= \<const0>\;
  qdpo(28) <= \<const0>\;
  qdpo(27) <= \<const0>\;
  qdpo(26) <= \<const0>\;
  qdpo(25) <= \<const0>\;
  qdpo(24) <= \<const0>\;
  qdpo(23) <= \<const0>\;
  qdpo(22) <= \<const0>\;
  qdpo(21) <= \<const0>\;
  qdpo(20) <= \<const0>\;
  qdpo(19) <= \<const0>\;
  qdpo(18) <= \<const0>\;
  qdpo(17) <= \<const0>\;
  qdpo(16) <= \<const0>\;
  qdpo(15) <= \<const0>\;
  qdpo(14) <= \<const0>\;
  qdpo(13) <= \<const0>\;
  qdpo(12) <= \<const0>\;
  qdpo(11) <= \<const0>\;
  qdpo(10) <= \<const0>\;
  qdpo(9) <= \<const0>\;
  qdpo(8) <= \<const0>\;
  qdpo(7) <= \<const0>\;
  qdpo(6) <= \<const0>\;
  qdpo(5) <= \<const0>\;
  qdpo(4) <= \<const0>\;
  qdpo(3) <= \<const0>\;
  qdpo(2) <= \<const0>\;
  qdpo(1) <= \<const0>\;
  qdpo(0) <= \<const0>\;
  qspo(31) <= \<const0>\;
  qspo(30) <= \<const0>\;
  qspo(29) <= \<const0>\;
  qspo(28) <= \<const0>\;
  qspo(27) <= \<const0>\;
  qspo(26) <= \<const0>\;
  qspo(25) <= \<const0>\;
  qspo(24) <= \<const0>\;
  qspo(23) <= \<const0>\;
  qspo(22) <= \<const0>\;
  qspo(21) <= \<const0>\;
  qspo(20) <= \<const0>\;
  qspo(19) <= \<const0>\;
  qspo(18) <= \<const0>\;
  qspo(17) <= \<const0>\;
  qspo(16) <= \<const0>\;
  qspo(15) <= \<const0>\;
  qspo(14) <= \<const0>\;
  qspo(13) <= \<const0>\;
  qspo(12) <= \<const0>\;
  qspo(11) <= \<const0>\;
  qspo(10) <= \<const0>\;
  qspo(9) <= \<const0>\;
  qspo(8) <= \<const0>\;
  qspo(7) <= \<const0>\;
  qspo(6) <= \<const0>\;
  qspo(5) <= \<const0>\;
  qspo(4) <= \<const0>\;
  qspo(3) <= \<const0>\;
  qspo(2) <= \<const0>\;
  qspo(1) <= \<const0>\;
  qspo(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13_synth
     port map (
      a(6 downto 0) => a(6 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      spo(31 downto 0) => spo(31 downto 0),
      we => we
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    a : in STD_LOGIC_VECTOR ( 6 downto 0 );
    d : in STD_LOGIC_VECTOR ( 31 downto 0 );
    clk : in STD_LOGIC;
    we : in STD_LOGIC;
    spo : out STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "cpu_data_ram,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "dist_mem_gen_v8_0_13,Vivado 2019.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of U0 : label is 1;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 1;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of U0 : label is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of U0 : label is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of U0 : label is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of U0 : label is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of U0 : label is 0;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of U0 : label is 1;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 1;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 7;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 128;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_i_ce : integer;
  attribute c_has_i_ce of U0 : label is 0;
  attribute c_has_qspo : integer;
  attribute c_has_qspo of U0 : label is 0;
  attribute c_has_qspo_ce : integer;
  attribute c_has_qspo_ce of U0 : label is 0;
  attribute c_has_qspo_rst : integer;
  attribute c_has_qspo_rst of U0 : label is 0;
  attribute c_has_qspo_srst : integer;
  attribute c_has_qspo_srst of U0 : label is 0;
  attribute c_has_spo : integer;
  attribute c_has_spo of U0 : label is 1;
  attribute c_mem_init_file : string;
  attribute c_mem_init_file of U0 : label is "cpu_data_ram.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_pipeline_stages : integer;
  attribute c_pipeline_stages of U0 : label is 0;
  attribute c_qualify_we : integer;
  attribute c_qualify_we of U0 : label is 0;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 32;
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_dist_mem_gen_v8_0_13
     port map (
      a(6 downto 0) => a(6 downto 0),
      clk => clk,
      d(31 downto 0) => d(31 downto 0),
      dpo(31 downto 0) => NLW_U0_dpo_UNCONNECTED(31 downto 0),
      dpra(6 downto 0) => B"0000000",
      i_ce => '1',
      qdpo(31 downto 0) => NLW_U0_qdpo_UNCONNECTED(31 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(31 downto 0) => NLW_U0_qspo_UNCONNECTED(31 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(31 downto 0) => spo(31 downto 0),
      we => we
    );
end STRUCTURE;
