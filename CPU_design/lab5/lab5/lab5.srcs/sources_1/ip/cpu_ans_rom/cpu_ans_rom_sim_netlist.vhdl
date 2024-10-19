-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Wed Aug 21 00:40:18 2024
-- Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ywy_c/Documents/coding/hitcoa_at2024/lab5/lab5.srcs/sources_1/ip/cpu_ans_rom/cpu_ans_rom_sim_netlist.vhdl
-- Design      : cpu_ans_rom
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_ans_rom_rom is
  port (
    spo : out STD_LOGIC_VECTOR ( 29 downto 0 );
    a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cpu_ans_rom_rom : entity is "rom";
end cpu_ans_rom_rom;

architecture STRUCTURE of cpu_ans_rom_rom is
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \spo[3]_INST_0\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \spo[9]_INST_0\ : label is "soft_lutpair0";
begin
\spo[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(4),
      I3 => a(5),
      I4 => a(1),
      I5 => a(3),
      O => spo(0)
    );
\spo[10]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001400000053"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(10)
    );
\spo[11]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003500000052"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(11)
    );
\spo[12]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004300000034"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(17)
    );
\spo[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000060000"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(5),
      I3 => a(4),
      I4 => a(0),
      I5 => a(2),
      O => spo(18)
    );
\spo[14]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001000000047"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(2),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(12)
    );
\spo[15]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000003700000052"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(13)
    );
\spo[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000305F"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(1),
      I4 => a(4),
      I5 => a(5),
      O => spo(15)
    );
\spo[17]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000100"
    )
        port map (
      I0 => a(2),
      I1 => a(5),
      I2 => a(4),
      I3 => a(1),
      I4 => a(3),
      O => spo(14)
    );
\spo[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000040000"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(4),
      I3 => a(5),
      I4 => a(1),
      I5 => a(3),
      O => spo(19)
    );
\spo[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(4),
      I3 => a(5),
      I4 => a(1),
      I5 => a(3),
      O => spo(1)
    );
\spo[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000038"
    )
        port map (
      I0 => a(0),
      I1 => a(3),
      I2 => a(1),
      I3 => a(4),
      I4 => a(5),
      I5 => a(2),
      O => spo(16)
    );
\spo[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001400000073"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(2)
    );
\spo[32]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000D0000000BF"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(3),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(20)
    );
\spo[33]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000004700000078"
    )
        port map (
      I0 => a(2),
      I1 => a(3),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(21)
    );
\spo[34]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000140000006C"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(0),
      I3 => a(4),
      I4 => a(5),
      I5 => a(1),
      O => spo(22)
    );
\spo[35]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00060008000A000A"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(5),
      I3 => a(4),
      I4 => a(0),
      I5 => a(2),
      O => spo(23)
    );
\spo[36]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(4),
      I3 => a(5),
      I4 => a(1),
      I5 => a(3),
      O => spo(24)
    );
\spo[39]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000097000000A2"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(2),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(25)
    );
\spo[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(3),
      O => spo(3)
    );
\spo[40]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000009700000020"
    )
        port map (
      I0 => a(3),
      I1 => a(0),
      I2 => a(2),
      I3 => a(5),
      I4 => a(4),
      I5 => a(1),
      O => spo(26)
    );
\spo[41]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0203030100020200"
    )
        port map (
      I0 => a(3),
      I1 => a(5),
      I2 => a(4),
      I3 => a(1),
      I4 => a(0),
      I5 => a(2),
      O => spo(27)
    );
\spo[42]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000400000002000A"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(5),
      I3 => a(4),
      I4 => a(0),
      I5 => a(2),
      O => spo(28)
    );
\spo[43]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0303020000000000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => spo(29)
    );
\spo[4]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000700000003F"
    )
        port map (
      I0 => a(2),
      I1 => a(0),
      I2 => a(3),
      I3 => a(5),
      I4 => a(4),
      I5 => a(1),
      O => spo(4)
    );
\spo[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000200000000000C"
    )
        port map (
      I0 => a(3),
      I1 => a(1),
      I2 => a(5),
      I3 => a(4),
      I4 => a(0),
      I5 => a(2),
      O => spo(5)
    );
\spo[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000800000000"
    )
        port map (
      I0 => a(2),
      I1 => a(1),
      I2 => a(5),
      I3 => a(4),
      I4 => a(0),
      I5 => a(3),
      O => spo(6)
    );
\spo[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0102010000000000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(2),
      I5 => a(3),
      O => spo(7)
    );
\spo[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000001C00000053"
    )
        port map (
      I0 => a(3),
      I1 => a(2),
      I2 => a(1),
      I3 => a(5),
      I4 => a(4),
      I5 => a(0),
      O => spo(8)
    );
\spo[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => a(1),
      I1 => a(5),
      I2 => a(4),
      I3 => a(0),
      I4 => a(3),
      O => spo(9)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_ans_rom_dist_mem_gen_v8_0_13_synth is
  port (
    spo : out STD_LOGIC_VECTOR ( 29 downto 0 );
    a : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cpu_ans_rom_dist_mem_gen_v8_0_13_synth : entity is "dist_mem_gen_v8_0_13_synth";
end cpu_ans_rom_dist_mem_gen_v8_0_13_synth;

architecture STRUCTURE of cpu_ans_rom_dist_mem_gen_v8_0_13_synth is
begin
\gen_rom.rom_inst\: entity work.cpu_ans_rom_rom
     port map (
      a(5 downto 0) => a(5 downto 0),
      spo(29 downto 0) => spo(29 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_ans_rom_dist_mem_gen_v8_0_13 is
  port (
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    d : in STD_LOGIC_VECTOR ( 63 downto 0 );
    dpra : in STD_LOGIC_VECTOR ( 5 downto 0 );
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
    spo : out STD_LOGIC_VECTOR ( 63 downto 0 );
    dpo : out STD_LOGIC_VECTOR ( 63 downto 0 );
    qspo : out STD_LOGIC_VECTOR ( 63 downto 0 );
    qdpo : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute C_ADDR_WIDTH : integer;
  attribute C_ADDR_WIDTH of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 6;
  attribute C_DEFAULT_DATA : string;
  attribute C_DEFAULT_DATA of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is "0";
  attribute C_DEPTH : integer;
  attribute C_DEPTH of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 64;
  attribute C_ELABORATION_DIR : string;
  attribute C_ELABORATION_DIR of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is "./";
  attribute C_FAMILY : string;
  attribute C_FAMILY of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is "artix7";
  attribute C_HAS_CLK : integer;
  attribute C_HAS_CLK of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_D : integer;
  attribute C_HAS_D of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO : integer;
  attribute C_HAS_QDPO of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CE : integer;
  attribute C_HAS_QDPO_CE of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_CLK : integer;
  attribute C_HAS_QDPO_CLK of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_RST : integer;
  attribute C_HAS_QDPO_RST of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QDPO_SRST : integer;
  attribute C_HAS_QDPO_SRST of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO : integer;
  attribute C_HAS_QSPO of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_CE : integer;
  attribute C_HAS_QSPO_CE of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_RST : integer;
  attribute C_HAS_QSPO_RST of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_QSPO_SRST : integer;
  attribute C_HAS_QSPO_SRST of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_HAS_SPO : integer;
  attribute C_HAS_SPO of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_HAS_WE : integer;
  attribute C_HAS_WE of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_MEM_INIT_FILE : string;
  attribute C_MEM_INIT_FILE of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is "cpu_ans_rom.mif";
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_PARSER_TYPE : integer;
  attribute C_PARSER_TYPE of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_READ_MIF : integer;
  attribute C_READ_MIF of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_REG_A_D_INPUTS : integer;
  attribute C_REG_A_D_INPUTS of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 0;
  attribute C_SYNC_ENABLE : integer;
  attribute C_SYNC_ENABLE of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 1;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is 64;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of cpu_ans_rom_dist_mem_gen_v8_0_13 : entity is "dist_mem_gen_v8_0_13";
end cpu_ans_rom_dist_mem_gen_v8_0_13;

architecture STRUCTURE of cpu_ans_rom_dist_mem_gen_v8_0_13 is
  signal \<const0>\ : STD_LOGIC;
  signal \^spo\ : STD_LOGIC_VECTOR ( 43 downto 0 );
begin
  dpo(63) <= \<const0>\;
  dpo(62) <= \<const0>\;
  dpo(61) <= \<const0>\;
  dpo(60) <= \<const0>\;
  dpo(59) <= \<const0>\;
  dpo(58) <= \<const0>\;
  dpo(57) <= \<const0>\;
  dpo(56) <= \<const0>\;
  dpo(55) <= \<const0>\;
  dpo(54) <= \<const0>\;
  dpo(53) <= \<const0>\;
  dpo(52) <= \<const0>\;
  dpo(51) <= \<const0>\;
  dpo(50) <= \<const0>\;
  dpo(49) <= \<const0>\;
  dpo(48) <= \<const0>\;
  dpo(47) <= \<const0>\;
  dpo(46) <= \<const0>\;
  dpo(45) <= \<const0>\;
  dpo(44) <= \<const0>\;
  dpo(43) <= \<const0>\;
  dpo(42) <= \<const0>\;
  dpo(41) <= \<const0>\;
  dpo(40) <= \<const0>\;
  dpo(39) <= \<const0>\;
  dpo(38) <= \<const0>\;
  dpo(37) <= \<const0>\;
  dpo(36) <= \<const0>\;
  dpo(35) <= \<const0>\;
  dpo(34) <= \<const0>\;
  dpo(33) <= \<const0>\;
  dpo(32) <= \<const0>\;
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
  qdpo(63) <= \<const0>\;
  qdpo(62) <= \<const0>\;
  qdpo(61) <= \<const0>\;
  qdpo(60) <= \<const0>\;
  qdpo(59) <= \<const0>\;
  qdpo(58) <= \<const0>\;
  qdpo(57) <= \<const0>\;
  qdpo(56) <= \<const0>\;
  qdpo(55) <= \<const0>\;
  qdpo(54) <= \<const0>\;
  qdpo(53) <= \<const0>\;
  qdpo(52) <= \<const0>\;
  qdpo(51) <= \<const0>\;
  qdpo(50) <= \<const0>\;
  qdpo(49) <= \<const0>\;
  qdpo(48) <= \<const0>\;
  qdpo(47) <= \<const0>\;
  qdpo(46) <= \<const0>\;
  qdpo(45) <= \<const0>\;
  qdpo(44) <= \<const0>\;
  qdpo(43) <= \<const0>\;
  qdpo(42) <= \<const0>\;
  qdpo(41) <= \<const0>\;
  qdpo(40) <= \<const0>\;
  qdpo(39) <= \<const0>\;
  qdpo(38) <= \<const0>\;
  qdpo(37) <= \<const0>\;
  qdpo(36) <= \<const0>\;
  qdpo(35) <= \<const0>\;
  qdpo(34) <= \<const0>\;
  qdpo(33) <= \<const0>\;
  qdpo(32) <= \<const0>\;
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
  qspo(63) <= \<const0>\;
  qspo(62) <= \<const0>\;
  qspo(61) <= \<const0>\;
  qspo(60) <= \<const0>\;
  qspo(59) <= \<const0>\;
  qspo(58) <= \<const0>\;
  qspo(57) <= \<const0>\;
  qspo(56) <= \<const0>\;
  qspo(55) <= \<const0>\;
  qspo(54) <= \<const0>\;
  qspo(53) <= \<const0>\;
  qspo(52) <= \<const0>\;
  qspo(51) <= \<const0>\;
  qspo(50) <= \<const0>\;
  qspo(49) <= \<const0>\;
  qspo(48) <= \<const0>\;
  qspo(47) <= \<const0>\;
  qspo(46) <= \<const0>\;
  qspo(45) <= \<const0>\;
  qspo(44) <= \<const0>\;
  qspo(43) <= \<const0>\;
  qspo(42) <= \<const0>\;
  qspo(41) <= \<const0>\;
  qspo(40) <= \<const0>\;
  qspo(39) <= \<const0>\;
  qspo(38) <= \<const0>\;
  qspo(37) <= \<const0>\;
  qspo(36) <= \<const0>\;
  qspo(35) <= \<const0>\;
  qspo(34) <= \<const0>\;
  qspo(33) <= \<const0>\;
  qspo(32) <= \<const0>\;
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
  spo(63) <= \<const0>\;
  spo(62) <= \<const0>\;
  spo(61) <= \<const0>\;
  spo(60) <= \<const0>\;
  spo(59) <= \<const0>\;
  spo(58) <= \<const0>\;
  spo(57) <= \<const0>\;
  spo(56) <= \<const0>\;
  spo(55) <= \<const0>\;
  spo(54) <= \<const0>\;
  spo(53) <= \<const0>\;
  spo(52) <= \<const0>\;
  spo(51) <= \<const0>\;
  spo(50) <= \<const0>\;
  spo(49) <= \<const0>\;
  spo(48) <= \<const0>\;
  spo(47) <= \<const0>\;
  spo(46) <= \<const0>\;
  spo(45) <= \<const0>\;
  spo(44) <= \<const0>\;
  spo(43 downto 39) <= \^spo\(43 downto 39);
  spo(38) <= \<const0>\;
  spo(37) <= \<const0>\;
  spo(36 downto 32) <= \^spo\(36 downto 32);
  spo(31) <= \^spo\(18);
  spo(30) <= \^spo\(18);
  spo(29) <= \^spo\(18);
  spo(28) <= \^spo\(18);
  spo(27) <= \^spo\(18);
  spo(26) <= \^spo\(18);
  spo(25 downto 24) <= \^spo\(13 downto 12);
  spo(23) <= \^spo\(12);
  spo(22) <= \^spo\(18);
  spo(21) <= \^spo\(21);
  spo(20) <= \^spo\(16);
  spo(19) <= \^spo\(13);
  spo(18 downto 0) <= \^spo\(18 downto 0);
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\synth_options.dist_mem_inst\: entity work.cpu_ans_rom_dist_mem_gen_v8_0_13_synth
     port map (
      a(5 downto 0) => a(5 downto 0),
      spo(29 downto 25) => \^spo\(43 downto 39),
      spo(24 downto 20) => \^spo\(36 downto 32),
      spo(19) => \^spo\(18),
      spo(18 downto 17) => \^spo\(13 downto 12),
      spo(16) => \^spo\(21),
      spo(15) => \^spo\(16),
      spo(14) => \^spo\(17),
      spo(13 downto 12) => \^spo\(15 downto 14),
      spo(11 downto 0) => \^spo\(11 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity cpu_ans_rom is
  port (
    a : in STD_LOGIC_VECTOR ( 5 downto 0 );
    spo : out STD_LOGIC_VECTOR ( 63 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of cpu_ans_rom : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of cpu_ans_rom : entity is "cpu_ans_rom,dist_mem_gen_v8_0_13,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of cpu_ans_rom : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of cpu_ans_rom : entity is "dist_mem_gen_v8_0_13,Vivado 2019.2";
end cpu_ans_rom;

architecture STRUCTURE of cpu_ans_rom is
  signal NLW_U0_dpo_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_qdpo_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal NLW_U0_qspo_UNCONNECTED : STD_LOGIC_VECTOR ( 63 downto 0 );
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_D : integer;
  attribute C_HAS_D of U0 : label is 0;
  attribute C_HAS_DPO : integer;
  attribute C_HAS_DPO of U0 : label is 0;
  attribute C_HAS_DPRA : integer;
  attribute C_HAS_DPRA of U0 : label is 0;
  attribute C_HAS_I_CE : integer;
  attribute C_HAS_I_CE of U0 : label is 0;
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
  attribute C_HAS_WE of U0 : label is 0;
  attribute C_MEM_TYPE : integer;
  attribute C_MEM_TYPE of U0 : label is 0;
  attribute C_PIPELINE_STAGES : integer;
  attribute C_PIPELINE_STAGES of U0 : label is 0;
  attribute C_QCE_JOINED : integer;
  attribute C_QCE_JOINED of U0 : label is 0;
  attribute C_QUALIFY_WE : integer;
  attribute C_QUALIFY_WE of U0 : label is 0;
  attribute C_REG_DPRA_INPUT : integer;
  attribute C_REG_DPRA_INPUT of U0 : label is 0;
  attribute c_addr_width : integer;
  attribute c_addr_width of U0 : label is 6;
  attribute c_default_data : string;
  attribute c_default_data of U0 : label is "0";
  attribute c_depth : integer;
  attribute c_depth of U0 : label is 64;
  attribute c_elaboration_dir : string;
  attribute c_elaboration_dir of U0 : label is "./";
  attribute c_has_clk : integer;
  attribute c_has_clk of U0 : label is 0;
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
  attribute c_mem_init_file of U0 : label is "cpu_ans_rom.mif";
  attribute c_parser_type : integer;
  attribute c_parser_type of U0 : label is 1;
  attribute c_read_mif : integer;
  attribute c_read_mif of U0 : label is 1;
  attribute c_reg_a_d_inputs : integer;
  attribute c_reg_a_d_inputs of U0 : label is 0;
  attribute c_sync_enable : integer;
  attribute c_sync_enable of U0 : label is 1;
  attribute c_width : integer;
  attribute c_width of U0 : label is 64;
begin
U0: entity work.cpu_ans_rom_dist_mem_gen_v8_0_13
     port map (
      a(5 downto 0) => a(5 downto 0),
      clk => '0',
      d(63 downto 0) => B"0000000000000000000000000000000000000000000000000000000000000000",
      dpo(63 downto 0) => NLW_U0_dpo_UNCONNECTED(63 downto 0),
      dpra(5 downto 0) => B"000000",
      i_ce => '1',
      qdpo(63 downto 0) => NLW_U0_qdpo_UNCONNECTED(63 downto 0),
      qdpo_ce => '1',
      qdpo_clk => '0',
      qdpo_rst => '0',
      qdpo_srst => '0',
      qspo(63 downto 0) => NLW_U0_qspo_UNCONNECTED(63 downto 0),
      qspo_ce => '1',
      qspo_rst => '0',
      qspo_srst => '0',
      spo(63 downto 0) => spo(63 downto 0),
      we => '0'
    );
end STRUCTURE;
