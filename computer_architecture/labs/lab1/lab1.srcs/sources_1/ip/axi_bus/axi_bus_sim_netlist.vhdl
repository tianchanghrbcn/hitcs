-- Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
-- Date        : Mon Aug 19 18:32:07 2024
-- Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/ywy_c/Documents/coding/hitcoa_at2024/base_checker/base_checker.srcs/sources_1/ip/axi_bus/axi_bus_sim_netlist.vhdl
-- Design      : axi_bus
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a200tfbg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_addr_arbiter is
  port (
    aa_mi_arvalid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.s_ready_i_reg[0]_0\ : out STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[16]\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[8]\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]\ : out STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    match : out STD_LOGIC;
    target_mi_enc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sel_4 : out STD_LOGIC;
    \s_axi_araddr[22]\ : out STD_LOGIC;
    \s_axi_araddr[22]_0\ : out STD_LOGIC;
    \s_axi_araddr[22]_1\ : out STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg_0\ : out STD_LOGIC;
    m_axi_arready_0_sp_1 : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    p_71_in : out STD_LOGIC;
    p_35_in : out STD_LOGIC;
    p_53_in : out STD_LOGIC;
    \gen_axi.read_cs_reg[0]\ : out STD_LOGIC;
    \gen_no_arbiter.m_mesg_i_reg[65]_0\ : out STD_LOGIC_VECTOR ( 56 downto 0 );
    \s_axi_araddr[21]\ : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_no_arbiter.m_valid_i_reg_1\ : out STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg_2\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 6 downto 0 );
    mi_arready_3 : in STD_LOGIC;
    p_19_in : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    \gen_no_arbiter.m_mesg_i_reg[65]_1\ : in STD_LOGIC_VECTOR ( 56 downto 0 );
    \gen_master_slots[2].r_issuing_cnt_reg[16]_0\ : in STD_LOGIC;
    \r_cmd_pop_2__1\ : in STD_LOGIC;
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[1].r_issuing_cnt_reg[8]_0\ : in STD_LOGIC;
    \r_cmd_pop_1__1\ : in STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[0]_0\ : in STD_LOGIC;
    \r_cmd_pop_0__1\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    \r_cmd_pop_3__1\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_addr_arbiter : entity is "axi_crossbar_v2_1_21_addr_arbiter";
end axi_bus_axi_crossbar_v2_1_21_addr_arbiter;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_addr_arbiter is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aa_mi_artarget_hot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^aa_mi_arvalid\ : STD_LOGIC;
  signal \gen_master_slots[0].r_issuing_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_master_slots[1].r_issuing_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_master_slots[2].r_issuing_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target[9]_i_6__0_n_0\ : STD_LOGIC;
  signal \^gen_no_arbiter.m_mesg_i_reg[65]_0\ : STD_LOGIC_VECTOR ( 56 downto 0 );
  signal \gen_no_arbiter.m_target_hot_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_valid_i_i_4__0_n_0\ : STD_LOGIC;
  signal \^gen_no_arbiter.s_ready_i_reg[0]_0\ : STD_LOGIC;
  signal m_axi_arready_0_sn_1 : STD_LOGIC;
  signal \^match\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^sel_4\ : STD_LOGIC;
  signal st_aa_artarget_hot : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^target_mi_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axi.s_axi_rid_i[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[2]_i_3\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[10]_i_3\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_master_slots[2].r_issuing_cnt[18]_i_3\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[2]_i_1__0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_valid_i_i_4__0\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \m_axi_arvalid[0]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \m_axi_arvalid[1]_INST_0\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \m_axi_arvalid[2]_INST_0\ : label is "soft_lutpair0";
begin
  D(0) <= \^d\(0);
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  aa_mi_arvalid <= \^aa_mi_arvalid\;
  \gen_no_arbiter.m_mesg_i_reg[65]_0\(56 downto 0) <= \^gen_no_arbiter.m_mesg_i_reg[65]_0\(56 downto 0);
  \gen_no_arbiter.s_ready_i_reg[0]_0\ <= \^gen_no_arbiter.s_ready_i_reg[0]_0\;
  m_axi_arready_0_sp_1 <= m_axi_arready_0_sn_1;
  match <= \^match\;
  sel_4 <= \^sel_4\;
  target_mi_enc(1 downto 0) <= \^target_mi_enc\(1 downto 0);
\gen_axi.s_axi_rid_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0080"
    )
        port map (
      I0 => \^q\(0),
      I1 => mi_arready_3,
      I2 => \^aa_mi_arvalid\,
      I3 => p_19_in,
      O => \gen_no_arbiter.m_target_hot_i_reg[3]_0\(0)
    );
\gen_axi.s_axi_rlast_i_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => p_19_in,
      I1 => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(36),
      I2 => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(37),
      I3 => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(39),
      I4 => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(38),
      O => \gen_axi.read_cs_reg[0]\
    );
\gen_master_slots[0].r_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_master_slots[0].r_issuing_cnt[0]_i_2_n_0\,
      I1 => r_issuing_cnt(0),
      O => \gen_master_slots[0].r_issuing_cnt_reg[0]\
    );
\gen_master_slots[0].r_issuing_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE0E0E0E0E0E0E0"
    )
        port map (
      I0 => r_issuing_cnt(1),
      I1 => \gen_master_slots[0].r_issuing_cnt_reg[0]_0\,
      I2 => \r_cmd_pop_0__1\,
      I3 => \^aa_mi_arvalid\,
      I4 => m_axi_arready(0),
      I5 => aa_mi_artarget_hot(0),
      O => \gen_master_slots[0].r_issuing_cnt[0]_i_2_n_0\
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => m_axi_arready(0),
      I2 => aa_mi_artarget_hot(0),
      O => p_71_in
    );
\gen_master_slots[1].r_issuing_cnt[10]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => m_axi_arready(1),
      I2 => aa_mi_artarget_hot(1),
      O => p_53_in
    );
\gen_master_slots[1].r_issuing_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_master_slots[1].r_issuing_cnt[8]_i_2_n_0\,
      I1 => r_issuing_cnt(2),
      O => \gen_master_slots[1].r_issuing_cnt_reg[8]\
    );
\gen_master_slots[1].r_issuing_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE0E0E0E0E0E0E0"
    )
        port map (
      I0 => r_issuing_cnt(3),
      I1 => \gen_master_slots[1].r_issuing_cnt_reg[8]_0\,
      I2 => \r_cmd_pop_1__1\,
      I3 => \^aa_mi_arvalid\,
      I4 => m_axi_arready(1),
      I5 => aa_mi_artarget_hot(1),
      O => \gen_master_slots[1].r_issuing_cnt[8]_i_2_n_0\
    );
\gen_master_slots[2].r_issuing_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_master_slots[2].r_issuing_cnt[16]_i_2_n_0\,
      I1 => r_issuing_cnt(4),
      O => \gen_master_slots[2].r_issuing_cnt_reg[16]\
    );
\gen_master_slots[2].r_issuing_cnt[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0FE0E0E0E0E0E0E0"
    )
        port map (
      I0 => r_issuing_cnt(5),
      I1 => \gen_master_slots[2].r_issuing_cnt_reg[16]_0\,
      I2 => \r_cmd_pop_2__1\,
      I3 => \^aa_mi_arvalid\,
      I4 => m_axi_arready(2),
      I5 => aa_mi_artarget_hot(2),
      O => \gen_master_slots[2].r_issuing_cnt[16]_i_2_n_0\
    );
\gen_master_slots[2].r_issuing_cnt[18]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => m_axi_arready(2),
      I2 => aa_mi_artarget_hot(2),
      O => p_35_in
    );
\gen_master_slots[3].r_issuing_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"807F0080"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => mi_arready_3,
      I2 => \^q\(0),
      I3 => \r_cmd_pop_3__1\,
      I4 => r_issuing_cnt(6),
      O => \gen_no_arbiter.m_valid_i_reg_1\
    );
\gen_multi_thread.active_target[8]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6__0_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I4 => \^sel_4\,
      O => \s_axi_araddr[21]\(0)
    );
\gen_multi_thread.active_target[9]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6__0_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I4 => \^sel_4\,
      O => \s_axi_araddr[21]\(1)
    );
\gen_multi_thread.active_target[9]_i_6__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      O => \gen_multi_thread.active_target[9]_i_6__0_n_0\
    );
\gen_multi_thread.active_target[9]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(32),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(33),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(30),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(31),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(35),
      I5 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(34),
      O => \^sel_4\
    );
\gen_no_arbiter.m_mesg_i[3]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => aresetn_d,
      O => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i[3]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      O => p_1_in
    );
\gen_no_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(0),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(0),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(10),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(10),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(11),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(11),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(12),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(12),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(13),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(13),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(14),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(14),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(15),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(15),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(16),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(16),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(17),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(17),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(18),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(18),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(19),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(19),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(1),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(1),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(20),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(20),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(21),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(21),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(22),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(22),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(23),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(23),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(24),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(25),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(26),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(27),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(28),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(29),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(2),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(2),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(30),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(30),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(31),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(31),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(32),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(32),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(33),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(33),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(34),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(34),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(35),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(35),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(36),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(36),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(37),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(37),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(38),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(38),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(39),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(39),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(3),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(3),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(40),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(40),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(41),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(41),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(42),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(42),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(43),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(43),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(44),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(44),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(4),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(4),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(45),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(45),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(46),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(46),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(47),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(47),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(48),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(48),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(49),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(49),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(50),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(50),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(5),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(5),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(51),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(51),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(52),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(52),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(53),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(53),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(54),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(54),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(55),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(55),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(56),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(56),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(6),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(6),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(7),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(7),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(8),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(8),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(9),
      Q => \^gen_no_arbiter.m_mesg_i_reg[65]_0\(9),
      R => \^sr\(0)
    );
\gen_no_arbiter.m_target_hot_i[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6__0_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I5 => \^sel_4\,
      O => \^d\(0)
    );
\gen_no_arbiter.m_target_hot_i[1]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^match\,
      I1 => \^target_mi_enc\(0),
      O => st_aa_artarget_hot(1)
    );
\gen_no_arbiter.m_target_hot_i[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6__0_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I5 => \^sel_4\,
      O => \^target_mi_enc\(0)
    );
\gen_no_arbiter.m_target_hot_i[2]_i_1__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^match\,
      I1 => \^target_mi_enc\(1),
      O => st_aa_artarget_hot(2)
    );
\gen_no_arbiter.m_target_hot_i[2]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6__0_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I5 => \^sel_4\,
      O => \^target_mi_enc\(1)
    );
\gen_no_arbiter.m_target_hot_i[3]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^match\,
      O => \gen_no_arbiter.m_target_hot_i[3]_i_1__0_n_0\
    );
\gen_no_arbiter.m_target_hot_i[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => \^sel_4\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I5 => \gen_multi_thread.active_target[9]_i_6__0_n_0\,
      O => \^match\
    );
\gen_no_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \^d\(0),
      Q => aa_mi_artarget_hot(0),
      R => '0'
    );
\gen_no_arbiter.m_target_hot_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => st_aa_artarget_hot(1),
      Q => aa_mi_artarget_hot(1),
      R => '0'
    );
\gen_no_arbiter.m_target_hot_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => st_aa_artarget_hot(2),
      Q => aa_mi_artarget_hot(2),
      R => '0'
    );
\gen_no_arbiter.m_target_hot_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \gen_no_arbiter.m_target_hot_i[3]_i_1__0_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\gen_no_arbiter.m_valid_i_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      I5 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      O => \s_axi_araddr[22]\
    );
\gen_no_arbiter.m_valid_i_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEA00000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_valid_i_i_4__0_n_0\,
      I1 => m_axi_arready(0),
      I2 => aa_mi_artarget_hot(0),
      I3 => m_axi_arready(1),
      I4 => aa_mi_artarget_hot(1),
      I5 => \^aa_mi_arvalid\,
      O => m_axi_arready_0_sn_1
    );
\gen_no_arbiter.m_valid_i_i_4__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => m_axi_arready(2),
      I1 => aa_mi_artarget_hot(2),
      I2 => mi_arready_3,
      I3 => \^q\(0),
      O => \gen_no_arbiter.m_valid_i_i_4__0_n_0\
    );
\gen_no_arbiter.m_valid_i_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      I5 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      O => \s_axi_araddr[22]_1\
    );
\gen_no_arbiter.m_valid_i_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      I5 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      O => \s_axi_araddr[22]_0\
    );
\gen_no_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.m_valid_i_reg_2\,
      Q => \^aa_mi_arvalid\,
      R => \^sr\(0)
    );
\gen_no_arbiter.s_ready_i[0]_i_10\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"10"
    )
        port map (
      I0 => \^aa_mi_arvalid\,
      I1 => \^gen_no_arbiter.s_ready_i_reg[0]_0\,
      I2 => s_axi_arvalid(0),
      O => \gen_no_arbiter.m_valid_i_reg_0\
    );
\gen_no_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => E(0),
      Q => \^gen_no_arbiter.s_ready_i_reg[0]_0\,
      R => '0'
    );
\m_axi_arvalid[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aa_mi_artarget_hot(0),
      I1 => \^aa_mi_arvalid\,
      O => m_axi_arvalid(0)
    );
\m_axi_arvalid[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aa_mi_artarget_hot(1),
      I1 => \^aa_mi_arvalid\,
      O => m_axi_arvalid(1)
    );
\m_axi_arvalid[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => aa_mi_artarget_hot(2),
      I1 => \^aa_mi_arvalid\,
      O => m_axi_arvalid(2)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_addr_arbiter_0 is
  port (
    aa_sa_awvalid : out STD_LOGIC;
    ss_aa_awready : out STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]\ : out STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[8]\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 0 to 0 );
    match : out STD_LOGIC;
    target_mi_enc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    sel_4 : out STD_LOGIC;
    \s_axi_awaddr[22]\ : out STD_LOGIC;
    \s_axi_awaddr[22]_0\ : out STD_LOGIC;
    \s_axi_awaddr[22]_1\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    mi_awvalid_en : out STD_LOGIC;
    aa_sa_awready : out STD_LOGIC;
    \mi_awready_mux__2\ : out STD_LOGIC;
    \s_ready_i0__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \sa_wm_awready_mux__2\ : out STD_LOGIC;
    p_44_in : out STD_LOGIC;
    p_62_in : out STD_LOGIC;
    p_79_in : out STD_LOGIC;
    \gen_axi.write_cs01_out\ : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    st_aa_awtarget_enc : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_valid_i_reg : out STD_LOGIC;
    \gen_no_arbiter.m_mesg_i_reg[65]_0\ : out STD_LOGIC_VECTOR ( 56 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_valid_i_reg_0\ : in STD_LOGIC;
    aclk : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \gen_no_arbiter.m_mesg_i_reg[65]_1\ : in STD_LOGIC_VECTOR ( 56 downto 0 );
    \gen_master_slots[2].w_issuing_cnt_reg[16]_0\ : in STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]_1\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \gen_master_slots[1].w_issuing_cnt_reg[8]_0\ : in STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[8]_1\ : in STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]_0\ : in STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]_1\ : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 1 downto 0 );
    mi_awready_3 : in STD_LOGIC;
    p_43_out : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[3].w_issuing_cnt_reg[24]\ : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_addr_arbiter_0 : entity is "axi_crossbar_v2_1_21_addr_arbiter";
end axi_bus_axi_crossbar_v2_1_21_addr_arbiter_0;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_addr_arbiter_0 is
  signal \^d\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal aa_mi_awtarget_hot : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^aa_sa_awvalid\ : STD_LOGIC;
  signal \^gen_axi.write_cs01_out\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_master_slots[1].w_issuing_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_master_slots[2].w_issuing_cnt[16]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target[9]_i_6_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_4_n_0\ : STD_LOGIC;
  signal \^match\ : STD_LOGIC;
  signal \^mi_awready_mux__2\ : STD_LOGIC;
  signal \^mi_awvalid_en\ : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^s_ready_i0__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sel_4\ : STD_LOGIC;
  signal st_aa_awtarget_hot : STD_LOGIC_VECTOR ( 2 downto 1 );
  signal \^target_mi_enc\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_axi.write_cs[2]_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_axi.s_axi_wready_i_i_2\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_3\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[10]_i_3\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_master_slots[2].w_issuing_cnt[18]_i_3\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[1]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_axi_awvalid[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \m_axi_awvalid[1]_INST_0\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \m_axi_awvalid[2]_INST_0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_ready_d[0]_i_2\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \m_ready_d[1]_i_3\ : label is "soft_lutpair5";
begin
  D(0) <= \^d\(0);
  Q(0) <= \^q\(0);
  aa_sa_awvalid <= \^aa_sa_awvalid\;
  \gen_axi.write_cs01_out\ <= \^gen_axi.write_cs01_out\;
  match <= \^match\;
  \mi_awready_mux__2\ <= \^mi_awready_mux__2\;
  mi_awvalid_en <= \^mi_awvalid_en\;
  \s_ready_i0__1\(0) <= \^s_ready_i0__1\(0);
  sel_4 <= \^sel_4\;
  target_mi_enc(1 downto 0) <= \^target_mi_enc\(1 downto 0);
\FSM_onehot_gen_axi.write_cs[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => mi_awready_3,
      I1 => \^q\(0),
      I2 => m_ready_d(1),
      I3 => \^aa_sa_awvalid\,
      O => \^gen_axi.write_cs01_out\
    );
\gen_axi.s_axi_wready_i_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      I1 => m_ready_d(1),
      O => \^mi_awvalid_en\
    );
\gen_master_slots[0].w_issuing_cnt[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_master_slots[0].w_issuing_cnt[0]_i_2_n_0\,
      I1 => w_issuing_cnt(0),
      O => \gen_master_slots[0].w_issuing_cnt_reg[0]\
    );
\gen_master_slots[0].w_issuing_cnt[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00E0E0E0E0E0E0E"
    )
        port map (
      I0 => \gen_master_slots[0].w_issuing_cnt_reg[0]_0\,
      I1 => w_issuing_cnt(1),
      I2 => \gen_master_slots[0].w_issuing_cnt_reg[0]_1\,
      I3 => m_axi_awready(0),
      I4 => aa_mi_awtarget_hot(0),
      I5 => \^mi_awvalid_en\,
      O => \gen_master_slots[0].w_issuing_cnt[0]_i_2_n_0\
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => m_axi_awready(0),
      I1 => aa_mi_awtarget_hot(0),
      I2 => m_ready_d(1),
      I3 => \^aa_sa_awvalid\,
      O => p_79_in
    );
\gen_master_slots[1].w_issuing_cnt[10]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => m_axi_awready(1),
      I1 => aa_mi_awtarget_hot(1),
      I2 => m_ready_d(1),
      I3 => \^aa_sa_awvalid\,
      O => p_62_in
    );
\gen_master_slots[1].w_issuing_cnt[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_master_slots[1].w_issuing_cnt[8]_i_2_n_0\,
      I1 => w_issuing_cnt(2),
      O => \gen_master_slots[1].w_issuing_cnt_reg[8]\
    );
\gen_master_slots[1].w_issuing_cnt[8]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00E0E0E0E0E0E0E"
    )
        port map (
      I0 => w_issuing_cnt(3),
      I1 => \gen_master_slots[1].w_issuing_cnt_reg[8]_0\,
      I2 => \gen_master_slots[1].w_issuing_cnt_reg[8]_1\,
      I3 => m_axi_awready(1),
      I4 => aa_mi_awtarget_hot(1),
      I5 => \^mi_awvalid_en\,
      O => \gen_master_slots[1].w_issuing_cnt[8]_i_2_n_0\
    );
\gen_master_slots[2].w_issuing_cnt[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \gen_master_slots[2].w_issuing_cnt[16]_i_2_n_0\,
      I1 => w_issuing_cnt(4),
      O => \gen_master_slots[2].w_issuing_cnt_reg[16]\
    );
\gen_master_slots[2].w_issuing_cnt[16]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F00E0E0E0E0E0E0E"
    )
        port map (
      I0 => \gen_master_slots[2].w_issuing_cnt_reg[16]_0\,
      I1 => w_issuing_cnt(5),
      I2 => \gen_master_slots[2].w_issuing_cnt_reg[16]_1\,
      I3 => m_axi_awready(2),
      I4 => aa_mi_awtarget_hot(2),
      I5 => \^mi_awvalid_en\,
      O => \gen_master_slots[2].w_issuing_cnt[16]_i_2_n_0\
    );
\gen_master_slots[2].w_issuing_cnt[18]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => m_axi_awready(2),
      I1 => aa_mi_awtarget_hot(2),
      I2 => m_ready_d(1),
      I3 => \^aa_sa_awvalid\,
      O => p_44_in
    );
\gen_master_slots[3].w_issuing_cnt[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"95552AAA"
    )
        port map (
      I0 => \^gen_axi.write_cs01_out\,
      I1 => p_43_out,
      I2 => s_axi_bready(0),
      I3 => \gen_master_slots[3].w_issuing_cnt_reg[24]\(0),
      I4 => w_issuing_cnt(6),
      O => m_valid_i_reg
    );
\gen_multi_thread.active_target[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I4 => \^sel_4\,
      O => st_aa_awtarget_enc(0)
    );
\gen_multi_thread.active_target[9]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I4 => \^sel_4\,
      O => st_aa_awtarget_enc(1)
    );
\gen_multi_thread.active_target[9]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      O => \gen_multi_thread.active_target[9]_i_6_n_0\
    );
\gen_multi_thread.active_target[9]_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000002000"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(32),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(33),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(30),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(31),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(35),
      I5 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(34),
      O => \^sel_4\
    );
\gen_no_arbiter.m_mesg_i[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aa_sa_awvalid\,
      O => p_1_in
    );
\gen_no_arbiter.m_mesg_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(0),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(0),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(10),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(10),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(11),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(11),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(12),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(12),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(13),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(13),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(14),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(14),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(15),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(15),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(16),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(16),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(17),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(17),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(18),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(18),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(19),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(19),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(1),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(1),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(20),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(20),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(21),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(21),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(22),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(22),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(23),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(23),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(24),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(25),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(26),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(27),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(28),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(29),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(2),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(2),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(30),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(30),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(31),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(31),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(32),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(32),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(33),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(33),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(34),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(34),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(35),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(35),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(36),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(36),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(37),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(37),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(38),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(38),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(39),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(39),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(3),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(3),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(40),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(40),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(41),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(41),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(42),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(42),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(43),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(43),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(44),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(44),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(4),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(4),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(45),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(45),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(46),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(46),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(47),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(47),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(48),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(48),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(49),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(49),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(50),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(50),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(5),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(5),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(51),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(51),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(52),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(52),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(53),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(53),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(54),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(54),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(55),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(55),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(56),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(56),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(6),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(6),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(7),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(7),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(8),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(8),
      R => SR(0)
    );
\gen_no_arbiter.m_mesg_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => p_1_in,
      D => \gen_no_arbiter.m_mesg_i_reg[65]_1\(9),
      Q => \gen_no_arbiter.m_mesg_i_reg[65]_0\(9),
      R => SR(0)
    );
\gen_no_arbiter.m_target_hot_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0200000000000000"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I5 => \^sel_4\,
      O => \^d\(0)
    );
\gen_no_arbiter.m_target_hot_i[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^match\,
      I1 => \^target_mi_enc\(0),
      O => st_aa_awtarget_hot(1)
    );
\gen_no_arbiter.m_target_hot_i[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I5 => \^sel_4\,
      O => \^target_mi_enc\(0)
    );
\gen_no_arbiter.m_target_hot_i[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^match\,
      I1 => \^target_mi_enc\(1),
      O => st_aa_awtarget_hot(2)
    );
\gen_no_arbiter.m_target_hot_i[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \gen_multi_thread.active_target[9]_i_6_n_0\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I5 => \^sel_4\,
      O => \^target_mi_enc\(1)
    );
\gen_no_arbiter.m_target_hot_i[3]_i_2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^match\,
      O => \gen_no_arbiter.m_target_hot_i[3]_i_2_n_0\
    );
\gen_no_arbiter.m_target_hot_i[3]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080808000000000"
    )
        port map (
      I0 => \^sel_4\,
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I5 => \gen_multi_thread.active_target[9]_i_6_n_0\,
      O => \^match\
    );
\gen_no_arbiter.m_target_hot_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \^d\(0),
      Q => aa_mi_awtarget_hot(0),
      R => '0'
    );
\gen_no_arbiter.m_target_hot_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => st_aa_awtarget_hot(1),
      Q => aa_mi_awtarget_hot(1),
      R => '0'
    );
\gen_no_arbiter.m_target_hot_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => st_aa_awtarget_hot(2),
      Q => aa_mi_awtarget_hot(2),
      R => '0'
    );
\gen_no_arbiter.m_target_hot_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \gen_no_arbiter.m_target_hot_i[3]_i_2_n_0\,
      Q => \^q\(0),
      R => '0'
    );
\gen_no_arbiter.m_valid_i_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"E0"
    )
        port map (
      I0 => \^mi_awready_mux__2\,
      I1 => m_ready_d(1),
      I2 => \^s_ready_i0__1\(0),
      O => aa_sa_awready
    );
\gen_no_arbiter.m_valid_i_i_7\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0008000000000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      I5 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      O => \s_axi_awaddr[22]_1\
    );
\gen_no_arbiter.m_valid_i_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      I5 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      O => \s_axi_awaddr[22]_0\
    );
\gen_no_arbiter.m_valid_i_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0080000000000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(26),
      I1 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(27),
      I2 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(24),
      I3 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(25),
      I4 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(29),
      I5 => \gen_no_arbiter.m_mesg_i_reg[65]_1\(28),
      O => \s_axi_awaddr[22]\
    );
\gen_no_arbiter.m_valid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_no_arbiter.m_valid_i_reg_0\,
      Q => \^aa_sa_awvalid\,
      R => SR(0)
    );
\gen_no_arbiter.s_ready_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => E(0),
      Q => ss_aa_awready,
      R => '0'
    );
\m_axi_awvalid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => aa_mi_awtarget_hot(0),
      I1 => m_ready_d(1),
      I2 => \^aa_sa_awvalid\,
      O => m_axi_awvalid(0)
    );
\m_axi_awvalid[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => aa_mi_awtarget_hot(1),
      I1 => m_ready_d(1),
      I2 => \^aa_sa_awvalid\,
      O => m_axi_awvalid(1)
    );
\m_axi_awvalid[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => aa_mi_awtarget_hot(2),
      I1 => m_ready_d(1),
      I2 => \^aa_sa_awvalid\,
      O => m_axi_awvalid(2)
    );
\m_ready_d[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => aa_mi_awtarget_hot(1),
      I1 => aa_mi_awtarget_hot(0),
      I2 => \^q\(0),
      I3 => aa_mi_awtarget_hot(2),
      O => \sa_wm_awready_mux__2\
    );
\m_ready_d[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => aa_mi_awtarget_hot(1),
      I1 => m_axi_awready(1),
      I2 => aa_mi_awtarget_hot(0),
      I3 => m_axi_awready(0),
      I4 => \m_ready_d[1]_i_4_n_0\,
      O => \^mi_awready_mux__2\
    );
\m_ready_d[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => m_ready_d(0),
      I1 => aa_mi_awtarget_hot(2),
      I2 => \^q\(0),
      I3 => aa_mi_awtarget_hot(0),
      I4 => aa_mi_awtarget_hot(1),
      O => \^s_ready_i0__1\(0)
    );
\m_ready_d[1]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => m_axi_awready(2),
      I1 => aa_mi_awtarget_hot(2),
      I2 => mi_awready_3,
      I3 => \^q\(0),
      O => \m_ready_d[1]_i_4_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_arbiter_resp is
  port (
    \chosen_reg[2]_0\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \chosen_reg[1]_0\ : out STD_LOGIC;
    \chosen_reg[0]_0\ : out STD_LOGIC;
    \gen_multi_thread.any_pop__1\ : out STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]\ : out STD_LOGIC;
    \chosen_reg[2]_1\ : out STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]_0\ : out STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[10]\ : out STD_LOGIC;
    \chosen_reg[1]_1\ : out STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[10]_0\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]\ : out STD_LOGIC;
    \chosen_reg[0]_1\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg\ : out STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[8]\ : out STD_LOGIC;
    \gen_multi_thread.active_id_reg[4]\ : out STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[0]\ : out STD_LOGIC;
    \gen_multi_thread.active_id_reg[0]\ : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_66_out : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_ready_i_reg : in STD_LOGIC;
    p_87_out : in STD_LOGIC;
    p_108_out : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_44_in : in STD_LOGIC;
    p_62_in : in STD_LOGIC;
    p_79_in : in STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i_reg[3]\ : in STD_LOGIC;
    \gen_multi_thread.s_avalid_en\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aresetn_d : in STD_LOGIC;
    match : in STD_LOGIC;
    sel_4 : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    mi_awmaxissuing : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_valid_i_i_3_1\ : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3_2\ : in STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[1]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_multi_thread.thread_valid_0__0\ : in STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[9]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_multi_thread.thread_valid_1__0\ : in STD_LOGIC;
    \s_ready_i0__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    \gen_multi_thread.accept_cnt\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_43_out : in STD_LOGIC;
    \s_axi_bid[3]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_bid[3]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_bid[3]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_bid[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aa_sa_awready : in STD_LOGIC;
    \gen_multi_thread.active_cnt\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_multi_thread.active_cnt_reg[9]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.active_cnt_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_arbiter_resp : entity is "axi_crossbar_v2_1_21_arbiter_resp";
end axi_bus_axi_crossbar_v2_1_21_arbiter_resp;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_arbiter_resp is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \addr_arbiter_aw/valid_qual_i0__2\ : STD_LOGIC;
  signal \^chosen_reg[0]_1\ : STD_LOGIC;
  signal \^chosen_reg[1]_1\ : STD_LOGIC;
  signal \^chosen_reg[2]_1\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[0]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[1]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[1]_i_3_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[8]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[9]_i_2_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[9]_i_3_n_0\ : STD_LOGIC;
  signal \^gen_multi_thread.any_pop__1\ : STD_LOGIC;
  signal \gen_multi_thread.resp_select\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_no_arbiter.m_target_hot_i[3]_i_3_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[3]_i_6_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_target_hot_i[3]_i_9_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_valid_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_valid_i_i_5_n_0\ : STD_LOGIC;
  signal \gen_no_arbiter.m_valid_i_i_6_n_0\ : STD_LOGIC;
  signal last_rr_hot : STD_LOGIC;
  signal \last_rr_hot[0]_i_2__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[2]_i_2__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot[3]_i_3__0_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal \^m_payload_i_reg[2]\ : STD_LOGIC;
  signal need_arbitration : STD_LOGIC;
  signal next_rr_hot : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal \^s_axi_bid\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_bvalid\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[2]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[1]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_1\ : label is "soft_lutpair83";
  attribute SOFT_HLUTNM of \gen_master_slots[0].w_issuing_cnt[2]_i_2\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[10]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[10]_i_2\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \gen_master_slots[1].w_issuing_cnt[9]_i_1\ : label is "soft_lutpair81";
  attribute SOFT_HLUTNM of \gen_master_slots[2].w_issuing_cnt[17]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \gen_master_slots[2].w_issuing_cnt[18]_i_1\ : label is "soft_lutpair85";
  attribute SOFT_HLUTNM of \gen_master_slots[2].w_issuing_cnt[18]_i_2\ : label is "soft_lutpair82";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[0]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[1]_i_2\ : label is "soft_lutpair88";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[8]_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_2\ : label is "soft_lutpair87";
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[3]_i_9\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_axi_bid[3]_INST_0_i_1\ : label is "soft_lutpair86";
  attribute SOFT_HLUTNM of \s_ready_i_i_1__3\ : label is "soft_lutpair80";
  attribute SOFT_HLUTNM of \s_ready_i_i_1__4\ : label is "soft_lutpair84";
  attribute SOFT_HLUTNM of s_ready_i_i_2 : label is "soft_lutpair82";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \chosen_reg[0]_1\ <= \^chosen_reg[0]_1\;
  \chosen_reg[1]_1\ <= \^chosen_reg[1]_1\;
  \chosen_reg[2]_1\ <= \^chosen_reg[2]_1\;
  \gen_multi_thread.any_pop__1\ <= \^gen_multi_thread.any_pop__1\;
  \m_payload_i_reg[2]\ <= \^m_payload_i_reg[2]\;
  s_axi_bid(2 downto 0) <= \^s_axi_bid\(2 downto 0);
  s_axi_bvalid(0) <= \^s_axi_bvalid\(0);
\chosen[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => s_axi_bready(0),
      I1 => \^s_axi_bvalid\(0),
      I2 => p_87_out,
      I3 => p_43_out,
      I4 => p_108_out,
      I5 => p_66_out,
      O => need_arbitration
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => need_arbitration,
      D => next_rr_hot(0),
      Q => \^q\(0),
      R => SR(0)
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => need_arbitration,
      D => next_rr_hot(1),
      Q => \^q\(1),
      R => SR(0)
    );
\chosen_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => need_arbitration,
      D => next_rr_hot(2),
      Q => \^q\(2),
      R => SR(0)
    );
\chosen_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => need_arbitration,
      D => next_rr_hot(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gen_master_slots[0].w_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66CCCC98"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => w_issuing_cnt(1),
      I2 => w_issuing_cnt(2),
      I3 => \^chosen_reg[0]_1\,
      I4 => p_79_in,
      O => \gen_master_slots[0].w_issuing_cnt_reg[0]_0\
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78F0F0E0"
    )
        port map (
      I0 => w_issuing_cnt(0),
      I1 => w_issuing_cnt(1),
      I2 => w_issuing_cnt(2),
      I3 => \^chosen_reg[0]_1\,
      I4 => p_79_in,
      O => \gen_master_slots[0].w_issuing_cnt_reg[0]\
    );
\gen_master_slots[0].w_issuing_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_bready(0),
      I2 => p_108_out,
      O => \^chosen_reg[0]_1\
    );
\gen_master_slots[1].w_issuing_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA8"
    )
        port map (
      I0 => w_issuing_cnt(5),
      I1 => w_issuing_cnt(4),
      I2 => w_issuing_cnt(3),
      I3 => \^chosen_reg[1]_1\,
      I4 => p_62_in,
      O => \gen_master_slots[1].w_issuing_cnt_reg[10]\
    );
\gen_master_slots[1].w_issuing_cnt[10]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_bready(0),
      I2 => p_87_out,
      O => \^chosen_reg[1]_1\
    );
\gen_master_slots[1].w_issuing_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3CCCCCC2"
    )
        port map (
      I0 => w_issuing_cnt(5),
      I1 => w_issuing_cnt(4),
      I2 => w_issuing_cnt(3),
      I3 => \^chosen_reg[1]_1\,
      I4 => p_62_in,
      O => \gen_master_slots[1].w_issuing_cnt_reg[10]_0\
    );
\gen_master_slots[2].w_issuing_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"66CCCC98"
    )
        port map (
      I0 => w_issuing_cnt(6),
      I1 => w_issuing_cnt(7),
      I2 => w_issuing_cnt(8),
      I3 => \^chosen_reg[2]_1\,
      I4 => p_44_in,
      O => \gen_master_slots[2].w_issuing_cnt_reg[16]_0\
    );
\gen_master_slots[2].w_issuing_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"78F0F0E0"
    )
        port map (
      I0 => w_issuing_cnt(6),
      I1 => w_issuing_cnt(7),
      I2 => w_issuing_cnt(8),
      I3 => \^chosen_reg[2]_1\,
      I4 => p_44_in,
      O => \gen_master_slots[2].w_issuing_cnt_reg[16]\
    );
\gen_master_slots[2].w_issuing_cnt[18]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(2),
      I1 => s_axi_bready(0),
      I2 => p_66_out,
      O => \^chosen_reg[2]_1\
    );
\gen_multi_thread.accept_cnt[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F0F0F0F0F0808080"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_87_out,
      I2 => s_axi_bready(0),
      I3 => \^q\(0),
      I4 => p_108_out,
      I5 => \gen_multi_thread.resp_select\(1),
      O => \^gen_multi_thread.any_pop__1\
    );
\gen_multi_thread.active_cnt[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80207FDF7FDF8020"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt[1]_i_3_n_0\,
      I1 => \gen_multi_thread.active_cnt_reg[1]\(0),
      I2 => \gen_multi_thread.active_cnt[0]_i_2_n_0\,
      I3 => \^m_payload_i_reg[2]\,
      I4 => \gen_multi_thread.active_cnt_reg[1]_0\(0),
      I5 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.active_id_reg[0]\
    );
\gen_multi_thread.active_cnt[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt_reg[1]\(3),
      I1 => \^s_axi_bid\(2),
      O => \gen_multi_thread.active_cnt[0]_i_2_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E7771888"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(0),
      I1 => \gen_multi_thread.active_cnt_reg[1]_0\(0),
      I2 => \gen_multi_thread.active_cnt[1]_i_2_n_0\,
      I3 => \gen_multi_thread.active_cnt[1]_i_3_n_0\,
      I4 => \gen_multi_thread.active_cnt\(1),
      O => \gen_multi_thread.active_cnt_reg[0]\
    );
\gen_multi_thread.active_cnt[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \^m_payload_i_reg[2]\,
      I1 => \^s_axi_bid\(2),
      I2 => \gen_multi_thread.active_cnt_reg[1]\(3),
      I3 => \gen_multi_thread.active_cnt_reg[1]\(0),
      O => \gen_multi_thread.active_cnt[1]_i_2_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \^gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_cnt_reg[1]\(1),
      I2 => \^s_axi_bid\(0),
      I3 => \gen_multi_thread.thread_valid_0__0\,
      I4 => \gen_multi_thread.active_cnt_reg[1]\(2),
      I5 => \^s_axi_bid\(1),
      O => \gen_multi_thread.active_cnt[1]_i_3_n_0\
    );
\gen_multi_thread.active_cnt[8]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"80207FDF7FDF8020"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt[9]_i_3_n_0\,
      I1 => \gen_multi_thread.active_cnt_reg[9]\(0),
      I2 => \gen_multi_thread.active_cnt[8]_i_2_n_0\,
      I3 => \^m_payload_i_reg[2]\,
      I4 => \gen_multi_thread.active_cnt_reg[9]_0\(0),
      I5 => \gen_multi_thread.active_cnt\(2),
      O => \gen_multi_thread.active_id_reg[4]\
    );
\gen_multi_thread.active_cnt[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt_reg[9]\(3),
      I1 => \^s_axi_bid\(2),
      O => \gen_multi_thread.active_cnt[8]_i_2_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"E7771888"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(2),
      I1 => \gen_multi_thread.active_cnt_reg[9]_0\(0),
      I2 => \gen_multi_thread.active_cnt[9]_i_2_n_0\,
      I3 => \gen_multi_thread.active_cnt[9]_i_3_n_0\,
      I4 => \gen_multi_thread.active_cnt\(3),
      O => \gen_multi_thread.active_cnt_reg[8]\
    );
\gen_multi_thread.active_cnt[9]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8241"
    )
        port map (
      I0 => \^m_payload_i_reg[2]\,
      I1 => \^s_axi_bid\(2),
      I2 => \gen_multi_thread.active_cnt_reg[9]\(3),
      I3 => \gen_multi_thread.active_cnt_reg[9]\(0),
      O => \gen_multi_thread.active_cnt[9]_i_2_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8200000000008200"
    )
        port map (
      I0 => \^gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_cnt_reg[9]\(1),
      I2 => \^s_axi_bid\(0),
      I3 => \gen_multi_thread.thread_valid_1__0\,
      I4 => \gen_multi_thread.active_cnt_reg[9]\(2),
      I5 => \^s_axi_bid\(1),
      O => \gen_multi_thread.active_cnt[9]_i_3_n_0\
    );
\gen_no_arbiter.m_target_hot_i[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E000000000000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_target_hot_i[3]_i_3_n_0\,
      I1 => \gen_no_arbiter.m_target_hot_i_reg[3]\,
      I2 => \gen_multi_thread.s_avalid_en\(1),
      I3 => \gen_no_arbiter.m_target_hot_i[3]_i_6_n_0\,
      I4 => \gen_multi_thread.s_avalid_en\(0),
      I5 => aresetn_d,
      O => E(0)
    );
\gen_no_arbiter.m_target_hot_i[3]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0707F707"
    )
        port map (
      I0 => w_issuing_cnt(9),
      I1 => \gen_no_arbiter.m_target_hot_i[3]_i_9_n_0\,
      I2 => match,
      I3 => D(0),
      I4 => mi_awmaxissuing(0),
      O => \gen_no_arbiter.m_target_hot_i[3]_i_3_n_0\
    );
\gen_no_arbiter.m_target_hot_i[3]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0404040404000404"
    )
        port map (
      I0 => \s_ready_i0__1\(0),
      I1 => s_axi_awvalid(0),
      I2 => aa_sa_awvalid,
      I3 => \^gen_multi_thread.any_pop__1\,
      I4 => \gen_multi_thread.accept_cnt\(1),
      I5 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_no_arbiter.m_target_hot_i[3]_i_6_n_0\
    );
\gen_no_arbiter.m_target_hot_i[3]_i_9\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \^q\(3),
      I1 => s_axi_bready(0),
      I2 => p_43_out,
      O => \gen_no_arbiter.m_target_hot_i[3]_i_9_n_0\
    );
\gen_no_arbiter.m_valid_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F222222222222222"
    )
        port map (
      I0 => aa_sa_awvalid,
      I1 => aa_sa_awready,
      I2 => \addr_arbiter_aw/valid_qual_i0__2\,
      I3 => \gen_multi_thread.s_avalid_en\(1),
      I4 => \gen_no_arbiter.m_target_hot_i[3]_i_6_n_0\,
      I5 => \gen_multi_thread.s_avalid_en\(0),
      O => \gen_no_arbiter.m_valid_i_reg\
    );
\gen_no_arbiter.m_valid_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF3F3FFFAA3F3F"
    )
        port map (
      I0 => \gen_no_arbiter.m_valid_i_i_4_n_0\,
      I1 => \gen_no_arbiter.m_target_hot_i[3]_i_9_n_0\,
      I2 => w_issuing_cnt(9),
      I3 => \gen_no_arbiter.m_valid_i_i_5_n_0\,
      I4 => match,
      I5 => \gen_no_arbiter.m_valid_i_i_6_n_0\,
      O => \addr_arbiter_aw/valid_qual_i0__2\
    );
\gen_no_arbiter.m_valid_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888880888"
    )
        port map (
      I0 => sel_4,
      I1 => \gen_no_arbiter.m_valid_i_i_3_2\,
      I2 => \^chosen_reg[0]_1\,
      I3 => w_issuing_cnt(2),
      I4 => w_issuing_cnt(0),
      I5 => w_issuing_cnt(1),
      O => \gen_no_arbiter.m_valid_i_i_4_n_0\
    );
\gen_no_arbiter.m_valid_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888880888"
    )
        port map (
      I0 => sel_4,
      I1 => \gen_no_arbiter.m_valid_i_i_3_1\,
      I2 => \^chosen_reg[2]_1\,
      I3 => w_issuing_cnt(8),
      I4 => w_issuing_cnt(6),
      I5 => w_issuing_cnt(7),
      O => \gen_no_arbiter.m_valid_i_i_5_n_0\
    );
\gen_no_arbiter.m_valid_i_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888880888"
    )
        port map (
      I0 => sel_4,
      I1 => \gen_no_arbiter.m_valid_i_i_3_0\,
      I2 => \^chosen_reg[1]_1\,
      I3 => w_issuing_cnt(5),
      I4 => w_issuing_cnt(3),
      I5 => w_issuing_cnt(4),
      O => \gen_no_arbiter.m_valid_i_i_6_n_0\
    );
\last_rr_hot[0]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00AE00000000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => p_66_out,
      I3 => p_43_out,
      I4 => \last_rr_hot[0]_i_2__0_n_0\,
      I5 => p_108_out,
      O => next_rr_hot(0)
    );
\last_rr_hot[0]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => p_87_out,
      I1 => p_43_out,
      I2 => \last_rr_hot_reg_n_0_[0]\,
      I3 => p_66_out,
      I4 => p_6_in,
      O => \last_rr_hot[0]_i_2__0_n_0\
    );
\last_rr_hot[1]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0F0200000000"
    )
        port map (
      I0 => \last_rr_hot[1]_i_2__0_n_0\,
      I1 => p_43_out,
      I2 => p_108_out,
      I3 => p_6_in,
      I4 => \last_rr_hot_reg_n_0_[0]\,
      I5 => p_87_out,
      O => next_rr_hot(1)
    );
\last_rr_hot[1]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_66_out,
      I1 => p_4_in,
      I2 => p_5_in,
      O => \last_rr_hot[1]_i_2__0_n_0\
    );
\last_rr_hot[2]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00AE00000000"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => p_6_in,
      I2 => p_108_out,
      I3 => p_87_out,
      I4 => \last_rr_hot[2]_i_2__0_n_0\,
      I5 => p_66_out,
      O => next_rr_hot(2)
    );
\last_rr_hot[2]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => p_87_out,
      I1 => p_43_out,
      I2 => p_5_in,
      I3 => p_108_out,
      I4 => p_4_in,
      O => \last_rr_hot[2]_i_2__0_n_0\
    );
\last_rr_hot[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => need_arbitration,
      I1 => next_rr_hot(1),
      I2 => next_rr_hot(3),
      I3 => next_rr_hot(0),
      I4 => next_rr_hot(2),
      O => last_rr_hot
    );
\last_rr_hot[3]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0F0200000000"
    )
        port map (
      I0 => \last_rr_hot[3]_i_3__0_n_0\,
      I1 => p_87_out,
      I2 => p_66_out,
      I3 => p_4_in,
      I4 => p_5_in,
      I5 => p_43_out,
      O => next_rr_hot(3)
    );
\last_rr_hot[3]_i_3__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_108_out,
      I1 => p_6_in,
      I2 => \last_rr_hot_reg_n_0_[0]\,
      O => \last_rr_hot[3]_i_3__0_n_0\
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_rr_hot,
      D => next_rr_hot(0),
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => SR(0)
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_rr_hot,
      D => next_rr_hot(1),
      Q => p_4_in,
      R => SR(0)
    );
\last_rr_hot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_rr_hot,
      D => next_rr_hot(2),
      Q => p_5_in,
      R => SR(0)
    );
\last_rr_hot_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => last_rr_hot,
      D => next_rr_hot(3),
      Q => p_6_in,
      S => SR(0)
    );
\s_axi_bid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \s_axi_bid[3]_2\(0),
      I1 => \s_axi_bid[3]_0\(2),
      I2 => \gen_multi_thread.resp_select\(1),
      I3 => \gen_multi_thread.resp_select\(0),
      I4 => \s_axi_bid[3]_1\(2),
      I5 => \s_axi_bid[3]\(2),
      O => \^m_payload_i_reg[2]\
    );
\s_axi_bid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \s_axi_bid[3]_2\(1),
      I1 => \s_axi_bid[3]_0\(3),
      I2 => \gen_multi_thread.resp_select\(1),
      I3 => \gen_multi_thread.resp_select\(0),
      I4 => \s_axi_bid[3]_1\(3),
      I5 => \s_axi_bid[3]\(3),
      O => \^s_axi_bid\(0)
    );
\s_axi_bid[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \s_axi_bid[3]_2\(2),
      I1 => \s_axi_bid[3]_0\(4),
      I2 => \gen_multi_thread.resp_select\(1),
      I3 => \gen_multi_thread.resp_select\(0),
      I4 => \s_axi_bid[3]_1\(4),
      I5 => \s_axi_bid[3]\(4),
      O => \^s_axi_bid\(1)
    );
\s_axi_bid[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \s_axi_bid[3]_2\(3),
      I1 => \s_axi_bid[3]_0\(5),
      I2 => \gen_multi_thread.resp_select\(1),
      I3 => \gen_multi_thread.resp_select\(0),
      I4 => \s_axi_bid[3]_1\(5),
      I5 => \s_axi_bid[3]\(5),
      O => \^s_axi_bid\(2)
    );
\s_axi_bid[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_66_out,
      I1 => \^q\(2),
      I2 => p_43_out,
      I3 => \^q\(3),
      O => \gen_multi_thread.resp_select\(1)
    );
\s_axi_bid[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_87_out,
      I1 => \^q\(1),
      I2 => p_43_out,
      I3 => \^q\(3),
      O => \gen_multi_thread.resp_select\(0)
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFCFA0C"
    )
        port map (
      I0 => \s_axi_bid[3]\(0),
      I1 => \s_axi_bid[3]_0\(0),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => \gen_multi_thread.resp_select\(1),
      I4 => \s_axi_bid[3]_1\(0),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FAFCFA0C"
    )
        port map (
      I0 => \s_axi_bid[3]\(1),
      I1 => \s_axi_bid[3]_0\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => \gen_multi_thread.resp_select\(1),
      I4 => \s_axi_bid[3]_1\(1),
      O => s_axi_bresp(1)
    );
\s_axi_bvalid[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_87_out,
      I2 => \^q\(0),
      I3 => p_108_out,
      I4 => \gen_multi_thread.resp_select\(1),
      O => \^s_axi_bvalid\(0)
    );
\s_ready_i_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808FFFFF"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_bready(0),
      I2 => p_87_out,
      I3 => m_axi_bvalid(1),
      I4 => s_ready_i_reg,
      O => \chosen_reg[1]_0\
    );
\s_ready_i_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808FFFFF"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_bready(0),
      I2 => p_108_out,
      I3 => m_axi_bvalid(0),
      I4 => s_ready_i_reg,
      O => \chosen_reg[0]_0\
    );
s_ready_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808FFFFF"
    )
        port map (
      I0 => \^q\(2),
      I1 => s_axi_bready(0),
      I2 => p_66_out,
      I3 => m_axi_bvalid(2),
      I4 => s_ready_i_reg,
      O => \chosen_reg[2]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_arbiter_resp_7 is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[2]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \chosen_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[1]_1\ : out STD_LOGIC;
    \gen_multi_thread.any_pop__1\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \chosen_reg[0]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[3]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_valid_i_reg\ : out STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[8]\ : out STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[8]_0\ : out STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[0]\ : out STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[0]_0\ : out STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i_reg[3]\ : in STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i_reg[3]_0\ : in STD_LOGIC;
    \gen_multi_thread.s_avalid_en\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_valid_i_reg_0\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_60_out : in STD_LOGIC;
    p_81_out : in STD_LOGIC;
    \gen_multi_thread.accept_cnt\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_37_out : in STD_LOGIC;
    p_102_out : in STD_LOGIC;
    st_mr_rmesg : in STD_LOGIC_VECTOR ( 101 downto 0 );
    \gen_multi_thread.active_cnt_reg[8]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_multi_thread.active_cnt\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_multi_thread.active_cnt_reg[0]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    st_mr_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_axi_rlast[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rlast[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rlast[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rlast[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_valid_i_reg_1\ : in STD_LOGIC;
    \valid_qual_i0__2\ : in STD_LOGIC;
    aa_mi_arvalid : in STD_LOGIC;
    \gen_multi_thread.active_cnt_reg[9]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.active_cnt_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_arbiter_resp_7 : entity is "axi_crossbar_v2_1_21_arbiter_resp";
end axi_bus_axi_crossbar_v2_1_21_arbiter_resp_7;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_arbiter_resp_7 is
  signal \^q\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^chosen_reg[1]_1\ : STD_LOGIC;
  signal \gen_multi_thread.accept_limit\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[1]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[1]_i_3__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[9]_i_2__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt[9]_i_3__0_n_0\ : STD_LOGIC;
  signal \^gen_multi_thread.any_pop__1\ : STD_LOGIC;
  signal \gen_multi_thread.resp_select\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal last_rr_hot : STD_LOGIC;
  signal \last_rr_hot[0]_i_2_n_0\ : STD_LOGIC;
  signal \last_rr_hot[1]_i_2_n_0\ : STD_LOGIC;
  signal \last_rr_hot[2]_i_2_n_0\ : STD_LOGIC;
  signal \last_rr_hot[3]_i_3_n_0\ : STD_LOGIC;
  signal \last_rr_hot_reg_n_0_[0]\ : STD_LOGIC;
  signal need_arbitration : STD_LOGIC;
  signal next_rr_hot : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal p_4_in : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal \s_axi_rdata[29]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata[29]_INST_0_i_3_n_0\ : STD_LOGIC;
  signal \^s_axi_rid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_rlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute use_clock_enable : string;
  attribute use_clock_enable of \chosen_reg[0]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[1]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[2]\ : label is "yes";
  attribute use_clock_enable of \chosen_reg[3]\ : label is "yes";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.active_cnt[9]_i_4__0\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \gen_no_arbiter.s_ready_i[0]_i_4\ : label is "soft_lutpair75";
  attribute SOFT_HLUTNM of \last_rr_hot[3]_i_3\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1__0\ : label is "soft_lutpair76";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_1__1\ : label is "soft_lutpair78";
  attribute SOFT_HLUTNM of \s_axi_rid[3]_INST_0_i_1\ : label is "soft_lutpair77";
  attribute SOFT_HLUTNM of \s_axi_rid[3]_INST_0_i_2\ : label is "soft_lutpair76";
begin
  Q(3 downto 0) <= \^q\(3 downto 0);
  \chosen_reg[1]_1\ <= \^chosen_reg[1]_1\;
  \gen_multi_thread.any_pop__1\ <= \^gen_multi_thread.any_pop__1\;
  s_axi_rid(3 downto 0) <= \^s_axi_rid\(3 downto 0);
  s_axi_rlast(0) <= \^s_axi_rlast\(0);
\chosen[3]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BBBBBBBBBBBBBBB8"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^chosen_reg[1]_1\,
      I2 => p_81_out,
      I3 => p_37_out,
      I4 => p_102_out,
      I5 => p_60_out,
      O => need_arbitration
    );
\chosen_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => need_arbitration,
      D => next_rr_hot(0),
      Q => \^q\(0),
      R => SR(0)
    );
\chosen_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => need_arbitration,
      D => next_rr_hot(1),
      Q => \^q\(1),
      R => SR(0)
    );
\chosen_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => need_arbitration,
      D => next_rr_hot(2),
      Q => \^q\(2),
      R => SR(0)
    );
\chosen_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => need_arbitration,
      D => next_rr_hot(3),
      Q => \^q\(3),
      R => SR(0)
    );
\gen_multi_thread.active_cnt[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"807F7F80"
    )
        port map (
      I0 => \^gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_cnt[1]_i_3__0_n_0\,
      I2 => \gen_multi_thread.active_cnt[1]_i_2__0_n_0\,
      I3 => \gen_multi_thread.active_cnt_reg[1]\(0),
      I4 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.active_cnt_reg[0]_0\
    );
\gen_multi_thread.active_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E777777718888888"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(0),
      I1 => \gen_multi_thread.active_cnt_reg[1]\(0),
      I2 => \gen_multi_thread.active_cnt[1]_i_2__0_n_0\,
      I3 => \gen_multi_thread.active_cnt[1]_i_3__0_n_0\,
      I4 => \^gen_multi_thread.any_pop__1\,
      I5 => \gen_multi_thread.active_cnt\(1),
      O => \gen_multi_thread.active_cnt_reg[0]\
    );
\gen_multi_thread.active_cnt[1]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8241000000008241"
    )
        port map (
      I0 => \^s_axi_rid\(0),
      I1 => \^s_axi_rid\(3),
      I2 => \gen_multi_thread.active_cnt_reg[0]_1\(3),
      I3 => \gen_multi_thread.active_cnt_reg[0]_1\(0),
      I4 => \^s_axi_rid\(2),
      I5 => \gen_multi_thread.active_cnt_reg[0]_1\(2),
      O => \gen_multi_thread.active_cnt[1]_i_2__0_n_0\
    );
\gen_multi_thread.active_cnt[1]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9990"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt_reg[0]_1\(1),
      I1 => \^s_axi_rid\(1),
      I2 => \gen_multi_thread.active_cnt\(0),
      I3 => \gen_multi_thread.active_cnt\(1),
      O => \gen_multi_thread.active_cnt[1]_i_3__0_n_0\
    );
\gen_multi_thread.active_cnt[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"807F7F80"
    )
        port map (
      I0 => \^gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.active_cnt[9]_i_3__0_n_0\,
      I2 => \gen_multi_thread.active_cnt[9]_i_2__0_n_0\,
      I3 => \gen_multi_thread.active_cnt_reg[9]\(0),
      I4 => \gen_multi_thread.active_cnt\(2),
      O => \gen_multi_thread.active_cnt_reg[8]_0\
    );
\gen_multi_thread.active_cnt[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E777777718888888"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(2),
      I1 => \gen_multi_thread.active_cnt_reg[9]\(0),
      I2 => \gen_multi_thread.active_cnt[9]_i_2__0_n_0\,
      I3 => \gen_multi_thread.active_cnt[9]_i_3__0_n_0\,
      I4 => \^gen_multi_thread.any_pop__1\,
      I5 => \gen_multi_thread.active_cnt\(3),
      O => \gen_multi_thread.active_cnt_reg[8]\
    );
\gen_multi_thread.active_cnt[9]_i_2__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8241000000008241"
    )
        port map (
      I0 => \^s_axi_rid\(0),
      I1 => \^s_axi_rid\(3),
      I2 => \gen_multi_thread.active_cnt_reg[8]_1\(3),
      I3 => \gen_multi_thread.active_cnt_reg[8]_1\(0),
      I4 => \^s_axi_rid\(2),
      I5 => \gen_multi_thread.active_cnt_reg[8]_1\(2),
      O => \gen_multi_thread.active_cnt[9]_i_2__0_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_3__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9990"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt_reg[8]_1\(1),
      I1 => \^s_axi_rid\(1),
      I2 => \gen_multi_thread.active_cnt\(2),
      I3 => \gen_multi_thread.active_cnt\(3),
      O => \gen_multi_thread.active_cnt[9]_i_3__0_n_0\
    );
\gen_multi_thread.active_cnt[9]_i_4__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_rready(0),
      I1 => \^chosen_reg[1]_1\,
      I2 => \^s_axi_rlast\(0),
      O => \^gen_multi_thread.any_pop__1\
    );
\gen_no_arbiter.m_valid_i_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5D5555550C000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_valid_i_reg_1\,
      I1 => \valid_qual_i0__2\,
      I2 => \gen_multi_thread.accept_limit\,
      I3 => \gen_multi_thread.s_avalid_en\(0),
      I4 => \gen_no_arbiter.m_valid_i_reg_0\,
      I5 => aa_mi_arvalid,
      O => \gen_no_arbiter.m_valid_i_reg\
    );
\gen_no_arbiter.s_ready_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E00000000000000"
    )
        port map (
      I0 => \gen_no_arbiter.m_target_hot_i_reg[3]\,
      I1 => \gen_no_arbiter.m_target_hot_i_reg[3]_0\,
      I2 => \gen_multi_thread.accept_limit\,
      I3 => \gen_multi_thread.s_avalid_en\(0),
      I4 => \gen_no_arbiter.m_valid_i_reg_0\,
      I5 => aresetn_d,
      O => E(0)
    );
\gen_no_arbiter.s_ready_i[0]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04444444"
    )
        port map (
      I0 => \gen_multi_thread.accept_cnt\(0),
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \^s_axi_rlast\(0),
      I3 => \^chosen_reg[1]_1\,
      I4 => s_axi_rready(0),
      O => \gen_multi_thread.accept_limit\
    );
\last_rr_hot[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00AE00000000"
    )
        port map (
      I0 => p_5_in,
      I1 => p_4_in,
      I2 => p_60_out,
      I3 => p_37_out,
      I4 => \last_rr_hot[0]_i_2_n_0\,
      I5 => p_102_out,
      O => next_rr_hot(0)
    );
\last_rr_hot[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => p_81_out,
      I1 => p_37_out,
      I2 => \last_rr_hot_reg_n_0_[0]\,
      I3 => p_60_out,
      I4 => p_6_in,
      O => \last_rr_hot[0]_i_2_n_0\
    );
\last_rr_hot[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0F0200000000"
    )
        port map (
      I0 => \last_rr_hot[1]_i_2_n_0\,
      I1 => p_37_out,
      I2 => p_102_out,
      I3 => p_6_in,
      I4 => \last_rr_hot_reg_n_0_[0]\,
      I5 => p_81_out,
      O => next_rr_hot(1)
    );
\last_rr_hot[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_60_out,
      I1 => p_4_in,
      I2 => p_5_in,
      O => \last_rr_hot[1]_i_2_n_0\
    );
\last_rr_hot[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF00AE00000000"
    )
        port map (
      I0 => \last_rr_hot_reg_n_0_[0]\,
      I1 => p_6_in,
      I2 => p_102_out,
      I3 => p_81_out,
      I4 => \last_rr_hot[2]_i_2_n_0\,
      I5 => p_60_out,
      O => next_rr_hot(2)
    );
\last_rr_hot[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0010"
    )
        port map (
      I0 => p_81_out,
      I1 => p_37_out,
      I2 => p_5_in,
      I3 => p_102_out,
      I4 => p_4_in,
      O => \last_rr_hot[2]_i_2_n_0\
    );
\last_rr_hot[3]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAA8"
    )
        port map (
      I0 => need_arbitration,
      I1 => next_rr_hot(1),
      I2 => next_rr_hot(3),
      I3 => next_rr_hot(0),
      I4 => next_rr_hot(2),
      O => last_rr_hot
    );
\last_rr_hot[3]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0F0200000000"
    )
        port map (
      I0 => \last_rr_hot[3]_i_3_n_0\,
      I1 => p_81_out,
      I2 => p_60_out,
      I3 => p_4_in,
      I4 => p_5_in,
      I5 => p_37_out,
      O => next_rr_hot(3)
    );
\last_rr_hot[3]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"F4"
    )
        port map (
      I0 => p_102_out,
      I1 => p_6_in,
      I2 => \last_rr_hot_reg_n_0_[0]\,
      O => \last_rr_hot[3]_i_3_n_0\
    );
\last_rr_hot_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_rr_hot,
      D => next_rr_hot(0),
      Q => \last_rr_hot_reg_n_0_[0]\,
      R => SR(0)
    );
\last_rr_hot_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_rr_hot,
      D => next_rr_hot(1),
      Q => p_4_in,
      R => SR(0)
    );
\last_rr_hot_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => last_rr_hot,
      D => next_rr_hot(2),
      Q => p_5_in,
      R => SR(0)
    );
\last_rr_hot_reg[3]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => last_rr_hot,
      D => next_rr_hot(3),
      Q => p_6_in,
      S => SR(0)
    );
\m_payload_i[38]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^q\(2),
      I1 => s_axi_rready(0),
      I2 => p_60_out,
      O => \chosen_reg[2]_0\(0)
    );
\m_payload_i[38]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^q\(1),
      I1 => s_axi_rready(0),
      I2 => p_81_out,
      O => \chosen_reg[1]_0\(0)
    );
\m_payload_i[38]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^q\(0),
      I1 => s_axi_rready(0),
      I2 => p_102_out,
      O => \chosen_reg[0]_0\(0)
    );
\m_payload_i[38]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"8F"
    )
        port map (
      I0 => \^q\(3),
      I1 => s_axi_rready(0),
      I2 => p_37_out,
      O => \chosen_reg[3]_0\(0)
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(2),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(36),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(70),
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(12),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(46),
      I4 => st_mr_rmesg(80),
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(13),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(47),
      I4 => st_mr_rmesg(81),
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(14),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(48),
      I4 => st_mr_rmesg(82),
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(15),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(49),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(83),
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(16),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(50),
      I4 => st_mr_rmesg(84),
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(17),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(51),
      I4 => st_mr_rmesg(85),
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(18),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(52),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(86),
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(19),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(53),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(87),
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(20),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(54),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(88),
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(21),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(55),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(89),
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(3),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(37),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(71),
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(22),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(56),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(90),
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(23),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(57),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(91),
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(24),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(58),
      I4 => st_mr_rmesg(92),
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(25),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(59),
      I4 => st_mr_rmesg(93),
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(26),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(60),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(94),
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(27),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(61),
      I4 => st_mr_rmesg(95),
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(28),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(62),
      I4 => st_mr_rmesg(96),
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(29),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(63),
      I4 => st_mr_rmesg(97),
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(30),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(64),
      I4 => st_mr_rmesg(98),
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(31),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(65),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(99),
      O => s_axi_rdata(29)
    );
\s_axi_rdata[29]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000077707770777"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_81_out,
      I2 => \^q\(3),
      I3 => p_37_out,
      I4 => \^q\(2),
      I5 => p_60_out,
      O => \s_axi_rdata[29]_INST_0_i_1_n_0\
    );
\s_axi_rdata[29]_INST_0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000088808880888"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_81_out,
      I2 => \^q\(3),
      I3 => p_37_out,
      I4 => \^q\(2),
      I5 => p_60_out,
      O => \s_axi_rdata[29]_INST_0_i_2_n_0\
    );
\s_axi_rdata[29]_INST_0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000088808880888"
    )
        port map (
      I0 => \^q\(2),
      I1 => p_60_out,
      I2 => \^q\(3),
      I3 => p_37_out,
      I4 => \^q\(1),
      I5 => p_81_out,
      O => \s_axi_rdata[29]_INST_0_i_3_n_0\
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(4),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(38),
      I4 => st_mr_rmesg(72),
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(32),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(66),
      I4 => st_mr_rmesg(100),
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(33),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(67),
      I4 => st_mr_rmesg(101),
      O => s_axi_rdata(31)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(5),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(39),
      I4 => st_mr_rmesg(73),
      O => s_axi_rdata(3)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(6),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(40),
      I4 => st_mr_rmesg(74),
      O => s_axi_rdata(4)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(7),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(41),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(75),
      O => s_axi_rdata(5)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(8),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(42),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(76),
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(9),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(43),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(77),
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFF888F888F888"
    )
        port map (
      I0 => st_mr_rmesg(10),
      I1 => \s_axi_rdata[29]_INST_0_i_1_n_0\,
      I2 => \s_axi_rdata[29]_INST_0_i_2_n_0\,
      I3 => st_mr_rmesg(44),
      I4 => \s_axi_rdata[29]_INST_0_i_3_n_0\,
      I5 => st_mr_rmesg(78),
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(11),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(45),
      I4 => st_mr_rmesg(79),
      O => s_axi_rdata(9)
    );
\s_axi_rid[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => st_mr_rid(12),
      I1 => st_mr_rid(0),
      I2 => \gen_multi_thread.resp_select\(1),
      I3 => \gen_multi_thread.resp_select\(0),
      I4 => st_mr_rid(4),
      I5 => st_mr_rid(8),
      O => \^s_axi_rid\(0)
    );
\s_axi_rid[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => st_mr_rid(13),
      I1 => st_mr_rid(1),
      I2 => \gen_multi_thread.resp_select\(1),
      I3 => \gen_multi_thread.resp_select\(0),
      I4 => st_mr_rid(5),
      I5 => st_mr_rid(9),
      O => \^s_axi_rid\(1)
    );
\s_axi_rid[2]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => st_mr_rid(14),
      I1 => st_mr_rid(2),
      I2 => \gen_multi_thread.resp_select\(1),
      I3 => \gen_multi_thread.resp_select\(0),
      I4 => st_mr_rid(6),
      I5 => st_mr_rid(10),
      O => \^s_axi_rid\(2)
    );
\s_axi_rid[3]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => st_mr_rid(15),
      I1 => st_mr_rid(3),
      I2 => \gen_multi_thread.resp_select\(1),
      I3 => \gen_multi_thread.resp_select\(0),
      I4 => st_mr_rid(7),
      I5 => st_mr_rid(11),
      O => \^s_axi_rid\(3)
    );
\s_axi_rid[3]_INST_0_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_60_out,
      I1 => \^q\(2),
      I2 => p_37_out,
      I3 => \^q\(3),
      O => \gen_multi_thread.resp_select\(1)
    );
\s_axi_rid[3]_INST_0_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => p_81_out,
      I1 => \^q\(1),
      I2 => p_37_out,
      I3 => \^q\(3),
      O => \gen_multi_thread.resp_select\(0)
    );
\s_axi_rlast[0]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFFCA0FCAF0CA00C"
    )
        port map (
      I0 => \s_axi_rlast[0]\(0),
      I1 => \s_axi_rlast[0]_0\(0),
      I2 => \gen_multi_thread.resp_select\(1),
      I3 => \gen_multi_thread.resp_select\(0),
      I4 => \s_axi_rlast[0]_1\(0),
      I5 => \s_axi_rlast[0]_2\(0),
      O => \^s_axi_rlast\(0)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(0),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(34),
      I4 => st_mr_rmesg(68),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FECEF2C2"
    )
        port map (
      I0 => st_mr_rmesg(1),
      I1 => \gen_multi_thread.resp_select\(1),
      I2 => \gen_multi_thread.resp_select\(0),
      I3 => st_mr_rmesg(35),
      I4 => st_mr_rmesg(69),
      O => s_axi_rresp(1)
    );
\s_axi_rvalid[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFF888"
    )
        port map (
      I0 => \^q\(1),
      I1 => p_81_out,
      I2 => \^q\(0),
      I3 => p_102_out,
      I4 => \gen_multi_thread.resp_select\(1),
      O => \^chosen_reg[1]_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_decerr_slave is
  port (
    mi_awready_3 : out STD_LOGIC;
    p_18_in : out STD_LOGIC;
    p_25_in : out STD_LOGIC;
    p_19_in : out STD_LOGIC;
    mi_arready_3 : out STD_LOGIC;
    \gen_axi.s_axi_rlast_i\ : out STD_LOGIC;
    \FSM_onehot_gen_axi.write_cs_reg[1]_0\ : out STD_LOGIC;
    \gen_axi.s_axi_bid_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_axi.s_axi_rid_i_reg[3]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    mi_bready_3 : in STD_LOGIC;
    \gen_axi.write_cs01_out\ : in STD_LOGIC;
    \gen_axi.write_cs0__0\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    mi_rready_3 : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_mi_arvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.read_cnt_reg[3]_0\ : in STD_LOGIC_VECTOR ( 7 downto 0 );
    aa_sa_awvalid : in STD_LOGIC;
    m_ready_d : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.s_axi_wready_i_reg_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    mi_awvalid_en : in STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg_1\ : in STD_LOGIC;
    \gen_axi.s_axi_rlast_i_reg_0\ : in STD_LOGIC;
    \gen_axi.s_axi_bid_i_reg[3]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_decerr_slave : entity is "axi_crossbar_v2_1_21_decerr_slave";
end axi_bus_axi_crossbar_v2_1_21_decerr_slave;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_decerr_slave is
  signal \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\ : STD_LOGIC;
  signal \^fsm_onehot_gen_axi.write_cs_reg[1]_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_axi.read_cnt[6]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cnt_reg\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_axi.read_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \gen_axi.read_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.read_cs__6\ : STD_LOGIC;
  signal \gen_axi.s_axi_arready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_awready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bid_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \^gen_axi.s_axi_rlast_i\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_rlast_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_wready_i_i_1_n_0\ : STD_LOGIC;
  signal \^mi_arready_3\ : STD_LOGIC;
  signal \^mi_awready_3\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^p_18_in\ : STD_LOGIC;
  signal \^p_19_in\ : STD_LOGIC;
  signal \^p_25_in\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[0]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[1]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.write_cs_reg[2]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[1]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[2]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_axi.read_cnt[6]_i_2\ : label is "soft_lutpair11";
begin
  \FSM_onehot_gen_axi.write_cs_reg[1]_0\ <= \^fsm_onehot_gen_axi.write_cs_reg[1]_0\;
  \gen_axi.s_axi_rlast_i\ <= \^gen_axi.s_axi_rlast_i\;
  mi_arready_3 <= \^mi_arready_3\;
  mi_awready_3 <= \^mi_awready_3\;
  p_18_in <= \^p_18_in\;
  p_19_in <= \^p_19_in\;
  p_25_in <= \^p_25_in\;
\FSM_onehot_gen_axi.write_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"CCCCCF88CF88CF88"
    )
        port map (
      I0 => mi_bready_3,
      I1 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I2 => \gen_axi.write_cs01_out\,
      I3 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I4 => \^fsm_onehot_gen_axi.write_cs_reg[1]_0\,
      I5 => \gen_axi.write_cs0__0\,
      O => \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF00F800FF77F800"
    )
        port map (
      I0 => mi_bready_3,
      I1 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I2 => \gen_axi.write_cs01_out\,
      I3 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I4 => \^fsm_onehot_gen_axi.write_cs_reg[1]_0\,
      I5 => \gen_axi.write_cs0__0\,
      O => \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF0444FCCC0444"
    )
        port map (
      I0 => mi_bready_3,
      I1 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I2 => \gen_axi.write_cs01_out\,
      I3 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I4 => \^fsm_onehot_gen_axi.write_cs_reg[1]_0\,
      I5 => \gen_axi.write_cs0__0\,
      O => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\
    );
\FSM_onehot_gen_axi.write_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.write_cs[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_gen_axi.write_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.write_cs[1]_i_1_n_0\,
      Q => \^fsm_onehot_gen_axi.write_cs_reg[1]_0\,
      R => SR(0)
    );
\FSM_onehot_gen_axi.write_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.write_cs[2]_i_1_n_0\,
      Q => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      R => SR(0)
    );
\gen_axi.read_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg\(0),
      I1 => \^p_19_in\,
      I2 => \gen_axi.read_cnt_reg[3]_0\(4),
      O => p_0_in(0)
    );
\gen_axi.read_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[3]_0\(5),
      I1 => \^p_19_in\,
      I2 => \gen_axi.read_cnt_reg\(0),
      I3 => \gen_axi.read_cnt_reg__0\(1),
      O => p_0_in(1)
    );
\gen_axi.read_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCC3AAAA"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[3]_0\(6),
      I1 => \gen_axi.read_cnt_reg__0\(2),
      I2 => \gen_axi.read_cnt_reg\(0),
      I3 => \gen_axi.read_cnt_reg__0\(1),
      I4 => \^p_19_in\,
      O => p_0_in(2)
    );
\gen_axi.read_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCAAAA0003AAAA"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg[3]_0\(7),
      I1 => \gen_axi.read_cnt_reg__0\(2),
      I2 => \gen_axi.read_cnt_reg\(0),
      I3 => \gen_axi.read_cnt_reg__0\(1),
      I4 => \^p_19_in\,
      I5 => \gen_axi.read_cnt_reg__0\(3),
      O => p_0_in(3)
    );
\gen_axi.read_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000010000"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(1),
      I1 => \gen_axi.read_cnt_reg\(0),
      I2 => \gen_axi.read_cnt_reg__0\(2),
      I3 => \gen_axi.read_cnt_reg__0\(3),
      I4 => \^p_19_in\,
      I5 => \gen_axi.read_cnt_reg__0\(4),
      O => p_0_in(4)
    );
\gen_axi.read_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FE000100"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(3),
      I1 => \gen_axi.read_cnt[6]_i_2_n_0\,
      I2 => \gen_axi.read_cnt_reg__0\(4),
      I3 => \^p_19_in\,
      I4 => \gen_axi.read_cnt_reg__0\(5),
      O => p_0_in(5)
    );
\gen_axi.read_cnt[6]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFE000000010000"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(4),
      I1 => \gen_axi.read_cnt[6]_i_2_n_0\,
      I2 => \gen_axi.read_cnt_reg__0\(3),
      I3 => \gen_axi.read_cnt_reg__0\(5),
      I4 => \^p_19_in\,
      I5 => \gen_axi.read_cnt_reg__0\(6),
      O => p_0_in(6)
    );
\gen_axi.read_cnt[6]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(2),
      I1 => \gen_axi.read_cnt_reg\(0),
      I2 => \gen_axi.read_cnt_reg__0\(1),
      O => \gen_axi.read_cnt[6]_i_2_n_0\
    );
\gen_axi.read_cnt[7]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"4F40404040404040"
    )
        port map (
      I0 => \gen_axi.read_cs__6\,
      I1 => mi_rready_3,
      I2 => \^p_19_in\,
      I3 => aa_mi_arvalid,
      I4 => \^mi_arready_3\,
      I5 => Q(0),
      O => \gen_axi.read_cnt[7]_i_1_n_0\
    );
\gen_axi.read_cnt[7]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E010"
    )
        port map (
      I0 => \gen_axi.read_cnt[7]_i_4_n_0\,
      I1 => \gen_axi.read_cnt_reg__0\(6),
      I2 => \^p_19_in\,
      I3 => \gen_axi.read_cnt_reg__0\(7),
      O => p_0_in(7)
    );
\gen_axi.read_cnt[7]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(6),
      I1 => \gen_axi.read_cnt_reg__0\(7),
      I2 => \gen_axi.read_cnt_reg__0\(5),
      I3 => \gen_axi.read_cnt_reg__0\(4),
      I4 => \gen_axi.read_cnt_reg__0\(3),
      I5 => \gen_axi.read_cnt[6]_i_2_n_0\,
      O => \gen_axi.read_cs__6\
    );
\gen_axi.read_cnt[7]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(4),
      I1 => \gen_axi.read_cnt_reg__0\(1),
      I2 => \gen_axi.read_cnt_reg\(0),
      I3 => \gen_axi.read_cnt_reg__0\(2),
      I4 => \gen_axi.read_cnt_reg__0\(3),
      I5 => \gen_axi.read_cnt_reg__0\(5),
      O => \gen_axi.read_cnt[7]_i_4_n_0\
    );
\gen_axi.read_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \gen_axi.read_cnt_reg\(0),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \gen_axi.read_cnt_reg__0\(1),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \gen_axi.read_cnt_reg__0\(2),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \gen_axi.read_cnt_reg__0\(3),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \gen_axi.read_cnt_reg__0\(4),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \gen_axi.read_cnt_reg__0\(5),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \gen_axi.read_cnt_reg__0\(6),
      R => SR(0)
    );
\gen_axi.read_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.read_cnt[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \gen_axi.read_cnt_reg__0\(7),
      R => SR(0)
    );
\gen_axi.read_cs[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7F70707070707070"
    )
        port map (
      I0 => \gen_axi.read_cs__6\,
      I1 => mi_rready_3,
      I2 => \^p_19_in\,
      I3 => aa_mi_arvalid,
      I4 => \^mi_arready_3\,
      I5 => Q(0),
      O => \gen_axi.read_cs[0]_i_1_n_0\
    );
\gen_axi.read_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.read_cs[0]_i_1_n_0\,
      Q => \^p_19_in\,
      R => SR(0)
    );
\gen_axi.s_axi_arready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA80AA"
    )
        port map (
      I0 => aresetn_d,
      I1 => mi_rready_3,
      I2 => \gen_axi.read_cs__6\,
      I3 => \^p_19_in\,
      I4 => \^mi_arready_3\,
      I5 => E(0),
      O => \gen_axi.s_axi_arready_i_i_1_n_0\
    );
\gen_axi.s_axi_arready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_arready_i_i_1_n_0\,
      Q => \^mi_arready_3\,
      R => '0'
    );
\gen_axi.s_axi_awready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBFFFB0B0B0"
    )
        port map (
      I0 => \^fsm_onehot_gen_axi.write_cs_reg[1]_0\,
      I1 => \gen_axi.write_cs01_out\,
      I2 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I3 => mi_bready_3,
      I4 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I5 => \^mi_awready_3\,
      O => \gen_axi.s_axi_awready_i_i_1_n_0\
    );
\gen_axi.s_axi_awready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_awready_i_i_1_n_0\,
      Q => \^mi_awready_3\,
      R => SR(0)
    );
\gen_axi.s_axi_bid_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I1 => aa_sa_awvalid,
      I2 => m_ready_d(0),
      I3 => \gen_axi.s_axi_wready_i_reg_0\(0),
      I4 => \^mi_awready_3\,
      O => \gen_axi.s_axi_bid_i[3]_i_1_n_0\
    );
\gen_axi.s_axi_bid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.s_axi_bid_i[3]_i_1_n_0\,
      D => \gen_axi.s_axi_bid_i_reg[3]_1\(0),
      Q => \gen_axi.s_axi_bid_i_reg[3]_0\(0),
      R => SR(0)
    );
\gen_axi.s_axi_bid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.s_axi_bid_i[3]_i_1_n_0\,
      D => \gen_axi.s_axi_bid_i_reg[3]_1\(1),
      Q => \gen_axi.s_axi_bid_i_reg[3]_0\(1),
      R => SR(0)
    );
\gen_axi.s_axi_bid_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.s_axi_bid_i[3]_i_1_n_0\,
      D => \gen_axi.s_axi_bid_i_reg[3]_1\(2),
      Q => \gen_axi.s_axi_bid_i_reg[3]_0\(2),
      R => SR(0)
    );
\gen_axi.s_axi_bid_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.s_axi_bid_i[3]_i_1_n_0\,
      D => \gen_axi.s_axi_bid_i_reg[3]_1\(3),
      Q => \gen_axi.s_axi_bid_i_reg[3]_0\(3),
      R => SR(0)
    );
\gen_axi.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \gen_axi.s_axi_wready_i_reg_1\,
      I1 => mi_bready_3,
      I2 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[2]\,
      I3 => \^p_25_in\,
      O => \gen_axi.s_axi_bvalid_i_i_1_n_0\
    );
\gen_axi.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_bvalid_i_i_1_n_0\,
      Q => \^p_25_in\,
      R => SR(0)
    );
\gen_axi.s_axi_rid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \gen_axi.read_cnt_reg[3]_0\(0),
      Q => \gen_axi.s_axi_rid_i_reg[3]_0\(0),
      R => SR(0)
    );
\gen_axi.s_axi_rid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \gen_axi.read_cnt_reg[3]_0\(1),
      Q => \gen_axi.s_axi_rid_i_reg[3]_0\(1),
      R => SR(0)
    );
\gen_axi.s_axi_rid_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \gen_axi.read_cnt_reg[3]_0\(2),
      Q => \gen_axi.s_axi_rid_i_reg[3]_0\(2),
      R => SR(0)
    );
\gen_axi.s_axi_rid_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \gen_axi.read_cnt_reg[3]_0\(3),
      Q => \gen_axi.s_axi_rid_i_reg[3]_0\(3),
      R => SR(0)
    );
\gen_axi.s_axi_rlast_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F4FFF400"
    )
        port map (
      I0 => \gen_axi.read_cs__6\,
      I1 => \^p_19_in\,
      I2 => \gen_axi.s_axi_rlast_i_reg_0\,
      I3 => \gen_axi.s_axi_rlast_i_i_3_n_0\,
      I4 => \^gen_axi.s_axi_rlast_i\,
      O => \gen_axi.s_axi_rlast_i_i_1_n_0\
    );
\gen_axi.s_axi_rlast_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(3),
      I1 => \gen_axi.read_cnt_reg__0\(2),
      I2 => \gen_axi.read_cnt_reg__0\(1),
      I3 => \gen_axi.s_axi_rlast_i_i_4_n_0\,
      I4 => E(0),
      O => \gen_axi.s_axi_rlast_i_i_3_n_0\
    );
\gen_axi.s_axi_rlast_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \gen_axi.read_cnt_reg__0\(4),
      I1 => \gen_axi.read_cnt_reg__0\(5),
      I2 => \gen_axi.read_cnt_reg__0\(6),
      I3 => \gen_axi.read_cnt_reg__0\(7),
      I4 => mi_rready_3,
      I5 => \^p_19_in\,
      O => \gen_axi.s_axi_rlast_i_i_4_n_0\
    );
\gen_axi.s_axi_rlast_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_rlast_i_i_1_n_0\,
      Q => \^gen_axi.s_axi_rlast_i\,
      R => SR(0)
    );
\gen_axi.s_axi_wready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000FFFF80008000"
    )
        port map (
      I0 => \^mi_awready_3\,
      I1 => \gen_axi.s_axi_wready_i_reg_0\(0),
      I2 => mi_awvalid_en,
      I3 => \FSM_onehot_gen_axi.write_cs_reg_n_0_[0]\,
      I4 => \gen_axi.s_axi_wready_i_reg_1\,
      I5 => \^p_18_in\,
      O => \gen_axi.s_axi_wready_i_i_1_n_0\
    );
\gen_axi.s_axi_wready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.s_axi_wready_i_i_1_n_0\,
      Q => \^p_18_in\,
      R => SR(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_splitter is
  port (
    s_ready_i_reg : out STD_LOGIC;
    \m_ready_d_reg[1]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_ready_i0__1\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awvalid : out STD_LOGIC;
    ss_wr_awready : in STD_LOGIC;
    ss_aa_awready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aresetn_d : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_splitter : entity is "axi_crossbar_v2_1_21_splitter";
end axi_bus_axi_crossbar_v2_1_21_splitter;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_splitter is
  signal m_ready_d : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \^m_ready_d_reg[1]_0\ : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_no_arbiter.m_target_hot_i[3]_i_13\ : label is "soft_lutpair90";
  attribute SOFT_HLUTNM of \s_axi_awready[0]_INST_0\ : label is "soft_lutpair90";
begin
  \m_ready_d_reg[1]_0\(0) <= \^m_ready_d_reg[1]_0\(0);
\gen_no_arbiter.m_target_hot_i[3]_i_13\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => m_ready_d(0),
      I1 => ss_aa_awready,
      O => \s_ready_i0__1\(0)
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => \^m_ready_d_reg[1]_0\(0),
      O => ss_wr_awvalid
    );
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0008000C0000"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready,
      I3 => \^m_ready_d_reg[1]_0\(0),
      I4 => m_ready_d(0),
      I5 => ss_aa_awready,
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000000CC80"
    )
        port map (
      I0 => s_axi_awvalid(0),
      I1 => aresetn_d,
      I2 => ss_wr_awready,
      I3 => \^m_ready_d_reg[1]_0\(0),
      I4 => m_ready_d(0),
      I5 => ss_aa_awready,
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => m_ready_d(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d_reg[1]_0\(0),
      R => '0'
    );
\s_axi_awready[0]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EEE0"
    )
        port map (
      I0 => ss_wr_awready,
      I1 => \^m_ready_d_reg[1]_0\(0),
      I2 => m_ready_d(0),
      I3 => ss_aa_awready,
      O => s_ready_i_reg
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_splitter_4 is
  port (
    m_ready_d : out STD_LOGIC_VECTOR ( 1 downto 0 );
    aa_sa_awvalid : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    \mi_awready_mux__2\ : in STD_LOGIC;
    \s_ready_i0__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \sa_wm_awready_mux__2\ : in STD_LOGIC;
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_splitter_4 : entity is "axi_crossbar_v2_1_21_splitter";
end axi_bus_axi_crossbar_v2_1_21_splitter_4;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_splitter_4 is
  signal \^m_ready_d\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \m_ready_d[0]_i_1_n_0\ : STD_LOGIC;
  signal \m_ready_d[1]_i_1_n_0\ : STD_LOGIC;
begin
  m_ready_d(1 downto 0) <= \^m_ready_d\(1 downto 0);
\m_ready_d[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000C0008000C0000"
    )
        port map (
      I0 => aa_sa_awvalid,
      I1 => aresetn_d,
      I2 => \mi_awready_mux__2\,
      I3 => \^m_ready_d\(1),
      I4 => \^m_ready_d\(0),
      I5 => \sa_wm_awready_mux__2\,
      O => \m_ready_d[0]_i_1_n_0\
    );
\m_ready_d[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000CC80"
    )
        port map (
      I0 => aa_sa_awvalid,
      I1 => aresetn_d,
      I2 => \mi_awready_mux__2\,
      I3 => \^m_ready_d\(1),
      I4 => \s_ready_i0__1\(0),
      O => \m_ready_d[1]_i_1_n_0\
    );
\m_ready_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[0]_i_1_n_0\,
      Q => \^m_ready_d\(0),
      R => '0'
    );
\m_ready_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_ready_d[1]_i_1_n_0\,
      Q => \^m_ready_d\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_data_fifo_v2_1_19_ndeep_srl is
  port (
    \gen_rep[0].fifoaddr_reg[1]\ : out STD_LOGIC;
    push : in STD_LOGIC;
    st_aa_awtarget_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_data_fifo_v2_1_19_ndeep_srl : entity is "axi_data_fifo_v2_1_19_ndeep_srl";
end axi_bus_axi_data_fifo_v2_1_19_ndeep_srl;

architecture STRUCTURE of axi_bus_axi_data_fifo_v2_1_19_ndeep_srl is
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[0].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => push,
      CLK => aclk,
      D => st_aa_awtarget_enc(0),
      Q => \gen_rep[0].fifoaddr_reg[1]\,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_5 is
  port (
    p_2_out : out STD_LOGIC;
    push : in STD_LOGIC;
    st_aa_awtarget_enc : in STD_LOGIC_VECTOR ( 0 to 0 );
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_5 : entity is "axi_data_fifo_v2_1_19_ndeep_srl";
end axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_5;

architecture STRUCTURE of axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_5 is
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[1].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => push,
      CLK => aclk,
      D => st_aa_awtarget_enc(0),
      Q => p_2_out,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_6 is
  port (
    p_3_out : out STD_LOGIC;
    push : out STD_LOGIC;
    s_axi_wvalid_0_sp_1 : out STD_LOGIC;
    \m_aready0__2\ : out STD_LOGIC;
    fifoaddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC;
    ss_wr_awvalid : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_select_enc : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_18_in : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_avalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_6 : entity is "axi_data_fifo_v2_1_19_ndeep_srl";
end axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_6;

architecture STRUCTURE of axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_6 is
  signal \^m_aready0__2\ : STD_LOGIC;
  signal \^push\ : STD_LOGIC;
  signal \s_axi_wready[0]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal s_axi_wvalid_0_sn_1 : STD_LOGIC;
  signal \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\ : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "PRIMITIVE";
  attribute srl_bus_name : string;
  attribute srl_bus_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[2].srl_nx1/gen_primitive_shifter.gen_srls ";
  attribute srl_name : string;
  attribute srl_name of \gen_primitive_shifter.gen_srls[0].srl_inst\ : label is "inst/\gen_samd.crossbar_samd/gen_slave_slots[0].gen_si_write.wdata_router_w/wrouter_aw_fifo/gen_srls[0].gen_rep[2].srl_nx1/gen_primitive_shifter.gen_srls[0].srl_inst ";
begin
  \m_aready0__2\ <= \^m_aready0__2\;
  push <= \^push\;
  s_axi_wvalid_0_sp_1 <= s_axi_wvalid_0_sn_1;
\gen_primitive_shifter.gen_srls[0].srl_inst\: unisim.vcomponents.SRLC32E
    generic map(
      INIT => X"00000000",
      IS_CLK_INVERTED => '0'
    )
        port map (
      A(4 downto 2) => B"000",
      A(1 downto 0) => fifoaddr(1 downto 0),
      CE => \^push\,
      CLK => aclk,
      D => '0',
      Q => p_3_out,
      Q31 => \NLW_gen_primitive_shifter.gen_srls[0].srl_inst_Q31_UNCONNECTED\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8FFF000088880000"
    )
        port map (
      I0 => Q(0),
      I1 => \FSM_onehot_state_reg[1]\,
      I2 => s_axi_wvalid_0_sn_1,
      I3 => \^m_aready0__2\,
      I4 => ss_wr_awvalid,
      I5 => Q(1),
      O => \^push\
    );
\gen_primitive_shifter.gen_srls[0].srl_inst_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      I2 => s_axi_wlast(0),
      O => s_axi_wvalid_0_sn_1
    );
\s_axi_wready[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF000B0008"
    )
        port map (
      I0 => m_axi_wready(1),
      I1 => m_select_enc(0),
      I2 => m_select_enc(1),
      I3 => m_select_enc(2),
      I4 => m_axi_wready(0),
      I5 => \s_axi_wready[0]_INST_0_i_2_n_0\,
      O => \^m_aready0__2\
    );
\s_axi_wready[0]_INST_0_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30200020"
    )
        port map (
      I0 => m_axi_wready(2),
      I1 => m_select_enc(2),
      I2 => m_select_enc(1),
      I3 => m_select_enc(0),
      I4 => p_18_in,
      O => \s_axi_wready[0]_INST_0_i_2_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    mi_bready_3 : out STD_LOGIC;
    \aresetn_d_reg[1]_1\ : out STD_LOGIC;
    \m_payload_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    \aresetn_d_reg[1]_2\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_25_in : in STD_LOGIC;
    \m_payload_i_reg[5]_1\ : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\;

architecture STRUCTURE of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\ is
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]_1\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen4\ : STD_LOGIC;
  signal \m_valid_i_i_1__1_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^mi_bready_3\ : STD_LOGIC;
  signal \s_ready_i_i_1__5_n_0\ : STD_LOGIC;
begin
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  \aresetn_d_reg[1]_1\ <= \^aresetn_d_reg[1]_1\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  mi_bready_3 <= \^mi_bready_3\;
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d_reg[1]_2\,
      Q => \^aresetn_d_reg[1]_1\,
      R => '0'
    );
\m_payload_i[5]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      O => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen4\
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen4\,
      D => \m_payload_i_reg[5]_1\(0),
      Q => \m_payload_i_reg[5]_0\(0),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen4\,
      D => \m_payload_i_reg[5]_1\(1),
      Q => \m_payload_i_reg[5]_0\(1),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen4\,
      D => \m_payload_i_reg[5]_1\(2),
      Q => \m_payload_i_reg[5]_0\(2),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen4\,
      D => \m_payload_i_reg[5]_1\(3),
      Q => \m_payload_i_reg[5]_0\(3),
      R => '0'
    );
\m_valid_i_i_1__1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBBBBB"
    )
        port map (
      I0 => p_25_in,
      I1 => \^mi_bready_3\,
      I2 => s_axi_bready(0),
      I3 => \^m_valid_i_reg_0\,
      I4 => Q(0),
      O => \m_valid_i_i_1__1_n_0\
    );
\m_valid_i_i_1__7\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_1\,
      O => \^aresetn_d_reg[1]_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__1_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => \^aresetn_d_reg[1]_0\
    );
\s_ready_i_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"808FFFFF"
    )
        port map (
      I0 => Q(0),
      I1 => s_axi_bready(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => p_25_in,
      I4 => \^aresetn_d_reg[1]_1\,
      O => \s_ready_i_i_1__5_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__5_n_0\,
      Q => \^mi_bready_3\,
      R => s_ready_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_10\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_awaddr[21]\ : out STD_LOGIC;
    \m_payload_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    target_mi_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    match : in STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_10\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_10\;

architecture STRUCTURE of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_10\ is
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \m_payload_i[5]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_valid_i_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal mi_awmaxissuing : STD_LOGIC_VECTOR ( 1 to 1 );
begin
  m_axi_bready(0) <= \^m_axi_bready\(0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
\gen_no_arbiter.m_target_hot_i[3]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101010101010"
    )
        port map (
      I0 => w_issuing_cnt(1),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(2),
      I3 => \^m_valid_i_reg_0\,
      I4 => s_axi_bready(0),
      I5 => Q(0),
      O => mi_awmaxissuing(1)
    );
\gen_no_arbiter.m_target_hot_i[3]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2020F020"
    )
        port map (
      I0 => target_mi_enc(0),
      I1 => mi_awmaxissuing(1),
      I2 => match,
      I3 => target_mi_enc(1),
      I4 => \gen_no_arbiter.m_target_hot_i_reg[3]\(0),
      O => \s_axi_awaddr[21]\
    );
\m_payload_i[5]_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      O => \m_payload_i[5]_i_1__1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[5]_i_1__1_n_0\,
      D => D(0),
      Q => \m_payload_i_reg[5]_0\(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[5]_i_1__1_n_0\,
      D => D(1),
      Q => \m_payload_i_reg[5]_0\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[5]_i_1__1_n_0\,
      D => D(2),
      Q => \m_payload_i_reg[5]_0\(2),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[5]_i_1__1_n_0\,
      D => D(3),
      Q => \m_payload_i_reg[5]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[5]_i_1__1_n_0\,
      D => D(4),
      Q => \m_payload_i_reg[5]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[5]_i_1__1_n_0\,
      D => D(5),
      Q => \m_payload_i_reg[5]_0\(5),
      R => '0'
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBBBBB"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => s_axi_bready(0),
      I3 => \^m_valid_i_reg_0\,
      I4 => Q(0),
      O => \m_valid_i_i_1__0_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \m_valid_i_i_1__0_n_0\,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_reg_1,
      Q => \^m_axi_bready\(0),
      R => s_ready_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_12\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    mi_awmaxissuing : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_12\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_12\;

architecture STRUCTURE of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_12\ is
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen45_in\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_valid_i_i_2_n_0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
begin
  m_axi_bready(0) <= \^m_axi_bready\(0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
\gen_no_arbiter.m_target_hot_i[3]_i_10\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101010101010"
    )
        port map (
      I0 => w_issuing_cnt(1),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(2),
      I3 => \^m_valid_i_reg_0\,
      I4 => s_axi_bready(0),
      I5 => Q(0),
      O => mi_awmaxissuing(0)
    );
\m_payload_i[5]_i_1__2\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      O => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen45_in\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen45_in\,
      D => D(0),
      Q => \m_payload_i_reg[5]_0\(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen45_in\,
      D => D(1),
      Q => \m_payload_i_reg[5]_0\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen45_in\,
      D => D(2),
      Q => \m_payload_i_reg[5]_0\(2),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen45_in\,
      D => D(3),
      Q => \m_payload_i_reg[5]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen45_in\,
      D => D(4),
      Q => \m_payload_i_reg[5]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen45_in\,
      D => D(5),
      Q => \m_payload_i_reg[5]_0\(5),
      R => '0'
    );
m_valid_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBBBBB"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => Q(0),
      I3 => s_axi_bready(0),
      I4 => \^m_valid_i_reg_0\,
      O => m_valid_i_i_2_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_2_n_0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_reg_1,
      Q => \^m_axi_bready\(0),
      R => s_ready_i_reg_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_8\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[17]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[0]_1\ : out STD_LOGIC;
    \m_payload_i_reg[5]_0\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_8\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_8\;

architecture STRUCTURE of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_8\ is
  signal \^aresetn_d_reg[0]_0\ : STD_LOGIC;
  signal \aresetn_d_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen5\ : STD_LOGIC;
  signal \^m_axi_bready\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
begin
  \aresetn_d_reg[0]_0\ <= \^aresetn_d_reg[0]_0\;
  m_axi_bready(0) <= \^m_axi_bready\(0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
\aresetn_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      I1 => aresetn,
      O => \aresetn_d_reg[0]_1\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \aresetn_d_reg_n_0_[0]\,
      R => '0'
    );
\gen_no_arbiter.m_target_hot_i[3]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0010101010101010"
    )
        port map (
      I0 => w_issuing_cnt(1),
      I1 => w_issuing_cnt(0),
      I2 => w_issuing_cnt(2),
      I3 => \^m_valid_i_reg_0\,
      I4 => s_axi_bready(0),
      I5 => m_valid_i_reg_2(0),
      O => \gen_master_slots[2].w_issuing_cnt_reg[17]\(0)
    );
\m_payload_i[5]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      O => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen5\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen5\,
      D => D(0),
      Q => \m_payload_i_reg[5]_0\(0),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen5\,
      D => D(1),
      Q => \m_payload_i_reg[5]_0\(1),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen5\,
      D => D(2),
      Q => \m_payload_i_reg[5]_0\(2),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen5\,
      D => D(3),
      Q => \m_payload_i_reg[5]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen5\,
      D => D(4),
      Q => \m_payload_i_reg[5]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_slave_slots[0].gen_si_write.si_transactor_aw/gen_multi_thread.arbiter_resp_inst/chosen5\,
      D => D(5),
      Q => \m_payload_i_reg[5]_0\(5),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBBBBBB"
    )
        port map (
      I0 => m_axi_bvalid(0),
      I1 => \^m_axi_bready\(0),
      I2 => m_valid_i_reg_2(0),
      I3 => s_axi_bready(0),
      I4 => \^m_valid_i_reg_0\,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_1_n_0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
\s_ready_i_i_1__1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \aresetn_d_reg_n_0_[0]\,
      O => \^aresetn_d_reg[0]_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_reg_0,
      Q => \^m_axi_bready\(0),
      R => \^aresetn_d_reg[0]_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \gen_master_slots[3].r_issuing_cnt_reg[24]\ : out STD_LOGIC;
    \r_cmd_pop_3__1\ : out STD_LOGIC;
    \m_payload_i_reg[38]_0\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_19_in : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    match : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    mi_armaxissuing : in STD_LOGIC_VECTOR ( 0 to 0 );
    \skid_buffer_reg[38]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_axi.s_axi_rlast_i\ : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\;

architecture STRUCTURE of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\ is
  signal \m_payload_i[34]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[37]_i_1__2_n_0\ : STD_LOGIC;
  signal \m_payload_i[38]_i_2__2_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[38]_0\ : STD_LOGIC_VECTOR ( 4 downto 0 );
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^r_cmd_pop_3__1\ : STD_LOGIC;
  signal \s_ready_i_i_1__7_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1__2\ : label is "soft_lutpair74";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1__2\ : label is "soft_lutpair73";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_2__2\ : label is "soft_lutpair73";
begin
  \m_payload_i_reg[38]_0\(4 downto 0) <= \^m_payload_i_reg[38]_0\(4 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  \r_cmd_pop_3__1\ <= \^r_cmd_pop_3__1\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\gen_master_slots[3].r_issuing_cnt[24]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^m_payload_i_reg[38]_0\(0),
      I1 => s_axi_rready(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => m_valid_i_reg_2(0),
      O => \^r_cmd_pop_3__1\
    );
\gen_no_arbiter.s_ready_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0D0DFD0D"
    )
        port map (
      I0 => r_issuing_cnt(0),
      I1 => \^r_cmd_pop_3__1\,
      I2 => match,
      I3 => D(0),
      I4 => mi_armaxissuing(0),
      O => \gen_master_slots[3].r_issuing_cnt_reg[24]\
    );
\m_payload_i[34]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \gen_axi.s_axi_rlast_i\,
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__2_n_0\
    );
\m_payload_i[35]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[38]_0\(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => \m_payload_i[35]_i_1__2_n_0\
    );
\m_payload_i[36]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[38]_0\(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => \m_payload_i[36]_i_1__2_n_0\
    );
\m_payload_i[37]_i_1__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[38]_0\(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => \m_payload_i[37]_i_1__2_n_0\
    );
\m_payload_i[38]_i_2__2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \skid_buffer_reg[38]_0\(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => \m_payload_i[38]_i_2__2_n_0\
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[34]_i_1__2_n_0\,
      Q => \^m_payload_i_reg[38]_0\(0),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[35]_i_1__2_n_0\,
      Q => \^m_payload_i_reg[38]_0\(1),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[36]_i_1__2_n_0\,
      Q => \^m_payload_i_reg[38]_0\(2),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[37]_i_1__2_n_0\,
      Q => \^m_payload_i_reg[38]_0\(3),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[38]_i_2__2_n_0\,
      Q => \^m_payload_i_reg[38]_0\(4),
      R => '0'
    );
\m_valid_i_i_1__5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFDFDFD"
    )
        port map (
      I0 => \^s_ready_i_reg_0\,
      I1 => p_19_in,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_rready(0),
      I4 => m_valid_i_reg_2(0),
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
\s_ready_i_i_1__7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5D5FFD5"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => s_axi_rready(0),
      I2 => m_valid_i_reg_2(0),
      I3 => \^s_ready_i_reg_0\,
      I4 => p_19_in,
      O => \s_ready_i_i_1__7_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__7_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \gen_axi.s_axi_rlast_i\,
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[38]_0\(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[38]_0\(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[38]_0\(2),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => \skid_buffer_reg[38]_0\(3),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_11\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[10]\ : out STD_LOGIC;
    \m_payload_i_reg[34]_0\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[10]_0\ : out STD_LOGIC;
    \s_axi_araddr[21]\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[10]_1\ : out STD_LOGIC;
    \m_payload_i_reg[38]_0\ : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_53_in : in STD_LOGIC;
    target_mi_enc_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    match_1 : in STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    sel_4 : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3__0\ : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_11\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_11\;

architecture STRUCTURE of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_11\ is
  signal \m_payload_i[0]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[14]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[15]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[16]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[17]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[18]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[19]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[20]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[21]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[22]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[23]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[24]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[25]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[26]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[27]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[28]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[29]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[30]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[33]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[37]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[38]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__4_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[34]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[38]_0\ : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal mi_armaxissuing : STD_LOGIC_VECTOR ( 1 to 1 );
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[10]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \gen_master_slots[1].r_issuing_cnt[9]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1__0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1__0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1__0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_2__0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__4\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__0\ : label is "soft_lutpair48";
begin
  \m_payload_i_reg[34]_0\ <= \^m_payload_i_reg[34]_0\;
  \m_payload_i_reg[38]_0\(38 downto 0) <= \^m_payload_i_reg[38]_0\(38 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\gen_master_slots[1].r_issuing_cnt[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AA8AA"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => \^m_payload_i_reg[34]_0\,
      I4 => p_53_in,
      O => \gen_master_slots[1].r_issuing_cnt_reg[10]\
    );
\gen_master_slots[1].r_issuing_cnt[10]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^m_payload_i_reg[38]_0\(34),
      I1 => s_axi_rready(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => s_ready_i_reg_2(0),
      O => \^m_payload_i_reg[34]_0\
    );
\gen_master_slots[1].r_issuing_cnt[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC3CC2CC"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => \^m_payload_i_reg[34]_0\,
      I4 => p_53_in,
      O => \gen_master_slots[1].r_issuing_cnt_reg[10]_0\
    );
\gen_no_arbiter.m_valid_i_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888088"
    )
        port map (
      I0 => sel_4,
      I1 => \gen_no_arbiter.m_valid_i_i_3__0\,
      I2 => \^m_payload_i_reg[34]_0\,
      I3 => r_issuing_cnt(2),
      I4 => r_issuing_cnt(0),
      I5 => r_issuing_cnt(1),
      O => \gen_master_slots[1].r_issuing_cnt_reg[10]_1\
    );
\gen_no_arbiter.s_ready_i[0]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"2020F020"
    )
        port map (
      I0 => target_mi_enc_0(0),
      I1 => mi_armaxissuing(1),
      I2 => match_1,
      I3 => target_mi_enc_0(1),
      I4 => \gen_no_arbiter.m_target_hot_i_reg[3]\(0),
      O => \s_axi_araddr[21]\
    );
\gen_no_arbiter.s_ready_i[0]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => r_issuing_cnt(1),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(2),
      I3 => \^m_payload_i_reg[34]_0\,
      O => mi_armaxissuing(1)
    );
\m_payload_i[0]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__0_n_0\
    );
\m_payload_i[10]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__0_n_0\
    );
\m_payload_i[11]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__0_n_0\
    );
\m_payload_i[12]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__0_n_0\
    );
\m_payload_i[13]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_1__0_n_0\
    );
\m_payload_i[14]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => \m_payload_i[14]_i_1__0_n_0\
    );
\m_payload_i[15]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => \m_payload_i[15]_i_1__0_n_0\
    );
\m_payload_i[16]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => \m_payload_i[16]_i_1__0_n_0\
    );
\m_payload_i[17]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => \m_payload_i[17]_i_1__0_n_0\
    );
\m_payload_i[18]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => \m_payload_i[18]_i_1__0_n_0\
    );
\m_payload_i[19]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => \m_payload_i[19]_i_1__0_n_0\
    );
\m_payload_i[1]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__0_n_0\
    );
\m_payload_i[20]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => \m_payload_i[20]_i_1__0_n_0\
    );
\m_payload_i[21]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => \m_payload_i[21]_i_1__0_n_0\
    );
\m_payload_i[22]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => \m_payload_i[22]_i_1__0_n_0\
    );
\m_payload_i[23]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => \m_payload_i[23]_i_1__0_n_0\
    );
\m_payload_i[24]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => \m_payload_i[24]_i_1__0_n_0\
    );
\m_payload_i[25]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => \m_payload_i[25]_i_1__0_n_0\
    );
\m_payload_i[26]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => \m_payload_i[26]_i_1__0_n_0\
    );
\m_payload_i[27]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => \m_payload_i[27]_i_1__0_n_0\
    );
\m_payload_i[28]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => \m_payload_i[28]_i_1__0_n_0\
    );
\m_payload_i[29]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => \m_payload_i[29]_i_1__0_n_0\
    );
\m_payload_i[2]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__0_n_0\
    );
\m_payload_i[30]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => \m_payload_i[30]_i_1__0_n_0\
    );
\m_payload_i[31]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => \m_payload_i[31]_i_1__0_n_0\
    );
\m_payload_i[32]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => \m_payload_i[32]_i_1__0_n_0\
    );
\m_payload_i[33]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => \m_payload_i[33]_i_1__0_n_0\
    );
\m_payload_i[34]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__0_n_0\
    );
\m_payload_i[35]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => \m_payload_i[35]_i_1__0_n_0\
    );
\m_payload_i[36]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => \m_payload_i[36]_i_1__0_n_0\
    );
\m_payload_i[37]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => \m_payload_i[37]_i_1__0_n_0\
    );
\m_payload_i[38]_i_2__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => \m_payload_i[38]_i_2__0_n_0\
    );
\m_payload_i[3]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__0_n_0\
    );
\m_payload_i[4]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__0_n_0\
    );
\m_payload_i[5]_i_1__4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__4_n_0\
    );
\m_payload_i[6]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__0_n_0\
    );
\m_payload_i[7]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__0_n_0\
    );
\m_payload_i[8]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__0_n_0\
    );
\m_payload_i[9]_i_1__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__0_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[0]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[10]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[11]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[12]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[13]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[14]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[15]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[16]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[17]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[18]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[19]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[1]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[20]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[21]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[22]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[23]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[24]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[25]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[26]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[27]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[28]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[29]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[2]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[30]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[31]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[32]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[33]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[34]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[35]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[36]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[37]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[38]_i_2__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(38),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[3]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[4]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[5]_i_1__4_n_0\,
      Q => \^m_payload_i_reg[38]_0\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[6]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[7]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[8]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[9]_i_1__0_n_0\,
      Q => \^m_payload_i_reg[38]_0\(9),
      R => '0'
    );
\m_valid_i_i_1__3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF70FF"
    )
        port map (
      I0 => s_ready_i_reg_2(0),
      I1 => s_axi_rready(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => \^s_ready_i_reg_0\,
      I4 => m_axi_rvalid(0),
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
s_ready_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4F4F"
    )
        port map (
      I0 => m_axi_rvalid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_rready(0),
      I4 => s_ready_i_reg_2(0),
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(2),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(3),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_13\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[2]\ : out STD_LOGIC;
    \m_payload_i_reg[34]_0\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[2]_0\ : out STD_LOGIC;
    \valid_qual_i0__2\ : out STD_LOGIC;
    mi_armaxissuing : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[38]_0\ : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_71_in : in STD_LOGIC;
    \r_cmd_pop_3__1\ : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg\ : in STD_LOGIC;
    match : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg_0\ : in STD_LOGIC;
    sel_4 : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3__0_0\ : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_13\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_13\;

architecture STRUCTURE of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_13\ is
  signal \gen_no_arbiter.m_valid_i_i_5__0_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[34]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[38]_0\ : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal s_ready_i0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal skid_buffer : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \gen_master_slots[0].r_issuing_cnt[2]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__3\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1\ : label is "soft_lutpair28";
begin
  \m_payload_i_reg[34]_0\ <= \^m_payload_i_reg[34]_0\;
  \m_payload_i_reg[38]_0\(38 downto 0) <= \^m_payload_i_reg[38]_0\(38 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\gen_master_slots[0].r_issuing_cnt[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC3CC2CC"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => \^m_payload_i_reg[34]_0\,
      I4 => p_71_in,
      O => \gen_master_slots[0].r_issuing_cnt_reg[2]_0\
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AA8AA"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => \^m_payload_i_reg[34]_0\,
      I4 => p_71_in,
      O => \gen_master_slots[0].r_issuing_cnt_reg[2]\
    );
\gen_master_slots[0].r_issuing_cnt[2]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^m_payload_i_reg[38]_0\(34),
      I1 => s_ready_i_reg_2(0),
      I2 => s_axi_rready(0),
      I3 => \^m_valid_i_reg_0\,
      O => \^m_payload_i_reg[34]_0\
    );
\gen_no_arbiter.m_valid_i_i_3__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFCFCFFFAACFCF"
    )
        port map (
      I0 => \gen_no_arbiter.m_valid_i_i_5__0_n_0\,
      I1 => \r_cmd_pop_3__1\,
      I2 => r_issuing_cnt(3),
      I3 => \gen_no_arbiter.m_valid_i_reg\,
      I4 => match,
      I5 => \gen_no_arbiter.m_valid_i_reg_0\,
      O => \valid_qual_i0__2\
    );
\gen_no_arbiter.m_valid_i_i_5__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888088"
    )
        port map (
      I0 => sel_4,
      I1 => \gen_no_arbiter.m_valid_i_i_3__0_0\,
      I2 => \^m_payload_i_reg[34]_0\,
      I3 => r_issuing_cnt(2),
      I4 => r_issuing_cnt(0),
      I5 => r_issuing_cnt(1),
      O => \gen_no_arbiter.m_valid_i_i_5__0_n_0\
    );
\gen_no_arbiter.s_ready_i[0]_i_7\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => r_issuing_cnt(1),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(2),
      I3 => \^m_payload_i_reg[34]_0\,
      O => mi_armaxissuing(0)
    );
\m_payload_i[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => skid_buffer(0)
    );
\m_payload_i[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => skid_buffer(10)
    );
\m_payload_i[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => skid_buffer(11)
    );
\m_payload_i[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => skid_buffer(12)
    );
\m_payload_i[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => skid_buffer(13)
    );
\m_payload_i[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => skid_buffer(14)
    );
\m_payload_i[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => skid_buffer(15)
    );
\m_payload_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => skid_buffer(16)
    );
\m_payload_i[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => skid_buffer(17)
    );
\m_payload_i[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => skid_buffer(18)
    );
\m_payload_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => skid_buffer(19)
    );
\m_payload_i[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => skid_buffer(1)
    );
\m_payload_i[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => skid_buffer(20)
    );
\m_payload_i[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => skid_buffer(21)
    );
\m_payload_i[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => skid_buffer(22)
    );
\m_payload_i[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => skid_buffer(23)
    );
\m_payload_i[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => skid_buffer(24)
    );
\m_payload_i[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => skid_buffer(25)
    );
\m_payload_i[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => skid_buffer(26)
    );
\m_payload_i[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => skid_buffer(27)
    );
\m_payload_i[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => skid_buffer(28)
    );
\m_payload_i[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => skid_buffer(29)
    );
\m_payload_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => skid_buffer(2)
    );
\m_payload_i[30]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => skid_buffer(30)
    );
\m_payload_i[31]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => skid_buffer(31)
    );
\m_payload_i[32]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => skid_buffer(32)
    );
\m_payload_i[33]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => skid_buffer(33)
    );
\m_payload_i[34]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => skid_buffer(34)
    );
\m_payload_i[35]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => skid_buffer(35)
    );
\m_payload_i[36]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => skid_buffer(36)
    );
\m_payload_i[37]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => skid_buffer(37)
    );
\m_payload_i[38]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => skid_buffer(38)
    );
\m_payload_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => skid_buffer(3)
    );
\m_payload_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => skid_buffer(4)
    );
\m_payload_i[5]_i_1__3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => skid_buffer(5)
    );
\m_payload_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => skid_buffer(6)
    );
\m_payload_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => skid_buffer(7)
    );
\m_payload_i[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => skid_buffer(8)
    );
\m_payload_i[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => skid_buffer(9)
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(0),
      Q => \^m_payload_i_reg[38]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(10),
      Q => \^m_payload_i_reg[38]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(11),
      Q => \^m_payload_i_reg[38]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(12),
      Q => \^m_payload_i_reg[38]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(13),
      Q => \^m_payload_i_reg[38]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(14),
      Q => \^m_payload_i_reg[38]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(15),
      Q => \^m_payload_i_reg[38]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(16),
      Q => \^m_payload_i_reg[38]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(17),
      Q => \^m_payload_i_reg[38]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(18),
      Q => \^m_payload_i_reg[38]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(19),
      Q => \^m_payload_i_reg[38]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(1),
      Q => \^m_payload_i_reg[38]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(20),
      Q => \^m_payload_i_reg[38]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(21),
      Q => \^m_payload_i_reg[38]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(22),
      Q => \^m_payload_i_reg[38]_0\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(23),
      Q => \^m_payload_i_reg[38]_0\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(24),
      Q => \^m_payload_i_reg[38]_0\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(25),
      Q => \^m_payload_i_reg[38]_0\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(26),
      Q => \^m_payload_i_reg[38]_0\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(27),
      Q => \^m_payload_i_reg[38]_0\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(28),
      Q => \^m_payload_i_reg[38]_0\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(29),
      Q => \^m_payload_i_reg[38]_0\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(2),
      Q => \^m_payload_i_reg[38]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(30),
      Q => \^m_payload_i_reg[38]_0\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(31),
      Q => \^m_payload_i_reg[38]_0\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(32),
      Q => \^m_payload_i_reg[38]_0\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(33),
      Q => \^m_payload_i_reg[38]_0\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(34),
      Q => \^m_payload_i_reg[38]_0\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(35),
      Q => \^m_payload_i_reg[38]_0\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(36),
      Q => \^m_payload_i_reg[38]_0\(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(37),
      Q => \^m_payload_i_reg[38]_0\(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(38),
      Q => \^m_payload_i_reg[38]_0\(38),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(3),
      Q => \^m_payload_i_reg[38]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(4),
      Q => \^m_payload_i_reg[38]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(5),
      Q => \^m_payload_i_reg[38]_0\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(6),
      Q => \^m_payload_i_reg[38]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(7),
      Q => \^m_payload_i_reg[38]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(8),
      Q => \^m_payload_i_reg[38]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => skid_buffer(9),
      Q => \^m_payload_i_reg[38]_0\(9),
      R => '0'
    );
\m_valid_i_i_1__4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF70FF"
    )
        port map (
      I0 => s_ready_i_reg_2(0),
      I1 => s_axi_rready(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => \^s_ready_i_reg_0\,
      I4 => m_axi_rvalid(0),
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
\s_ready_i_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF4F4F4F"
    )
        port map (
      I0 => m_axi_rvalid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_rready(0),
      I4 => s_ready_i_reg_2(0),
      O => s_ready_i0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i0,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(2),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(3),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_9\ is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    s_ready_i_reg_0 : out STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[18]\ : out STD_LOGIC;
    \m_payload_i_reg[34]_0\ : out STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[18]_0\ : out STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[18]_1\ : out STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[17]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[38]_0\ : out STD_LOGIC_VECTOR ( 38 downto 0 );
    m_valid_i_reg_1 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_35_in : in STD_LOGIC;
    sel_4 : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3__0\ : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_9\ : entity is "axi_register_slice_v2_1_20_axic_register_slice";
end \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_9\;

architecture STRUCTURE of \axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_9\ is
  signal \m_payload_i[0]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[10]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[11]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[12]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[13]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[14]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[15]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[16]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[17]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[18]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[19]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[1]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[20]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[21]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[22]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[23]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[24]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[25]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[26]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[27]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[28]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[29]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[2]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[30]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[31]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[32]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[33]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[34]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[35]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[36]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[37]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[38]_i_2__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[3]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[4]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[5]_i_1__5_n_0\ : STD_LOGIC;
  signal \m_payload_i[6]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[7]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[8]_i_1__1_n_0\ : STD_LOGIC;
  signal \m_payload_i[9]_i_1__1_n_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[34]_0\ : STD_LOGIC;
  signal \^m_payload_i_reg[38]_0\ : STD_LOGIC_VECTOR ( 38 downto 0 );
  signal m_valid_i0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \s_ready_i_i_1__6_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[0]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[10]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[11]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[12]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[13]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[14]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[15]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[16]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[17]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[18]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[19]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[1]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[20]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[21]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[22]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[23]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[24]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[25]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[26]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[27]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[28]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[29]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[2]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[30]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[31]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[32]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[33]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[34]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[35]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[36]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[37]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[38]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[3]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[4]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[5]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[6]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[7]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[8]\ : STD_LOGIC;
  signal \skid_buffer_reg_n_0_[9]\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_master_slots[2].r_issuing_cnt[17]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \gen_master_slots[2].r_issuing_cnt[18]_i_1\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \m_payload_i[10]_i_1__1\ : label is "soft_lutpair68";
  attribute SOFT_HLUTNM of \m_payload_i[11]_i_1__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_payload_i[12]_i_1__1\ : label is "soft_lutpair67";
  attribute SOFT_HLUTNM of \m_payload_i[13]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[14]_i_1__1\ : label is "soft_lutpair66";
  attribute SOFT_HLUTNM of \m_payload_i[15]_i_1__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_payload_i[16]_i_1__1\ : label is "soft_lutpair65";
  attribute SOFT_HLUTNM of \m_payload_i[17]_i_1__1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_payload_i[18]_i_1__1\ : label is "soft_lutpair64";
  attribute SOFT_HLUTNM of \m_payload_i[19]_i_1__1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_payload_i[1]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_payload_i[20]_i_1__1\ : label is "soft_lutpair63";
  attribute SOFT_HLUTNM of \m_payload_i[21]_i_1__1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[22]_i_1__1\ : label is "soft_lutpair62";
  attribute SOFT_HLUTNM of \m_payload_i[23]_i_1__1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[24]_i_1__1\ : label is "soft_lutpair61";
  attribute SOFT_HLUTNM of \m_payload_i[25]_i_1__1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[26]_i_1__1\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \m_payload_i[27]_i_1__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[28]_i_1__1\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \m_payload_i[29]_i_1__1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_payload_i[2]_i_1__1\ : label is "soft_lutpair72";
  attribute SOFT_HLUTNM of \m_payload_i[30]_i_1__1\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \m_payload_i[31]_i_1__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[32]_i_1__1\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \m_payload_i[33]_i_1__1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[34]_i_1__1\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \m_payload_i[35]_i_1__1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_payload_i[36]_i_1__1\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \m_payload_i[37]_i_1__1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_payload_i[38]_i_2__1\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \m_payload_i[3]_i_1__1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[4]_i_1__1\ : label is "soft_lutpair71";
  attribute SOFT_HLUTNM of \m_payload_i[5]_i_1__5\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[6]_i_1__1\ : label is "soft_lutpair70";
  attribute SOFT_HLUTNM of \m_payload_i[7]_i_1__1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_payload_i[8]_i_1__1\ : label is "soft_lutpair69";
  attribute SOFT_HLUTNM of \m_payload_i[9]_i_1__1\ : label is "soft_lutpair68";
begin
  \m_payload_i_reg[34]_0\ <= \^m_payload_i_reg[34]_0\;
  \m_payload_i_reg[38]_0\(38 downto 0) <= \^m_payload_i_reg[38]_0\(38 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\gen_master_slots[2].r_issuing_cnt[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CC3CC2CC"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => \^m_payload_i_reg[34]_0\,
      I4 => p_35_in,
      O => \gen_master_slots[2].r_issuing_cnt_reg[18]_0\
    );
\gen_master_slots[2].r_issuing_cnt[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AA6AA8AA"
    )
        port map (
      I0 => r_issuing_cnt(2),
      I1 => r_issuing_cnt(1),
      I2 => r_issuing_cnt(0),
      I3 => \^m_payload_i_reg[34]_0\,
      I4 => p_35_in,
      O => \gen_master_slots[2].r_issuing_cnt_reg[18]\
    );
\gen_master_slots[2].r_issuing_cnt[18]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \^m_payload_i_reg[38]_0\(34),
      I1 => Q(0),
      I2 => s_axi_rready(0),
      I3 => \^m_valid_i_reg_0\,
      O => \^m_payload_i_reg[34]_0\
    );
\gen_no_arbiter.m_valid_i_i_6__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8888888888888088"
    )
        port map (
      I0 => sel_4,
      I1 => \gen_no_arbiter.m_valid_i_i_3__0\,
      I2 => \^m_payload_i_reg[34]_0\,
      I3 => r_issuing_cnt(2),
      I4 => r_issuing_cnt(0),
      I5 => r_issuing_cnt(1),
      O => \gen_master_slots[2].r_issuing_cnt_reg[18]_1\
    );
\gen_no_arbiter.s_ready_i[0]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => r_issuing_cnt(1),
      I1 => r_issuing_cnt(0),
      I2 => r_issuing_cnt(2),
      I3 => \^m_payload_i_reg[34]_0\,
      O => \gen_master_slots[2].r_issuing_cnt_reg[17]\(0)
    );
\m_payload_i[0]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[0]\,
      O => \m_payload_i[0]_i_1__1_n_0\
    );
\m_payload_i[10]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[10]\,
      O => \m_payload_i[10]_i_1__1_n_0\
    );
\m_payload_i[11]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[11]\,
      O => \m_payload_i[11]_i_1__1_n_0\
    );
\m_payload_i[12]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[12]\,
      O => \m_payload_i[12]_i_1__1_n_0\
    );
\m_payload_i[13]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[13]\,
      O => \m_payload_i[13]_i_1__1_n_0\
    );
\m_payload_i[14]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[14]\,
      O => \m_payload_i[14]_i_1__1_n_0\
    );
\m_payload_i[15]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[15]\,
      O => \m_payload_i[15]_i_1__1_n_0\
    );
\m_payload_i[16]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[16]\,
      O => \m_payload_i[16]_i_1__1_n_0\
    );
\m_payload_i[17]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[17]\,
      O => \m_payload_i[17]_i_1__1_n_0\
    );
\m_payload_i[18]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[18]\,
      O => \m_payload_i[18]_i_1__1_n_0\
    );
\m_payload_i[19]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[19]\,
      O => \m_payload_i[19]_i_1__1_n_0\
    );
\m_payload_i[1]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[1]\,
      O => \m_payload_i[1]_i_1__1_n_0\
    );
\m_payload_i[20]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[20]\,
      O => \m_payload_i[20]_i_1__1_n_0\
    );
\m_payload_i[21]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[21]\,
      O => \m_payload_i[21]_i_1__1_n_0\
    );
\m_payload_i[22]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[22]\,
      O => \m_payload_i[22]_i_1__1_n_0\
    );
\m_payload_i[23]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[23]\,
      O => \m_payload_i[23]_i_1__1_n_0\
    );
\m_payload_i[24]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[24]\,
      O => \m_payload_i[24]_i_1__1_n_0\
    );
\m_payload_i[25]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[25]\,
      O => \m_payload_i[25]_i_1__1_n_0\
    );
\m_payload_i[26]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[26]\,
      O => \m_payload_i[26]_i_1__1_n_0\
    );
\m_payload_i[27]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[27]\,
      O => \m_payload_i[27]_i_1__1_n_0\
    );
\m_payload_i[28]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[28]\,
      O => \m_payload_i[28]_i_1__1_n_0\
    );
\m_payload_i[29]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[29]\,
      O => \m_payload_i[29]_i_1__1_n_0\
    );
\m_payload_i[2]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[2]\,
      O => \m_payload_i[2]_i_1__1_n_0\
    );
\m_payload_i[30]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[30]\,
      O => \m_payload_i[30]_i_1__1_n_0\
    );
\m_payload_i[31]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[31]\,
      O => \m_payload_i[31]_i_1__1_n_0\
    );
\m_payload_i[32]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[32]\,
      O => \m_payload_i[32]_i_1__1_n_0\
    );
\m_payload_i[33]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rresp(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[33]\,
      O => \m_payload_i[33]_i_1__1_n_0\
    );
\m_payload_i[34]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rlast(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[34]\,
      O => \m_payload_i[34]_i_1__1_n_0\
    );
\m_payload_i[35]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(0),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[35]\,
      O => \m_payload_i[35]_i_1__1_n_0\
    );
\m_payload_i[36]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(1),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[36]\,
      O => \m_payload_i[36]_i_1__1_n_0\
    );
\m_payload_i[37]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(2),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[37]\,
      O => \m_payload_i[37]_i_1__1_n_0\
    );
\m_payload_i[38]_i_2__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rid(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[38]\,
      O => \m_payload_i[38]_i_2__1_n_0\
    );
\m_payload_i[3]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[3]\,
      O => \m_payload_i[3]_i_1__1_n_0\
    );
\m_payload_i[4]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[4]\,
      O => \m_payload_i[4]_i_1__1_n_0\
    );
\m_payload_i[5]_i_1__5\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[5]\,
      O => \m_payload_i[5]_i_1__5_n_0\
    );
\m_payload_i[6]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[6]\,
      O => \m_payload_i[6]_i_1__1_n_0\
    );
\m_payload_i[7]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[7]\,
      O => \m_payload_i[7]_i_1__1_n_0\
    );
\m_payload_i[8]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[8]\,
      O => \m_payload_i[8]_i_1__1_n_0\
    );
\m_payload_i[9]_i_1__1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \^s_ready_i_reg_0\,
      I2 => \skid_buffer_reg_n_0_[9]\,
      O => \m_payload_i[9]_i_1__1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[0]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[10]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[11]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[12]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[13]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[14]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[15]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[16]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[17]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[18]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[19]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[1]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[20]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[21]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[22]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[23]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[24]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[25]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[26]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[27]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[28]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[29]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[2]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[30]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[31]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[32]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[33]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[34]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[35]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[36]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[37]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[38]_i_2__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(38),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[3]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(3),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[4]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(4),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[5]_i_1__5_n_0\,
      Q => \^m_payload_i_reg[38]_0\(5),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[6]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(6),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[7]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[8]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => E(0),
      D => \m_payload_i[9]_i_1__1_n_0\,
      Q => \^m_payload_i_reg[38]_0\(9),
      R => '0'
    );
\m_valid_i_i_1__2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DDFDFDFD"
    )
        port map (
      I0 => \^s_ready_i_reg_0\,
      I1 => m_axi_rvalid(0),
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_rready(0),
      I4 => Q(0),
      O => m_valid_i0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i0,
      Q => \^m_valid_i_reg_0\,
      R => m_valid_i_reg_1
    );
\s_ready_i_i_1__6\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D5D5FFD5"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => s_axi_rready(0),
      I2 => Q(0),
      I3 => \^s_ready_i_reg_0\,
      I4 => m_axi_rvalid(0),
      O => \s_ready_i_i_1__6_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__6_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => s_ready_i_reg_1
    );
\skid_buffer_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(0),
      Q => \skid_buffer_reg_n_0_[0]\,
      R => '0'
    );
\skid_buffer_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(10),
      Q => \skid_buffer_reg_n_0_[10]\,
      R => '0'
    );
\skid_buffer_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(11),
      Q => \skid_buffer_reg_n_0_[11]\,
      R => '0'
    );
\skid_buffer_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(12),
      Q => \skid_buffer_reg_n_0_[12]\,
      R => '0'
    );
\skid_buffer_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(13),
      Q => \skid_buffer_reg_n_0_[13]\,
      R => '0'
    );
\skid_buffer_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(14),
      Q => \skid_buffer_reg_n_0_[14]\,
      R => '0'
    );
\skid_buffer_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(15),
      Q => \skid_buffer_reg_n_0_[15]\,
      R => '0'
    );
\skid_buffer_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(16),
      Q => \skid_buffer_reg_n_0_[16]\,
      R => '0'
    );
\skid_buffer_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(17),
      Q => \skid_buffer_reg_n_0_[17]\,
      R => '0'
    );
\skid_buffer_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(18),
      Q => \skid_buffer_reg_n_0_[18]\,
      R => '0'
    );
\skid_buffer_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(19),
      Q => \skid_buffer_reg_n_0_[19]\,
      R => '0'
    );
\skid_buffer_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(1),
      Q => \skid_buffer_reg_n_0_[1]\,
      R => '0'
    );
\skid_buffer_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(20),
      Q => \skid_buffer_reg_n_0_[20]\,
      R => '0'
    );
\skid_buffer_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(21),
      Q => \skid_buffer_reg_n_0_[21]\,
      R => '0'
    );
\skid_buffer_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(22),
      Q => \skid_buffer_reg_n_0_[22]\,
      R => '0'
    );
\skid_buffer_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(23),
      Q => \skid_buffer_reg_n_0_[23]\,
      R => '0'
    );
\skid_buffer_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(24),
      Q => \skid_buffer_reg_n_0_[24]\,
      R => '0'
    );
\skid_buffer_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(25),
      Q => \skid_buffer_reg_n_0_[25]\,
      R => '0'
    );
\skid_buffer_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(26),
      Q => \skid_buffer_reg_n_0_[26]\,
      R => '0'
    );
\skid_buffer_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(27),
      Q => \skid_buffer_reg_n_0_[27]\,
      R => '0'
    );
\skid_buffer_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(28),
      Q => \skid_buffer_reg_n_0_[28]\,
      R => '0'
    );
\skid_buffer_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(29),
      Q => \skid_buffer_reg_n_0_[29]\,
      R => '0'
    );
\skid_buffer_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(2),
      Q => \skid_buffer_reg_n_0_[2]\,
      R => '0'
    );
\skid_buffer_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(30),
      Q => \skid_buffer_reg_n_0_[30]\,
      R => '0'
    );
\skid_buffer_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(31),
      Q => \skid_buffer_reg_n_0_[31]\,
      R => '0'
    );
\skid_buffer_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(0),
      Q => \skid_buffer_reg_n_0_[32]\,
      R => '0'
    );
\skid_buffer_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rresp(1),
      Q => \skid_buffer_reg_n_0_[33]\,
      R => '0'
    );
\skid_buffer_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rlast(0),
      Q => \skid_buffer_reg_n_0_[34]\,
      R => '0'
    );
\skid_buffer_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(0),
      Q => \skid_buffer_reg_n_0_[35]\,
      R => '0'
    );
\skid_buffer_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(1),
      Q => \skid_buffer_reg_n_0_[36]\,
      R => '0'
    );
\skid_buffer_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(2),
      Q => \skid_buffer_reg_n_0_[37]\,
      R => '0'
    );
\skid_buffer_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rid(3),
      Q => \skid_buffer_reg_n_0_[38]\,
      R => '0'
    );
\skid_buffer_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(3),
      Q => \skid_buffer_reg_n_0_[3]\,
      R => '0'
    );
\skid_buffer_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(4),
      Q => \skid_buffer_reg_n_0_[4]\,
      R => '0'
    );
\skid_buffer_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(5),
      Q => \skid_buffer_reg_n_0_[5]\,
      R => '0'
    );
\skid_buffer_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(6),
      Q => \skid_buffer_reg_n_0_[6]\,
      R => '0'
    );
\skid_buffer_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(7),
      Q => \skid_buffer_reg_n_0_[7]\,
      R => '0'
    );
\skid_buffer_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(8),
      Q => \skid_buffer_reg_n_0_[8]\,
      R => '0'
    );
\skid_buffer_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \^s_ready_i_reg_0\,
      D => m_axi_rdata(9),
      Q => \skid_buffer_reg_n_0_[9]\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_si_transactor is
  port (
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[2]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \chosen_reg[1]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[1]_0\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \chosen_reg[0]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[3]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_valid_i_reg\ : out STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i_reg[3]\ : in STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i_reg[3]_0\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg_0\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_60_out : in STD_LOGIC;
    p_81_out : in STD_LOGIC;
    p_37_out : in STD_LOGIC;
    p_102_out : in STD_LOGIC;
    st_mr_rmesg : in STD_LOGIC_VECTOR ( 101 downto 0 );
    st_mr_rid : in STD_LOGIC_VECTOR ( 15 downto 0 );
    \s_axi_rlast[0]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rlast[0]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rlast[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_rlast[0]_2\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_multi_thread.active_id_reg[4]_0\ : in STD_LOGIC;
    \gen_multi_thread.active_id_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_no_arbiter.m_valid_i_reg_1\ : in STD_LOGIC;
    \valid_qual_i0__2\ : in STD_LOGIC;
    aa_mi_arvalid : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_si_transactor : entity is "axi_crossbar_v2_1_21_si_transactor";
end axi_bus_axi_crossbar_v2_1_21_si_transactor;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_si_transactor is
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_multi_thread.active_id_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_multi_thread.active_id_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_multi_thread.active_target\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_multi_thread.active_target[9]_i_8__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target[9]_i_9__0_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.aid_match_0__0\ : STD_LOGIC;
  signal \gen_multi_thread.aid_match_1__0\ : STD_LOGIC;
  signal \gen_multi_thread.any_pop__1\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_51\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_52\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_53\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_54\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_1\ : STD_LOGIC;
  signal \gen_multi_thread.s_avalid_en\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \gen_multi_thread.thread_valid_0__0\ : STD_LOGIC;
  signal \gen_no_arbiter.s_ready_i[0]_i_6_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1\ : label is "soft_lutpair79";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1\ : label is "soft_lutpair79";
begin
\gen_multi_thread.accept_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A54A"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg[4]_0\,
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.any_pop__1\,
      I3 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9CC4"
    )
        port map (
      I0 => \gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.accept_cnt\(0),
      I3 => \gen_multi_thread.active_id_reg[4]_0\,
      O => \gen_multi_thread.accept_cnt[1]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_54\,
      Q => \gen_multi_thread.active_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_53\,
      Q => \gen_multi_thread.active_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_52\,
      Q => \gen_multi_thread.active_cnt\(8),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_51\,
      Q => \gen_multi_thread.active_cnt\(9),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => \gen_multi_thread.active_id_reg[3]_0\(0),
      Q => \gen_multi_thread.active_id_reg\(0),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => \gen_multi_thread.active_id_reg[3]_0\(1),
      Q => \gen_multi_thread.active_id_reg\(1),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => \gen_multi_thread.active_id_reg[3]_0\(2),
      Q => \gen_multi_thread.active_id_reg\(2),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => \gen_multi_thread.active_id_reg[3]_0\(3),
      Q => \gen_multi_thread.active_id_reg\(3),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => \gen_multi_thread.active_id_reg[3]_0\(0),
      Q => \gen_multi_thread.active_id_reg_n_0_[4]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => \gen_multi_thread.active_id_reg[3]_0\(1),
      Q => \gen_multi_thread.active_id_reg_n_0_[5]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => \gen_multi_thread.active_id_reg[3]_0\(2),
      Q => \gen_multi_thread.active_id_reg_n_0_[6]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => \gen_multi_thread.active_id_reg[3]_0\(3),
      Q => \gen_multi_thread.active_id_reg_n_0_[7]\,
      R => SR(0)
    );
\gen_multi_thread.active_target[1]_i_1__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF000100"
    )
        port map (
      I0 => \gen_multi_thread.aid_match_1__0\,
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_cnt\(1),
      I3 => \gen_multi_thread.active_id_reg[4]_0\,
      I4 => \gen_multi_thread.aid_match_0__0\,
      O => \gen_multi_thread.cmd_push_0\
    );
\gen_multi_thread.active_target[9]_i_1__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000000040000"
    )
        port map (
      I0 => \gen_multi_thread.aid_match_0__0\,
      I1 => \gen_multi_thread.thread_valid_0__0\,
      I2 => \gen_multi_thread.active_cnt\(8),
      I3 => \gen_multi_thread.active_cnt\(9),
      I4 => \gen_multi_thread.active_id_reg[4]_0\,
      I5 => \gen_multi_thread.aid_match_1__0\,
      O => \gen_multi_thread.cmd_push_1\
    );
\gen_multi_thread.active_target[9]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg\(0),
      I1 => \gen_multi_thread.active_id_reg[3]_0\(0),
      I2 => \gen_multi_thread.active_id_reg\(1),
      I3 => \gen_multi_thread.active_id_reg[3]_0\(1),
      I4 => \gen_multi_thread.active_target[9]_i_8__0_n_0\,
      O => \gen_multi_thread.aid_match_0__0\
    );
\gen_multi_thread.active_target[9]_i_4__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(1),
      I1 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.thread_valid_0__0\
    );
\gen_multi_thread.active_target[9]_i_5__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg_n_0_[4]\,
      I1 => \gen_multi_thread.active_id_reg[3]_0\(0),
      I2 => \gen_multi_thread.active_id_reg_n_0_[5]\,
      I3 => \gen_multi_thread.active_id_reg[3]_0\(1),
      I4 => \gen_multi_thread.active_target[9]_i_9__0_n_0\,
      O => \gen_multi_thread.aid_match_1__0\
    );
\gen_multi_thread.active_target[9]_i_8__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E00E00000000E00E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(1),
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_id_reg\(3),
      I3 => \gen_multi_thread.active_id_reg[3]_0\(3),
      I4 => \gen_multi_thread.active_id_reg\(2),
      I5 => \gen_multi_thread.active_id_reg[3]_0\(2),
      O => \gen_multi_thread.active_target[9]_i_8__0_n_0\
    );
\gen_multi_thread.active_target[9]_i_9__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E00E00000000E00E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(9),
      I1 => \gen_multi_thread.active_cnt\(8),
      I2 => \gen_multi_thread.active_id_reg_n_0_[7]\,
      I3 => \gen_multi_thread.active_id_reg[3]_0\(3),
      I4 => \gen_multi_thread.active_id_reg_n_0_[6]\,
      I5 => \gen_multi_thread.active_id_reg[3]_0\(2),
      O => \gen_multi_thread.active_target[9]_i_9__0_n_0\
    );
\gen_multi_thread.active_target_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => D(0),
      Q => \gen_multi_thread.active_target\(0),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => D(1),
      Q => \gen_multi_thread.active_target\(1),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => D(0),
      Q => \gen_multi_thread.active_target\(8),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => D(1),
      Q => \gen_multi_thread.active_target\(9),
      R => SR(0)
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.axi_bus_axi_crossbar_v2_1_21_arbiter_resp_7
     port map (
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \chosen_reg[0]_0\(0) => \chosen_reg[0]\(0),
      \chosen_reg[1]_0\(0) => \chosen_reg[1]\(0),
      \chosen_reg[1]_1\ => \chosen_reg[1]_0\,
      \chosen_reg[2]_0\(0) => \chosen_reg[2]\(0),
      \chosen_reg[3]_0\(0) => \chosen_reg[3]\(0),
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt\(1 downto 0),
      \gen_multi_thread.active_cnt\(3 downto 2) => \gen_multi_thread.active_cnt\(9 downto 8),
      \gen_multi_thread.active_cnt\(1 downto 0) => \gen_multi_thread.active_cnt\(1 downto 0),
      \gen_multi_thread.active_cnt_reg[0]\ => \gen_multi_thread.arbiter_resp_inst_n_53\,
      \gen_multi_thread.active_cnt_reg[0]_0\ => \gen_multi_thread.arbiter_resp_inst_n_54\,
      \gen_multi_thread.active_cnt_reg[0]_1\(3 downto 0) => \gen_multi_thread.active_id_reg\(3 downto 0),
      \gen_multi_thread.active_cnt_reg[1]\(0) => \gen_multi_thread.cmd_push_0\,
      \gen_multi_thread.active_cnt_reg[8]\ => \gen_multi_thread.arbiter_resp_inst_n_51\,
      \gen_multi_thread.active_cnt_reg[8]_0\ => \gen_multi_thread.arbiter_resp_inst_n_52\,
      \gen_multi_thread.active_cnt_reg[8]_1\(3) => \gen_multi_thread.active_id_reg_n_0_[7]\,
      \gen_multi_thread.active_cnt_reg[8]_1\(2) => \gen_multi_thread.active_id_reg_n_0_[6]\,
      \gen_multi_thread.active_cnt_reg[8]_1\(1) => \gen_multi_thread.active_id_reg_n_0_[5]\,
      \gen_multi_thread.active_cnt_reg[8]_1\(0) => \gen_multi_thread.active_id_reg_n_0_[4]\,
      \gen_multi_thread.active_cnt_reg[9]\(0) => \gen_multi_thread.cmd_push_1\,
      \gen_multi_thread.any_pop__1\ => \gen_multi_thread.any_pop__1\,
      \gen_multi_thread.s_avalid_en\(0) => \gen_multi_thread.s_avalid_en\(1),
      \gen_no_arbiter.m_target_hot_i_reg[3]\ => \gen_no_arbiter.m_target_hot_i_reg[3]\,
      \gen_no_arbiter.m_target_hot_i_reg[3]_0\ => \gen_no_arbiter.m_target_hot_i_reg[3]_0\,
      \gen_no_arbiter.m_valid_i_reg\ => \gen_no_arbiter.m_valid_i_reg\,
      \gen_no_arbiter.m_valid_i_reg_0\ => \gen_no_arbiter.s_ready_i[0]_i_6_n_0\,
      \gen_no_arbiter.m_valid_i_reg_1\ => \gen_no_arbiter.m_valid_i_reg_1\,
      p_102_out => p_102_out,
      p_37_out => p_37_out,
      p_60_out => p_60_out,
      p_81_out => p_81_out,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast(0) => s_axi_rlast(0),
      \s_axi_rlast[0]\(0) => \s_axi_rlast[0]\(0),
      \s_axi_rlast[0]_0\(0) => \s_axi_rlast[0]_0\(0),
      \s_axi_rlast[0]_1\(0) => \s_axi_rlast[0]_1\(0),
      \s_axi_rlast[0]_2\(0) => \s_axi_rlast[0]_2\(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      st_mr_rid(15 downto 0) => st_mr_rid(15 downto 0),
      st_mr_rmesg(101 downto 0) => st_mr_rmesg(101 downto 0),
      \valid_qual_i0__2\ => \valid_qual_i0__2\
    );
\gen_no_arbiter.s_ready_i[0]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D75555D7"
    )
        port map (
      I0 => \gen_multi_thread.aid_match_1__0\,
      I1 => \gen_multi_thread.active_target\(8),
      I2 => D(0),
      I3 => D(1),
      I4 => \gen_multi_thread.active_target\(9),
      O => \gen_multi_thread.s_avalid_en\(1)
    );
\gen_no_arbiter.s_ready_i[0]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"82000082AAAAAAAA"
    )
        port map (
      I0 => \gen_no_arbiter.m_valid_i_reg_0\,
      I1 => \gen_multi_thread.active_target\(1),
      I2 => D(1),
      I3 => D(0),
      I4 => \gen_multi_thread.active_target\(0),
      I5 => \gen_multi_thread.aid_match_0__0\,
      O => \gen_no_arbiter.s_ready_i[0]_i_6_n_0\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \axi_bus_axi_crossbar_v2_1_21_si_transactor__parameterized0\ is
  port (
    \chosen_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \chosen_reg[1]\ : out STD_LOGIC;
    \chosen_reg[0]\ : out STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]\ : out STD_LOGIC;
    \chosen_reg[2]_0\ : out STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[16]_0\ : out STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[10]\ : out STD_LOGIC;
    \chosen_reg[1]_0\ : out STD_LOGIC;
    \gen_master_slots[1].w_issuing_cnt_reg[10]_0\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]\ : out STD_LOGIC;
    \chosen_reg[0]_0\ : out STD_LOGIC;
    \gen_master_slots[0].w_issuing_cnt_reg[0]_0\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg\ : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_66_out : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_ready_i_reg : in STD_LOGIC;
    p_87_out : in STD_LOGIC;
    p_108_out : in STD_LOGIC;
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 9 downto 0 );
    p_44_in : in STD_LOGIC;
    p_62_in : in STD_LOGIC;
    p_79_in : in STD_LOGIC;
    \gen_no_arbiter.m_target_hot_i_reg[3]\ : in STD_LOGIC;
    aresetn_d : in STD_LOGIC;
    st_aa_awtarget_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    match : in STD_LOGIC;
    sel_4 : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3\ : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    mi_awmaxissuing : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_no_arbiter.m_valid_i_i_3_0\ : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3_1\ : in STD_LOGIC;
    \s_ready_i0__1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    aa_sa_awvalid : in STD_LOGIC;
    p_43_out : in STD_LOGIC;
    \s_axi_bid[3]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_bid[3]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_bid[3]_1\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \s_axi_bid[3]_2\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_multi_thread.active_id_reg[4]_0\ : in STD_LOGIC;
    \gen_multi_thread.active_id_reg[3]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    aa_sa_awready : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \axi_bus_axi_crossbar_v2_1_21_si_transactor__parameterized0\ : entity is "axi_crossbar_v2_1_21_si_transactor";
end \axi_bus_axi_crossbar_v2_1_21_si_transactor__parameterized0\;

architecture STRUCTURE of \axi_bus_axi_crossbar_v2_1_21_si_transactor__parameterized0\ is
  signal \gen_multi_thread.accept_cnt\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.accept_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.accept_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_cnt\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_multi_thread.active_id_reg_n_0_[0]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[1]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[2]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[3]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[4]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[5]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[6]\ : STD_LOGIC;
  signal \gen_multi_thread.active_id_reg_n_0_[7]\ : STD_LOGIC;
  signal \gen_multi_thread.active_target\ : STD_LOGIC_VECTOR ( 9 downto 0 );
  signal \gen_multi_thread.active_target[9]_i_8_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.active_target[9]_i_9_n_0\ : STD_LOGIC;
  signal \gen_multi_thread.aid_match_0__0\ : STD_LOGIC;
  signal \gen_multi_thread.aid_match_1__0\ : STD_LOGIC;
  signal \gen_multi_thread.any_pop__1\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_26\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_27\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_28\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst_n_29\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_0\ : STD_LOGIC;
  signal \gen_multi_thread.cmd_push_1\ : STD_LOGIC;
  signal \gen_multi_thread.s_avalid_en\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_multi_thread.thread_valid_0__0\ : STD_LOGIC;
  signal \gen_multi_thread.thread_valid_1__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[0]_i_1\ : label is "soft_lutpair89";
  attribute SOFT_HLUTNM of \gen_multi_thread.accept_cnt[1]_i_1\ : label is "soft_lutpair89";
begin
\gen_multi_thread.accept_cnt[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"A54A"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg[4]_0\,
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.any_pop__1\,
      I3 => \gen_multi_thread.accept_cnt\(0),
      O => \gen_multi_thread.accept_cnt[0]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9CC4"
    )
        port map (
      I0 => \gen_multi_thread.any_pop__1\,
      I1 => \gen_multi_thread.accept_cnt\(1),
      I2 => \gen_multi_thread.accept_cnt\(0),
      I3 => \gen_multi_thread.active_id_reg[4]_0\,
      O => \gen_multi_thread.accept_cnt[1]_i_1_n_0\
    );
\gen_multi_thread.accept_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[0]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.accept_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.accept_cnt[1]_i_1_n_0\,
      Q => \gen_multi_thread.accept_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(9),
      I1 => \gen_multi_thread.active_cnt\(8),
      O => \gen_multi_thread.thread_valid_1__0\
    );
\gen_multi_thread.active_cnt_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_29\,
      Q => \gen_multi_thread.active_cnt\(0),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_28\,
      Q => \gen_multi_thread.active_cnt\(1),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[8]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_27\,
      Q => \gen_multi_thread.active_cnt\(8),
      R => SR(0)
    );
\gen_multi_thread.active_cnt_reg[9]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_multi_thread.arbiter_resp_inst_n_26\,
      Q => \gen_multi_thread.active_cnt\(9),
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => \gen_multi_thread.active_id_reg[3]_0\(0),
      Q => \gen_multi_thread.active_id_reg_n_0_[0]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => \gen_multi_thread.active_id_reg[3]_0\(1),
      Q => \gen_multi_thread.active_id_reg_n_0_[1]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => \gen_multi_thread.active_id_reg[3]_0\(2),
      Q => \gen_multi_thread.active_id_reg_n_0_[2]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => \gen_multi_thread.active_id_reg[3]_0\(3),
      Q => \gen_multi_thread.active_id_reg_n_0_[3]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => \gen_multi_thread.active_id_reg[3]_0\(0),
      Q => \gen_multi_thread.active_id_reg_n_0_[4]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => \gen_multi_thread.active_id_reg[3]_0\(1),
      Q => \gen_multi_thread.active_id_reg_n_0_[5]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => \gen_multi_thread.active_id_reg[3]_0\(2),
      Q => \gen_multi_thread.active_id_reg_n_0_[6]\,
      R => SR(0)
    );
\gen_multi_thread.active_id_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => \gen_multi_thread.active_id_reg[3]_0\(3),
      Q => \gen_multi_thread.active_id_reg_n_0_[7]\,
      R => SR(0)
    );
\gen_multi_thread.active_target[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF000100"
    )
        port map (
      I0 => \gen_multi_thread.aid_match_1__0\,
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_cnt\(1),
      I3 => \gen_multi_thread.active_id_reg[4]_0\,
      I4 => \gen_multi_thread.aid_match_0__0\,
      O => \gen_multi_thread.cmd_push_0\
    );
\gen_multi_thread.active_target[9]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000001000000"
    )
        port map (
      I0 => \gen_multi_thread.aid_match_0__0\,
      I1 => \gen_multi_thread.active_cnt\(9),
      I2 => \gen_multi_thread.active_cnt\(8),
      I3 => \gen_multi_thread.thread_valid_0__0\,
      I4 => \gen_multi_thread.active_id_reg[4]_0\,
      I5 => \gen_multi_thread.aid_match_1__0\,
      O => \gen_multi_thread.cmd_push_1\
    );
\gen_multi_thread.active_target[9]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg_n_0_[0]\,
      I1 => \gen_multi_thread.active_id_reg[3]_0\(0),
      I2 => \gen_multi_thread.active_id_reg_n_0_[1]\,
      I3 => \gen_multi_thread.active_id_reg[3]_0\(1),
      I4 => \gen_multi_thread.active_target[9]_i_8_n_0\,
      O => \gen_multi_thread.aid_match_0__0\
    );
\gen_multi_thread.active_target[9]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(1),
      I1 => \gen_multi_thread.active_cnt\(0),
      O => \gen_multi_thread.thread_valid_0__0\
    );
\gen_multi_thread.active_target[9]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"90090000"
    )
        port map (
      I0 => \gen_multi_thread.active_id_reg_n_0_[4]\,
      I1 => \gen_multi_thread.active_id_reg[3]_0\(0),
      I2 => \gen_multi_thread.active_id_reg_n_0_[5]\,
      I3 => \gen_multi_thread.active_id_reg[3]_0\(1),
      I4 => \gen_multi_thread.active_target[9]_i_9_n_0\,
      O => \gen_multi_thread.aid_match_1__0\
    );
\gen_multi_thread.active_target[9]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E00E00000000E00E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(1),
      I1 => \gen_multi_thread.active_cnt\(0),
      I2 => \gen_multi_thread.active_id_reg_n_0_[3]\,
      I3 => \gen_multi_thread.active_id_reg[3]_0\(3),
      I4 => \gen_multi_thread.active_id_reg_n_0_[2]\,
      I5 => \gen_multi_thread.active_id_reg[3]_0\(2),
      O => \gen_multi_thread.active_target[9]_i_8_n_0\
    );
\gen_multi_thread.active_target[9]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"E00E00000000E00E"
    )
        port map (
      I0 => \gen_multi_thread.active_cnt\(9),
      I1 => \gen_multi_thread.active_cnt\(8),
      I2 => \gen_multi_thread.active_id_reg_n_0_[7]\,
      I3 => \gen_multi_thread.active_id_reg[3]_0\(3),
      I4 => \gen_multi_thread.active_id_reg_n_0_[6]\,
      I5 => \gen_multi_thread.active_id_reg[3]_0\(2),
      O => \gen_multi_thread.active_target[9]_i_9_n_0\
    );
\gen_multi_thread.active_target_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => st_aa_awtarget_enc(0),
      Q => \gen_multi_thread.active_target\(0),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_0\,
      D => st_aa_awtarget_enc(1),
      Q => \gen_multi_thread.active_target\(1),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => st_aa_awtarget_enc(0),
      Q => \gen_multi_thread.active_target\(8),
      R => SR(0)
    );
\gen_multi_thread.active_target_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_multi_thread.cmd_push_1\,
      D => st_aa_awtarget_enc(1),
      Q => \gen_multi_thread.active_target\(9),
      R => SR(0)
    );
\gen_multi_thread.arbiter_resp_inst\: entity work.axi_bus_axi_crossbar_v2_1_21_arbiter_resp
     port map (
      D(0) => D(0),
      E(0) => E(0),
      Q(3 downto 0) => Q(3 downto 0),
      SR(0) => SR(0),
      aa_sa_awready => aa_sa_awready,
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \chosen_reg[0]_0\ => \chosen_reg[0]\,
      \chosen_reg[0]_1\ => \chosen_reg[0]_0\,
      \chosen_reg[1]_0\ => \chosen_reg[1]\,
      \chosen_reg[1]_1\ => \chosen_reg[1]_0\,
      \chosen_reg[2]_0\ => \chosen_reg[2]\,
      \chosen_reg[2]_1\ => \chosen_reg[2]_0\,
      \gen_master_slots[0].w_issuing_cnt_reg[0]\ => \gen_master_slots[0].w_issuing_cnt_reg[0]\,
      \gen_master_slots[0].w_issuing_cnt_reg[0]_0\ => \gen_master_slots[0].w_issuing_cnt_reg[0]_0\,
      \gen_master_slots[1].w_issuing_cnt_reg[10]\ => \gen_master_slots[1].w_issuing_cnt_reg[10]\,
      \gen_master_slots[1].w_issuing_cnt_reg[10]_0\ => \gen_master_slots[1].w_issuing_cnt_reg[10]_0\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]\ => \gen_master_slots[2].w_issuing_cnt_reg[16]\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]_0\ => \gen_master_slots[2].w_issuing_cnt_reg[16]_0\,
      \gen_multi_thread.accept_cnt\(1 downto 0) => \gen_multi_thread.accept_cnt\(1 downto 0),
      \gen_multi_thread.active_cnt\(3 downto 2) => \gen_multi_thread.active_cnt\(9 downto 8),
      \gen_multi_thread.active_cnt\(1 downto 0) => \gen_multi_thread.active_cnt\(1 downto 0),
      \gen_multi_thread.active_cnt_reg[0]\ => \gen_multi_thread.arbiter_resp_inst_n_28\,
      \gen_multi_thread.active_cnt_reg[1]\(3) => \gen_multi_thread.active_id_reg_n_0_[3]\,
      \gen_multi_thread.active_cnt_reg[1]\(2) => \gen_multi_thread.active_id_reg_n_0_[2]\,
      \gen_multi_thread.active_cnt_reg[1]\(1) => \gen_multi_thread.active_id_reg_n_0_[1]\,
      \gen_multi_thread.active_cnt_reg[1]\(0) => \gen_multi_thread.active_id_reg_n_0_[0]\,
      \gen_multi_thread.active_cnt_reg[1]_0\(0) => \gen_multi_thread.cmd_push_0\,
      \gen_multi_thread.active_cnt_reg[8]\ => \gen_multi_thread.arbiter_resp_inst_n_26\,
      \gen_multi_thread.active_cnt_reg[9]\(3) => \gen_multi_thread.active_id_reg_n_0_[7]\,
      \gen_multi_thread.active_cnt_reg[9]\(2) => \gen_multi_thread.active_id_reg_n_0_[6]\,
      \gen_multi_thread.active_cnt_reg[9]\(1) => \gen_multi_thread.active_id_reg_n_0_[5]\,
      \gen_multi_thread.active_cnt_reg[9]\(0) => \gen_multi_thread.active_id_reg_n_0_[4]\,
      \gen_multi_thread.active_cnt_reg[9]_0\(0) => \gen_multi_thread.cmd_push_1\,
      \gen_multi_thread.active_id_reg[0]\ => \gen_multi_thread.arbiter_resp_inst_n_29\,
      \gen_multi_thread.active_id_reg[4]\ => \gen_multi_thread.arbiter_resp_inst_n_27\,
      \gen_multi_thread.any_pop__1\ => \gen_multi_thread.any_pop__1\,
      \gen_multi_thread.s_avalid_en\(1 downto 0) => \gen_multi_thread.s_avalid_en\(1 downto 0),
      \gen_multi_thread.thread_valid_0__0\ => \gen_multi_thread.thread_valid_0__0\,
      \gen_multi_thread.thread_valid_1__0\ => \gen_multi_thread.thread_valid_1__0\,
      \gen_no_arbiter.m_target_hot_i_reg[3]\ => \gen_no_arbiter.m_target_hot_i_reg[3]\,
      \gen_no_arbiter.m_valid_i_i_3_0\ => \gen_no_arbiter.m_valid_i_i_3\,
      \gen_no_arbiter.m_valid_i_i_3_1\ => \gen_no_arbiter.m_valid_i_i_3_0\,
      \gen_no_arbiter.m_valid_i_i_3_2\ => \gen_no_arbiter.m_valid_i_i_3_1\,
      \gen_no_arbiter.m_valid_i_reg\ => \gen_no_arbiter.m_valid_i_reg\,
      m_axi_bvalid(2 downto 0) => m_axi_bvalid(2 downto 0),
      \m_payload_i_reg[2]\ => \m_payload_i_reg[2]\,
      match => match,
      mi_awmaxissuing(0) => mi_awmaxissuing(0),
      p_108_out => p_108_out,
      p_43_out => p_43_out,
      p_44_in => p_44_in,
      p_62_in => p_62_in,
      p_66_out => p_66_out,
      p_79_in => p_79_in,
      p_87_out => p_87_out,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bid(2 downto 0) => s_axi_bid(2 downto 0),
      \s_axi_bid[3]\(5 downto 0) => \s_axi_bid[3]\(5 downto 0),
      \s_axi_bid[3]_0\(5 downto 0) => \s_axi_bid[3]_0\(5 downto 0),
      \s_axi_bid[3]_1\(5 downto 0) => \s_axi_bid[3]_1\(5 downto 0),
      \s_axi_bid[3]_2\(3 downto 0) => \s_axi_bid[3]_2\(3 downto 0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      \s_ready_i0__1\(0) => \s_ready_i0__1\(0),
      s_ready_i_reg => s_ready_i_reg,
      sel_4 => sel_4,
      w_issuing_cnt(9 downto 0) => w_issuing_cnt(9 downto 0)
    );
\gen_no_arbiter.m_target_hot_i[3]_i_5\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D75555D7"
    )
        port map (
      I0 => \gen_multi_thread.aid_match_1__0\,
      I1 => \gen_multi_thread.active_target\(8),
      I2 => st_aa_awtarget_enc(0),
      I3 => st_aa_awtarget_enc(1),
      I4 => \gen_multi_thread.active_target\(9),
      O => \gen_multi_thread.s_avalid_en\(1)
    );
\gen_no_arbiter.m_target_hot_i[3]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"D75555D7"
    )
        port map (
      I0 => \gen_multi_thread.aid_match_0__0\,
      I1 => \gen_multi_thread.active_target\(0),
      I2 => st_aa_awtarget_enc(0),
      I3 => st_aa_awtarget_enc(1),
      I4 => \gen_multi_thread.active_target\(1),
      O => \gen_multi_thread.s_avalid_en\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_data_fifo_v2_1_19_axic_reg_srl_fifo is
  port (
    s_ready_i_reg_0 : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_gen_axi.write_cs_reg[1]\ : out STD_LOGIC;
    \gen_axi.write_cs0__0\ : out STD_LOGIC;
    st_aa_awtarget_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_18_in : in STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_data_fifo_v2_1_19_axic_reg_srl_fifo : entity is "axi_data_fifo_v2_1_19_axic_reg_srl_fifo";
end axi_bus_axi_data_fifo_v2_1_19_axic_reg_srl_fifo;

architecture STRUCTURE of axi_bus_axi_data_fifo_v2_1_19_axic_reg_srl_fifo is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_6_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal areset_d1 : STD_LOGIC;
  signal fifoaddr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \gen_rep[0].fifoaddr[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_rep[0].fifoaddr[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[0].srl_nx1_n_0\ : STD_LOGIC;
  signal \gen_srls[0].gen_rep[2].srl_nx1_n_2\ : STD_LOGIC;
  signal load_s1 : STD_LOGIC;
  signal \m_aready0__2\ : STD_LOGIC;
  signal \m_aready__1\ : STD_LOGIC;
  signal m_avalid : STD_LOGIC;
  signal m_select_enc : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal m_valid_i : STD_LOGIC;
  signal \m_valid_i_i_1__6_n_0\ : STD_LOGIC;
  signal p_0_in8_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal push : STD_LOGIC;
  signal \s_ready_i_i_1__2_n_0\ : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  signal state17_out : STD_LOGIC;
  signal storage_data11 : STD_LOGIC;
  signal \storage_data1[0]_i_1_n_0\ : STD_LOGIC;
  signal \storage_data1[1]_i_1_n_0\ : STD_LOGIC;
  signal \storage_data1[2]_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_state[1]_i_2\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_4\ : label is "soft_lutpair91";
  attribute SOFT_HLUTNM of \FSM_onehot_state[3]_i_6\ : label is "soft_lutpair93";
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "TWO:0001,ZERO:1000,iSTATE:0100,ONE:0010";
  attribute syn_keep : string;
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[0]\ : label is "1";
  attribute syn_keep of \gen_rep[0].fifoaddr_reg[1]\ : label is "1";
  attribute SOFT_HLUTNM of \m_axi_wvalid[0]_INST_0\ : label is "soft_lutpair93";
  attribute SOFT_HLUTNM of \m_axi_wvalid[1]_INST_0\ : label is "soft_lutpair92";
  attribute SOFT_HLUTNM of \m_axi_wvalid[2]_INST_0\ : label is "soft_lutpair92";
begin
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\FSM_onehot_gen_axi.write_cs[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000080000000"
    )
        port map (
      I0 => s_axi_wlast(0),
      I1 => m_avalid,
      I2 => s_axi_wvalid(0),
      I3 => m_select_enc(0),
      I4 => m_select_enc(1),
      I5 => m_select_enc(2),
      O => \gen_axi.write_cs0__0\
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => state17_out,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00100000"
    )
        port map (
      I0 => push,
      I1 => fifoaddr(0),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => fifoaddr(1),
      I4 => storage_data11,
      I5 => \FSM_onehot_state[1]_i_3_n_0\,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \m_aready0__2\,
      I1 => s_axi_wvalid(0),
      I2 => m_avalid,
      I3 => s_axi_wlast(0),
      I4 => \FSM_onehot_state_reg_n_0_[0]\,
      O => storage_data11
    );
\FSM_onehot_state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => p_9_in,
      I1 => \FSM_onehot_state_reg[1]_0\(0),
      I2 => s_axi_awvalid(0),
      O => \FSM_onehot_state[1]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F4F4FFF4FF444444"
    )
        port map (
      I0 => push,
      I1 => \FSM_onehot_state[3]_i_3_n_0\,
      I2 => p_9_in,
      I3 => p_0_in8_in,
      I4 => \m_aready__1\,
      I5 => ss_wr_awvalid,
      O => m_valid_i
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_0_in8_in,
      I1 => state17_out,
      O => \FSM_onehot_state[3]_i_2_n_0\
    );
\FSM_onehot_state[3]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"1000000000000000"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => fifoaddr(1),
      I2 => \FSM_onehot_state_reg_n_0_[0]\,
      I3 => s_axi_wlast(0),
      I4 => \FSM_onehot_state[3]_i_6_n_0\,
      I5 => \m_aready0__2\,
      O => \FSM_onehot_state[3]_i_3_n_0\
    );
\FSM_onehot_state[3]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wlast(0),
      I1 => m_avalid,
      I2 => s_axi_wvalid(0),
      I3 => \m_aready0__2\,
      O => \m_aready__1\
    );
\FSM_onehot_state[3]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000080008000"
    )
        port map (
      I0 => \m_aready0__2\,
      I1 => s_axi_wvalid(0),
      I2 => m_avalid,
      I3 => s_axi_wlast(0),
      I4 => \FSM_onehot_state_reg[1]_0\(0),
      I5 => s_axi_awvalid(0),
      O => state17_out
    );
\FSM_onehot_state[3]_i_6\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_avalid,
      I1 => s_axi_wvalid(0),
      O => \FSM_onehot_state[3]_i_6_n_0\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      R => areset_d1
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => p_0_in8_in,
      R => areset_d1
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \FSM_onehot_state[3]_i_2_n_0\,
      Q => p_9_in,
      S => areset_d1
    );
areset_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => SR(0),
      Q => areset_d1,
      R => '0'
    );
\gen_axi.s_axi_wready_i_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \gen_axi.s_axi_wready_i_reg\,
      I1 => m_select_enc(2),
      I2 => m_select_enc(1),
      I3 => m_select_enc(0),
      I4 => \FSM_onehot_state[3]_i_6_n_0\,
      I5 => s_axi_wlast(0),
      O => \FSM_onehot_gen_axi.write_cs_reg[1]\
    );
\gen_rep[0].fifoaddr[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D05FD75F2FA028A0"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => \^s_ready_i_reg_0\,
      I2 => \m_aready__1\,
      I3 => ss_wr_awvalid,
      I4 => p_0_in8_in,
      I5 => fifoaddr(0),
      O => \gen_rep[0].fifoaddr[0]_i_1_n_0\
    );
\gen_rep[0].fifoaddr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DB24"
    )
        port map (
      I0 => fifoaddr(0),
      I1 => storage_data11,
      I2 => push,
      I3 => fifoaddr(1),
      O => \gen_rep[0].fifoaddr[1]_i_1_n_0\
    );
\gen_rep[0].fifoaddr_reg[0]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[0]_i_1_n_0\,
      Q => fifoaddr(0),
      S => SR(0)
    );
\gen_rep[0].fifoaddr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_rep[0].fifoaddr[1]_i_1_n_0\,
      Q => fifoaddr(1),
      S => SR(0)
    );
\gen_srls[0].gen_rep[0].srl_nx1\: entity work.axi_bus_axi_data_fifo_v2_1_19_ndeep_srl
     port map (
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      \gen_rep[0].fifoaddr_reg[1]\ => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      push => push,
      st_aa_awtarget_enc(0) => st_aa_awtarget_enc(0)
    );
\gen_srls[0].gen_rep[1].srl_nx1\: entity work.axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_5
     port map (
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      p_2_out => p_2_out,
      push => push,
      st_aa_awtarget_enc(0) => st_aa_awtarget_enc(1)
    );
\gen_srls[0].gen_rep[2].srl_nx1\: entity work.axi_bus_axi_data_fifo_v2_1_19_ndeep_srl_6
     port map (
      \FSM_onehot_state_reg[1]\ => \^s_ready_i_reg_0\,
      Q(1) => p_0_in8_in,
      Q(0) => \FSM_onehot_state_reg_n_0_[0]\,
      aclk => aclk,
      fifoaddr(1 downto 0) => fifoaddr(1 downto 0),
      \m_aready0__2\ => \m_aready0__2\,
      m_avalid => m_avalid,
      m_axi_wready(2 downto 0) => m_axi_wready(2 downto 0),
      m_select_enc(2 downto 0) => m_select_enc(2 downto 0),
      p_18_in => p_18_in,
      p_3_out => p_3_out,
      push => push,
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_axi_wvalid_0_sp_1 => \gen_srls[0].gen_rep[2].srl_nx1_n_2\,
      ss_wr_awvalid => ss_wr_awvalid
    );
\m_axi_wvalid[0]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000008"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      I2 => m_select_enc(0),
      I3 => m_select_enc(1),
      I4 => m_select_enc(2),
      O => m_axi_wvalid(0)
    );
\m_axi_wvalid[1]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000080"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      I2 => m_select_enc(0),
      I3 => m_select_enc(1),
      I4 => m_select_enc(2),
      O => m_axi_wvalid(1)
    );
\m_axi_wvalid[2]_INST_0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => s_axi_wvalid(0),
      I1 => m_avalid,
      I2 => m_select_enc(0),
      I3 => m_select_enc(1),
      I4 => m_select_enc(2),
      O => m_axi_wvalid(2)
    );
\m_valid_i_i_1__6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F400F400FFFFF400"
    )
        port map (
      I0 => \m_aready__1\,
      I1 => p_0_in8_in,
      I2 => p_9_in,
      I3 => ss_wr_awvalid,
      I4 => \FSM_onehot_state[3]_i_3_n_0\,
      I5 => push,
      O => \m_valid_i_i_1__6_n_0\
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => m_valid_i,
      D => \m_valid_i_i_1__6_n_0\,
      Q => m_avalid,
      R => areset_d1
    );
\s_axi_wready[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => m_avalid,
      I1 => \m_aready0__2\,
      O => s_axi_wready(0)
    );
\s_ready_i_i_1__2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFBFFFFFFAAAA"
    )
        port map (
      I0 => areset_d1,
      I1 => push,
      I2 => fifoaddr(0),
      I3 => fifoaddr(1),
      I4 => storage_data11,
      I5 => \^s_ready_i_reg_0\,
      O => \s_ready_i_i_1__2_n_0\
    );
s_ready_i_reg: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \s_ready_i_i_1__2_n_0\,
      Q => \^s_ready_i_reg_0\,
      R => SR(0)
    );
\storage_data1[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => \gen_srls[0].gen_rep[0].srl_nx1_n_0\,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => st_aa_awtarget_enc(0),
      I3 => load_s1,
      I4 => m_select_enc(0),
      O => \storage_data1[0]_i_1_n_0\
    );
\storage_data1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"B8FFB800"
    )
        port map (
      I0 => p_2_out,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => st_aa_awtarget_enc(1),
      I3 => load_s1,
      I4 => m_select_enc(1),
      O => \storage_data1[1]_i_1_n_0\
    );
\storage_data1[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F80"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_3_out,
      I2 => load_s1,
      I3 => m_select_enc(2),
      O => \storage_data1[2]_i_1_n_0\
    );
\storage_data1[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCCCA000ECCCA000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => p_9_in,
      I2 => \gen_srls[0].gen_rep[2].srl_nx1_n_2\,
      I3 => \m_aready0__2\,
      I4 => ss_wr_awvalid,
      I5 => p_0_in8_in,
      O => load_s1
    );
\storage_data1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \storage_data1[0]_i_1_n_0\,
      Q => m_select_enc(0),
      R => '0'
    );
\storage_data1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \storage_data1[1]_i_1_n_0\,
      Q => m_select_enc(1),
      R => '0'
    );
\storage_data1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \storage_data1[2]_i_1_n_0\,
      Q => m_select_enc(2),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_register_slice_v2_1_20_axi_register_slice is
  port (
    p_108_out : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_102_out : out STD_LOGIC;
    s_ready_i_reg : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[2]\ : out STD_LOGIC;
    \r_cmd_pop_0__1\ : out STD_LOGIC;
    \gen_master_slots[0].r_issuing_cnt_reg[2]_0\ : out STD_LOGIC;
    mi_awmaxissuing : out STD_LOGIC_VECTOR ( 0 to 0 );
    \valid_qual_i0__2\ : out STD_LOGIC;
    mi_armaxissuing : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[38]\ : out STD_LOGIC_VECTOR ( 38 downto 0 );
    \m_payload_i_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 3 downto 0 );
    p_71_in : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    \r_cmd_pop_3__1\ : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg\ : in STD_LOGIC;
    match : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_reg_0\ : in STD_LOGIC;
    sel_4 : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3__0\ : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_register_slice_v2_1_20_axi_register_slice : entity is "axi_register_slice_v2_1_20_axi_register_slice";
end axi_bus_axi_register_slice_v2_1_20_axi_register_slice;

architecture STRUCTURE of axi_bus_axi_register_slice_v2_1_20_axi_register_slice is
begin
\b.b_pipe\: entity work.\axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_12\
     port map (
      D(5 downto 0) => D(5 downto 0),
      Q(0) => Q(0),
      aclk => aclk,
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[5]_0\(5 downto 0) => \m_payload_i_reg[5]\(5 downto 0),
      m_valid_i_reg_0 => p_108_out,
      m_valid_i_reg_1 => m_valid_i_reg,
      mi_awmaxissuing(0) => mi_awmaxissuing(0),
      s_axi_bready(0) => s_axi_bready(0),
      s_ready_i_reg_0 => s_ready_i_reg_0,
      s_ready_i_reg_1 => s_ready_i_reg_1,
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\r.r_pipe\: entity work.\axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_13\
     port map (
      E(0) => E(0),
      aclk => aclk,
      \gen_master_slots[0].r_issuing_cnt_reg[2]\ => \gen_master_slots[0].r_issuing_cnt_reg[2]\,
      \gen_master_slots[0].r_issuing_cnt_reg[2]_0\ => \gen_master_slots[0].r_issuing_cnt_reg[2]_0\,
      \gen_no_arbiter.m_valid_i_i_3__0_0\ => \gen_no_arbiter.m_valid_i_i_3__0\,
      \gen_no_arbiter.m_valid_i_reg\ => \gen_no_arbiter.m_valid_i_reg\,
      \gen_no_arbiter.m_valid_i_reg_0\ => \gen_no_arbiter.m_valid_i_reg_0\,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[34]_0\ => \r_cmd_pop_0__1\,
      \m_payload_i_reg[38]_0\(38 downto 0) => \m_payload_i_reg[38]\(38 downto 0),
      m_valid_i_reg_0 => p_102_out,
      m_valid_i_reg_1 => m_valid_i_reg,
      match => match,
      mi_armaxissuing(0) => mi_armaxissuing(0),
      p_71_in => p_71_in,
      \r_cmd_pop_3__1\ => \r_cmd_pop_3__1\,
      r_issuing_cnt(3 downto 0) => r_issuing_cnt(3 downto 0),
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => s_ready_i_reg_0,
      s_ready_i_reg_2(0) => s_ready_i_reg_2(0),
      sel_4 => sel_4,
      \valid_qual_i0__2\ => \valid_qual_i0__2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_register_slice_v2_1_20_axi_register_slice_1 is
  port (
    p_87_out : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    p_81_out : out STD_LOGIC;
    s_ready_i_reg : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[10]\ : out STD_LOGIC;
    \r_cmd_pop_1__1\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[10]_0\ : out STD_LOGIC;
    \s_axi_awaddr[21]\ : out STD_LOGIC;
    \s_axi_araddr[21]\ : out STD_LOGIC;
    \gen_master_slots[1].r_issuing_cnt_reg[10]_1\ : out STD_LOGIC;
    \m_payload_i_reg[38]\ : out STD_LOGIC_VECTOR ( 38 downto 0 );
    \m_payload_i_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_53_in : in STD_LOGIC;
    target_mi_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_no_arbiter.m_target_hot_i_reg[3]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    match : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    target_mi_enc_0 : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \gen_no_arbiter.m_target_hot_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    match_1 : in STD_LOGIC;
    sel_4 : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3__0\ : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_register_slice_v2_1_20_axi_register_slice_1 : entity is "axi_register_slice_v2_1_20_axi_register_slice";
end axi_bus_axi_register_slice_v2_1_20_axi_register_slice_1;

architecture STRUCTURE of axi_bus_axi_register_slice_v2_1_20_axi_register_slice_1 is
begin
\b.b_pipe\: entity work.\axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_10\
     port map (
      D(5 downto 0) => D(5 downto 0),
      Q(0) => Q(0),
      aclk => aclk,
      \gen_no_arbiter.m_target_hot_i_reg[3]\(0) => \gen_no_arbiter.m_target_hot_i_reg[3]\(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[5]_0\(5 downto 0) => \m_payload_i_reg[5]\(5 downto 0),
      m_valid_i_reg_0 => p_87_out,
      m_valid_i_reg_1 => m_valid_i_reg,
      match => match,
      \s_axi_awaddr[21]\ => \s_axi_awaddr[21]\,
      s_axi_bready(0) => s_axi_bready(0),
      s_ready_i_reg_0 => s_ready_i_reg_0,
      s_ready_i_reg_1 => s_ready_i_reg_1,
      target_mi_enc(1 downto 0) => target_mi_enc(1 downto 0),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\r.r_pipe\: entity work.\axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_11\
     port map (
      E(0) => E(0),
      aclk => aclk,
      \gen_master_slots[1].r_issuing_cnt_reg[10]\ => \gen_master_slots[1].r_issuing_cnt_reg[10]\,
      \gen_master_slots[1].r_issuing_cnt_reg[10]_0\ => \gen_master_slots[1].r_issuing_cnt_reg[10]_0\,
      \gen_master_slots[1].r_issuing_cnt_reg[10]_1\ => \gen_master_slots[1].r_issuing_cnt_reg[10]_1\,
      \gen_no_arbiter.m_target_hot_i_reg[3]\(0) => \gen_no_arbiter.m_target_hot_i_reg[3]_0\(0),
      \gen_no_arbiter.m_valid_i_i_3__0\ => \gen_no_arbiter.m_valid_i_i_3__0\,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[34]_0\ => \r_cmd_pop_1__1\,
      \m_payload_i_reg[38]_0\(38 downto 0) => \m_payload_i_reg[38]\(38 downto 0),
      m_valid_i_reg_0 => p_81_out,
      m_valid_i_reg_1 => m_valid_i_reg,
      match_1 => match_1,
      p_53_in => p_53_in,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      \s_axi_araddr[21]\ => \s_axi_araddr[21]\,
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => s_ready_i_reg_0,
      s_ready_i_reg_2(0) => s_ready_i_reg_2(0),
      sel_4 => sel_4,
      target_mi_enc_0(1 downto 0) => target_mi_enc_0(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_register_slice_v2_1_20_axi_register_slice_2 is
  port (
    p_66_out : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[0]\ : out STD_LOGIC;
    p_60_out : out STD_LOGIC;
    s_ready_i_reg : out STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[18]\ : out STD_LOGIC;
    \r_cmd_pop_2__1\ : out STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[18]_0\ : out STD_LOGIC;
    \gen_master_slots[2].w_issuing_cnt_reg[17]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_master_slots[2].r_issuing_cnt_reg[18]_1\ : out STD_LOGIC;
    \gen_master_slots[2].r_issuing_cnt_reg[17]\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    \m_payload_i_reg[38]\ : out STD_LOGIC_VECTOR ( 38 downto 0 );
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    \m_payload_i_reg[5]\ : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg : in STD_LOGIC;
    aclk : in STD_LOGIC;
    s_ready_i_reg_0 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_35_in : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    w_issuing_cnt : in STD_LOGIC_VECTOR ( 2 downto 0 );
    sel_4 : in STD_LOGIC;
    \gen_no_arbiter.m_valid_i_i_3__0\ : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    D : in STD_LOGIC_VECTOR ( 5 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_register_slice_v2_1_20_axi_register_slice_2 : entity is "axi_register_slice_v2_1_20_axi_register_slice";
end axi_bus_axi_register_slice_v2_1_20_axi_register_slice_2;

architecture STRUCTURE of axi_bus_axi_register_slice_v2_1_20_axi_register_slice_2 is
  signal \^aresetn_d_reg[0]\ : STD_LOGIC;
begin
  \aresetn_d_reg[0]\ <= \^aresetn_d_reg[0]\;
\b.b_pipe\: entity work.\axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1_8\
     port map (
      D(5 downto 0) => D(5 downto 0),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]_0\ => \^aresetn_d_reg[0]\,
      \aresetn_d_reg[0]_1\ => \aresetn_d_reg[0]_0\,
      \gen_master_slots[2].w_issuing_cnt_reg[17]\(0) => \gen_master_slots[2].w_issuing_cnt_reg[17]\(0),
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      \m_payload_i_reg[5]_0\(5 downto 0) => \m_payload_i_reg[5]\(5 downto 0),
      m_valid_i_reg_0 => p_66_out,
      m_valid_i_reg_1 => m_valid_i_reg,
      m_valid_i_reg_2(0) => m_valid_i_reg_0(0),
      s_axi_bready(0) => s_axi_bready(0),
      s_ready_i_reg_0 => s_ready_i_reg_0,
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\r.r_pipe\: entity work.\axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2_9\
     port map (
      E(0) => E(0),
      Q(0) => Q(0),
      aclk => aclk,
      \gen_master_slots[2].r_issuing_cnt_reg[17]\(0) => \gen_master_slots[2].r_issuing_cnt_reg[17]\(0),
      \gen_master_slots[2].r_issuing_cnt_reg[18]\ => \gen_master_slots[2].r_issuing_cnt_reg[18]\,
      \gen_master_slots[2].r_issuing_cnt_reg[18]_0\ => \gen_master_slots[2].r_issuing_cnt_reg[18]_0\,
      \gen_master_slots[2].r_issuing_cnt_reg[18]_1\ => \gen_master_slots[2].r_issuing_cnt_reg[18]_1\,
      \gen_no_arbiter.m_valid_i_i_3__0\ => \gen_no_arbiter.m_valid_i_i_3__0\,
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[34]_0\ => \r_cmd_pop_2__1\,
      \m_payload_i_reg[38]_0\(38 downto 0) => \m_payload_i_reg[38]\(38 downto 0),
      m_valid_i_reg_0 => p_60_out,
      m_valid_i_reg_1 => m_valid_i_reg,
      p_35_in => p_35_in,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg_0 => s_ready_i_reg,
      s_ready_i_reg_1 => \^aresetn_d_reg[0]\,
      sel_4 => sel_4
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_register_slice_v2_1_20_axi_register_slice_3 is
  port (
    p_43_out : out STD_LOGIC;
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    p_37_out : out STD_LOGIC;
    mi_rready_3 : out STD_LOGIC;
    mi_bready_3 : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    \gen_master_slots[3].r_issuing_cnt_reg[24]\ : out STD_LOGIC;
    \r_cmd_pop_3__1\ : out STD_LOGIC;
    \m_payload_i_reg[38]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \m_payload_i_reg[5]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    aclk : in STD_LOGIC;
    s_ready_i_reg : in STD_LOGIC;
    \aresetn_d_reg[1]_1\ : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_25_in : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg : in STD_LOGIC_VECTOR ( 0 to 0 );
    p_19_in : in STD_LOGIC;
    r_issuing_cnt : in STD_LOGIC_VECTOR ( 0 to 0 );
    match : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 0 to 0 );
    mi_armaxissuing : in STD_LOGIC_VECTOR ( 0 to 0 );
    \skid_buffer_reg[38]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \gen_axi.s_axi_rlast_i\ : in STD_LOGIC;
    \m_payload_i_reg[5]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    E : in STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_register_slice_v2_1_20_axi_register_slice_3 : entity is "axi_register_slice_v2_1_20_axi_register_slice";
end axi_bus_axi_register_slice_v2_1_20_axi_register_slice_3;

architecture STRUCTURE of axi_bus_axi_register_slice_v2_1_20_axi_register_slice_3 is
  signal \^aresetn_d_reg[1]\ : STD_LOGIC;
begin
  \aresetn_d_reg[1]\ <= \^aresetn_d_reg[1]\;
\b.b_pipe\: entity work.\axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized1\
     port map (
      Q(0) => Q(0),
      aclk => aclk,
      \aresetn_d_reg[1]_0\ => \^aresetn_d_reg[1]\,
      \aresetn_d_reg[1]_1\ => \aresetn_d_reg[1]_0\,
      \aresetn_d_reg[1]_2\ => \aresetn_d_reg[1]_1\,
      \m_payload_i_reg[5]_0\(3 downto 0) => \m_payload_i_reg[5]\(3 downto 0),
      \m_payload_i_reg[5]_1\(3 downto 0) => \m_payload_i_reg[5]_0\(3 downto 0),
      m_valid_i_reg_0 => p_43_out,
      mi_bready_3 => mi_bready_3,
      p_25_in => p_25_in,
      s_axi_bready(0) => s_axi_bready(0),
      s_ready_i_reg_0 => s_ready_i_reg
    );
\r.r_pipe\: entity work.\axi_bus_axi_register_slice_v2_1_20_axic_register_slice__parameterized2\
     port map (
      D(0) => D(0),
      E(0) => E(0),
      aclk => aclk,
      \gen_axi.s_axi_rlast_i\ => \gen_axi.s_axi_rlast_i\,
      \gen_master_slots[3].r_issuing_cnt_reg[24]\ => \gen_master_slots[3].r_issuing_cnt_reg[24]\,
      \m_payload_i_reg[38]_0\(4 downto 0) => \m_payload_i_reg[38]\(4 downto 0),
      m_valid_i_reg_0 => p_37_out,
      m_valid_i_reg_1 => \^aresetn_d_reg[1]\,
      m_valid_i_reg_2(0) => m_valid_i_reg(0),
      match => match,
      mi_armaxissuing(0) => mi_armaxissuing(0),
      p_19_in => p_19_in,
      \r_cmd_pop_3__1\ => \r_cmd_pop_3__1\,
      r_issuing_cnt(0) => r_issuing_cnt(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg_0 => mi_rready_3,
      s_ready_i_reg_1 => s_ready_i_reg,
      \skid_buffer_reg[38]_0\(3 downto 0) => \skid_buffer_reg[38]\(3 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_wdata_router is
  port (
    ss_wr_awready : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_gen_axi.write_cs_reg[1]\ : out STD_LOGIC;
    \gen_axi.write_cs0__0\ : out STD_LOGIC;
    st_aa_awtarget_enc : in STD_LOGIC_VECTOR ( 1 downto 0 );
    aclk : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    ss_wr_awvalid : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_state_reg[1]\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    p_18_in : in STD_LOGIC;
    \gen_axi.s_axi_wready_i_reg\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_wdata_router : entity is "axi_crossbar_v2_1_21_wdata_router";
end axi_bus_axi_crossbar_v2_1_21_wdata_router;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_wdata_router is
begin
wrouter_aw_fifo: entity work.axi_bus_axi_data_fifo_v2_1_19_axic_reg_srl_fifo
     port map (
      \FSM_onehot_gen_axi.write_cs_reg[1]\ => \FSM_onehot_gen_axi.write_cs_reg[1]\,
      \FSM_onehot_state_reg[1]_0\(0) => \FSM_onehot_state_reg[1]\(0),
      SR(0) => SR(0),
      aclk => aclk,
      \gen_axi.s_axi_wready_i_reg\ => \gen_axi.s_axi_wready_i_reg\,
      \gen_axi.write_cs0__0\ => \gen_axi.write_cs0__0\,
      m_axi_wready(2 downto 0) => m_axi_wready(2 downto 0),
      m_axi_wvalid(2 downto 0) => m_axi_wvalid(2 downto 0),
      p_18_in => p_18_in,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_ready_i_reg_0 => ss_wr_awready,
      ss_wr_awvalid => ss_wr_awvalid,
      st_aa_awtarget_enc(1 downto 0) => st_aa_awtarget_enc(1 downto 0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_crossbar is
  port (
    M_AXI_RREADY : out STD_LOGIC_VECTOR ( 2 downto 0 );
    \m_payload_i_reg[2]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 56 downto 0 );
    \gen_no_arbiter.m_mesg_i_reg[65]\ : out STD_LOGIC_VECTOR ( 56 downto 0 );
    \gen_no_arbiter.s_ready_i_reg[0]\ : out STD_LOGIC;
    s_ready_i_reg : out STD_LOGIC;
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    \chosen_reg[1]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    D : in STD_LOGIC_VECTOR ( 56 downto 0 );
    \gen_no_arbiter.m_mesg_i_reg[65]_0\ : in STD_LOGIC_VECTOR ( 56 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_crossbar : entity is "axi_crossbar_v2_1_21_crossbar";
end axi_bus_axi_crossbar_v2_1_21_crossbar;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_crossbar is
  signal \^q\ : STD_LOGIC_VECTOR ( 56 downto 0 );
  signal aa_mi_artarget_hot : STD_LOGIC_VECTOR ( 3 to 3 );
  signal aa_mi_arvalid : STD_LOGIC;
  signal aa_mi_awtarget_hot : STD_LOGIC_VECTOR ( 3 to 3 );
  signal aa_sa_awready : STD_LOGIC;
  signal aa_sa_awvalid : STD_LOGIC;
  signal addr_arbiter_ar_n_13 : STD_LOGIC;
  signal addr_arbiter_ar_n_14 : STD_LOGIC;
  signal addr_arbiter_ar_n_15 : STD_LOGIC;
  signal addr_arbiter_ar_n_16 : STD_LOGIC;
  signal addr_arbiter_ar_n_17 : STD_LOGIC;
  signal addr_arbiter_ar_n_24 : STD_LOGIC;
  signal addr_arbiter_ar_n_3 : STD_LOGIC;
  signal addr_arbiter_ar_n_4 : STD_LOGIC;
  signal addr_arbiter_ar_n_5 : STD_LOGIC;
  signal addr_arbiter_ar_n_82 : STD_LOGIC;
  signal addr_arbiter_ar_n_83 : STD_LOGIC;
  signal addr_arbiter_ar_n_84 : STD_LOGIC;
  signal addr_arbiter_aw_n_10 : STD_LOGIC;
  signal addr_arbiter_aw_n_11 : STD_LOGIC;
  signal addr_arbiter_aw_n_12 : STD_LOGIC;
  signal addr_arbiter_aw_n_2 : STD_LOGIC;
  signal addr_arbiter_aw_n_28 : STD_LOGIC;
  signal addr_arbiter_aw_n_3 : STD_LOGIC;
  signal addr_arbiter_aw_n_4 : STD_LOGIC;
  signal aresetn_d : STD_LOGIC;
  signal \gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4\ : STD_LOGIC;
  signal \gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4_0\ : STD_LOGIC;
  signal \gen_axi.s_axi_bid_i\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_axi.s_axi_rid_i\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_axi.s_axi_rlast_i\ : STD_LOGIC;
  signal \gen_axi.write_cs01_out\ : STD_LOGIC;
  signal \gen_axi.write_cs0__0\ : STD_LOGIC;
  signal \gen_decerr_slave.decerr_slave_inst_n_6\ : STD_LOGIC;
  signal \gen_master_slots[0].r_issuing_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_4\ : STD_LOGIC;
  signal \gen_master_slots[0].reg_slice_mi_n_6\ : STD_LOGIC;
  signal \gen_master_slots[0].w_issuing_cnt[0]_i_3_n_0\ : STD_LOGIC;
  signal \gen_master_slots[1].r_issuing_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_4\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_6\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_7\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_8\ : STD_LOGIC;
  signal \gen_master_slots[1].reg_slice_mi_n_9\ : STD_LOGIC;
  signal \gen_master_slots[1].w_issuing_cnt[8]_i_3_n_0\ : STD_LOGIC;
  signal \gen_master_slots[2].r_issuing_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_2\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_50\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_7\ : STD_LOGIC;
  signal \gen_master_slots[2].reg_slice_mi_n_9\ : STD_LOGIC;
  signal \gen_master_slots[2].w_issuing_cnt[16]_i_3_n_0\ : STD_LOGIC;
  signal \gen_master_slots[3].reg_slice_mi_n_1\ : STD_LOGIC;
  signal \gen_master_slots[3].reg_slice_mi_n_5\ : STD_LOGIC;
  signal \gen_master_slots[3].reg_slice_mi_n_6\ : STD_LOGIC;
  signal \gen_multi_thread.arbiter_resp_inst/chosen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \gen_multi_thread.arbiter_resp_inst/chosen_6\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^gen_no_arbiter.m_mesg_i_reg[65]\ : STD_LOGIC_VECTOR ( 56 downto 0 );
  signal \^gen_no_arbiter.s_ready_i_reg[0]\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_49\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_0\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_10\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_11\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_12\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_13\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_14\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_15\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_16\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_24\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_6\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_7\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_8\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_9\ : STD_LOGIC;
  signal \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5\ : STD_LOGIC;
  signal m_ready_d : STD_LOGIC_VECTOR ( 1 to 1 );
  signal m_ready_d_8 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal match : STD_LOGIC;
  signal match_2 : STD_LOGIC;
  signal mi_armaxissuing : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mi_arready_3 : STD_LOGIC;
  signal mi_awmaxissuing : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal mi_awready_3 : STD_LOGIC;
  signal \mi_awready_mux__2\ : STD_LOGIC;
  signal mi_awvalid_en : STD_LOGIC;
  signal mi_bready_3 : STD_LOGIC;
  signal mi_rready_3 : STD_LOGIC;
  signal p_102_out : STD_LOGIC;
  signal p_104_out : STD_LOGIC;
  signal p_108_out : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_25_in : STD_LOGIC;
  signal p_35_in : STD_LOGIC;
  signal p_37_out : STD_LOGIC;
  signal p_39_out : STD_LOGIC;
  signal p_43_out : STD_LOGIC;
  signal p_44_in : STD_LOGIC;
  signal p_53_in : STD_LOGIC;
  signal p_60_out : STD_LOGIC;
  signal p_62_in : STD_LOGIC;
  signal p_62_out : STD_LOGIC;
  signal p_66_out : STD_LOGIC;
  signal p_71_in : STD_LOGIC;
  signal p_79_in : STD_LOGIC;
  signal p_81_out : STD_LOGIC;
  signal p_83_out : STD_LOGIC;
  signal p_87_out : STD_LOGIC;
  signal \r.r_pipe/p_1_in\ : STD_LOGIC;
  signal \r.r_pipe/p_1_in_3\ : STD_LOGIC;
  signal \r.r_pipe/p_1_in_4\ : STD_LOGIC;
  signal \r.r_pipe/p_1_in_5\ : STD_LOGIC;
  signal \r_cmd_pop_0__1\ : STD_LOGIC;
  signal \r_cmd_pop_1__1\ : STD_LOGIC;
  signal \r_cmd_pop_2__1\ : STD_LOGIC;
  signal \r_cmd_pop_3__1\ : STD_LOGIC;
  signal r_issuing_cnt : STD_LOGIC_VECTOR ( 24 downto 0 );
  signal reset : STD_LOGIC;
  signal s_axi_rvalid_i : STD_LOGIC;
  signal \s_ready_i0__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_ready_i0__1_7\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_ready_i_reg\ : STD_LOGIC;
  signal \sa_wm_awready_mux__2\ : STD_LOGIC;
  signal ss_aa_awready : STD_LOGIC;
  signal ss_wr_awready : STD_LOGIC;
  signal ss_wr_awvalid : STD_LOGIC;
  signal st_aa_artarget_hot : STD_LOGIC_VECTOR ( 0 to 0 );
  signal st_aa_awtarget_enc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal st_aa_awtarget_hot : STD_LOGIC_VECTOR ( 0 to 0 );
  signal st_mr_bid : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal st_mr_bmesg : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal st_mr_rid : STD_LOGIC_VECTOR ( 15 downto 0 );
  signal st_mr_rmesg : STD_LOGIC_VECTOR ( 104 downto 0 );
  signal target_mi_enc : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal target_mi_enc_1 : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \valid_qual_i0__2\ : STD_LOGIC;
  signal w_issuing_cnt : STD_LOGIC_VECTOR ( 24 downto 0 );
begin
  Q(56 downto 0) <= \^q\(56 downto 0);
  \gen_no_arbiter.m_mesg_i_reg[65]\(56 downto 0) <= \^gen_no_arbiter.m_mesg_i_reg[65]\(56 downto 0);
  \gen_no_arbiter.s_ready_i_reg[0]\ <= \^gen_no_arbiter.s_ready_i_reg[0]\;
  s_ready_i_reg <= \^s_ready_i_reg\;
addr_arbiter_ar: entity work.axi_bus_axi_crossbar_v2_1_21_addr_arbiter
     port map (
      D(0) => st_aa_artarget_hot(0),
      E(0) => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_0\,
      Q(0) => aa_mi_artarget_hot(3),
      SR(0) => reset,
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_axi.read_cs_reg[0]\ => addr_arbiter_ar_n_24,
      \gen_master_slots[0].r_issuing_cnt_reg[0]\ => addr_arbiter_ar_n_5,
      \gen_master_slots[0].r_issuing_cnt_reg[0]_0\ => \gen_master_slots[0].r_issuing_cnt[0]_i_3_n_0\,
      \gen_master_slots[1].r_issuing_cnt_reg[8]\ => addr_arbiter_ar_n_4,
      \gen_master_slots[1].r_issuing_cnt_reg[8]_0\ => \gen_master_slots[1].r_issuing_cnt[8]_i_3_n_0\,
      \gen_master_slots[2].r_issuing_cnt_reg[16]\ => addr_arbiter_ar_n_3,
      \gen_master_slots[2].r_issuing_cnt_reg[16]_0\ => \gen_master_slots[2].r_issuing_cnt[16]_i_3_n_0\,
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(56 downto 0) => \^gen_no_arbiter.m_mesg_i_reg[65]\(56 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]_1\(56 downto 0) => \gen_no_arbiter.m_mesg_i_reg[65]_0\(56 downto 0),
      \gen_no_arbiter.m_target_hot_i_reg[3]_0\(0) => s_axi_rvalid_i,
      \gen_no_arbiter.m_valid_i_reg_0\ => addr_arbiter_ar_n_16,
      \gen_no_arbiter.m_valid_i_reg_1\ => addr_arbiter_ar_n_84,
      \gen_no_arbiter.m_valid_i_reg_2\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_49\,
      \gen_no_arbiter.s_ready_i_reg[0]_0\ => \^gen_no_arbiter.s_ready_i_reg[0]\,
      m_axi_arready(2 downto 0) => m_axi_arready(2 downto 0),
      m_axi_arready_0_sp_1 => addr_arbiter_ar_n_17,
      m_axi_arvalid(2 downto 0) => m_axi_arvalid(2 downto 0),
      match => match,
      mi_arready_3 => mi_arready_3,
      p_19_in => p_19_in,
      p_35_in => p_35_in,
      p_53_in => p_53_in,
      p_71_in => p_71_in,
      \r_cmd_pop_0__1\ => \r_cmd_pop_0__1\,
      \r_cmd_pop_1__1\ => \r_cmd_pop_1__1\,
      \r_cmd_pop_2__1\ => \r_cmd_pop_2__1\,
      \r_cmd_pop_3__1\ => \r_cmd_pop_3__1\,
      r_issuing_cnt(6) => r_issuing_cnt(24),
      r_issuing_cnt(5) => r_issuing_cnt(18),
      r_issuing_cnt(4) => r_issuing_cnt(16),
      r_issuing_cnt(3) => r_issuing_cnt(10),
      r_issuing_cnt(2) => r_issuing_cnt(8),
      r_issuing_cnt(1) => r_issuing_cnt(2),
      r_issuing_cnt(0) => r_issuing_cnt(0),
      \s_axi_araddr[21]\(1) => addr_arbiter_ar_n_82,
      \s_axi_araddr[21]\(0) => addr_arbiter_ar_n_83,
      \s_axi_araddr[22]\ => addr_arbiter_ar_n_13,
      \s_axi_araddr[22]_0\ => addr_arbiter_ar_n_14,
      \s_axi_araddr[22]_1\ => addr_arbiter_ar_n_15,
      s_axi_arvalid(0) => s_axi_arvalid(0),
      sel_4 => \gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4\,
      target_mi_enc(1 downto 0) => target_mi_enc(1 downto 0)
    );
addr_arbiter_aw: entity work.axi_bus_axi_crossbar_v2_1_21_addr_arbiter_0
     port map (
      D(0) => st_aa_awtarget_hot(0),
      E(0) => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_16\,
      Q(0) => aa_mi_awtarget_hot(3),
      SR(0) => reset,
      aa_sa_awready => aa_sa_awready,
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      \gen_axi.write_cs01_out\ => \gen_axi.write_cs01_out\,
      \gen_master_slots[0].w_issuing_cnt_reg[0]\ => addr_arbiter_aw_n_4,
      \gen_master_slots[0].w_issuing_cnt_reg[0]_0\ => \gen_master_slots[0].w_issuing_cnt[0]_i_3_n_0\,
      \gen_master_slots[0].w_issuing_cnt_reg[0]_1\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_14\,
      \gen_master_slots[1].w_issuing_cnt_reg[8]\ => addr_arbiter_aw_n_3,
      \gen_master_slots[1].w_issuing_cnt_reg[8]_0\ => \gen_master_slots[1].w_issuing_cnt[8]_i_3_n_0\,
      \gen_master_slots[1].w_issuing_cnt_reg[8]_1\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_11\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]\ => addr_arbiter_aw_n_2,
      \gen_master_slots[2].w_issuing_cnt_reg[16]_0\ => \gen_master_slots[2].w_issuing_cnt[16]_i_3_n_0\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]_1\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_8\,
      \gen_master_slots[3].w_issuing_cnt_reg[24]\(0) => \gen_multi_thread.arbiter_resp_inst/chosen_6\(3),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(56 downto 0) => \^q\(56 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]_1\(56 downto 0) => D(56 downto 0),
      \gen_no_arbiter.m_valid_i_reg_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_24\,
      m_axi_awready(2 downto 0) => m_axi_awready(2 downto 0),
      m_axi_awvalid(2 downto 0) => m_axi_awvalid(2 downto 0),
      m_ready_d(1 downto 0) => m_ready_d_8(1 downto 0),
      m_valid_i_reg => addr_arbiter_aw_n_28,
      match => match_2,
      mi_awready_3 => mi_awready_3,
      \mi_awready_mux__2\ => \mi_awready_mux__2\,
      mi_awvalid_en => mi_awvalid_en,
      p_43_out => p_43_out,
      p_44_in => p_44_in,
      p_62_in => p_62_in,
      p_79_in => p_79_in,
      \s_axi_awaddr[22]\ => addr_arbiter_aw_n_10,
      \s_axi_awaddr[22]_0\ => addr_arbiter_aw_n_11,
      \s_axi_awaddr[22]_1\ => addr_arbiter_aw_n_12,
      s_axi_bready(0) => s_axi_bready(0),
      \s_ready_i0__1\(0) => \s_ready_i0__1\(0),
      \sa_wm_awready_mux__2\ => \sa_wm_awready_mux__2\,
      sel_4 => \gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4_0\,
      ss_aa_awready => ss_aa_awready,
      st_aa_awtarget_enc(1 downto 0) => st_aa_awtarget_enc(1 downto 0),
      target_mi_enc(1 downto 0) => target_mi_enc_1(1 downto 0),
      w_issuing_cnt(6) => w_issuing_cnt(24),
      w_issuing_cnt(5) => w_issuing_cnt(18),
      w_issuing_cnt(4) => w_issuing_cnt(16),
      w_issuing_cnt(3) => w_issuing_cnt(10),
      w_issuing_cnt(2) => w_issuing_cnt(8),
      w_issuing_cnt(1) => w_issuing_cnt(2),
      w_issuing_cnt(0) => w_issuing_cnt(0)
    );
aresetn_d_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => aresetn_d,
      R => '0'
    );
\gen_decerr_slave.decerr_slave_inst\: entity work.axi_bus_axi_crossbar_v2_1_21_decerr_slave
     port map (
      E(0) => s_axi_rvalid_i,
      \FSM_onehot_gen_axi.write_cs_reg[1]_0\ => \gen_decerr_slave.decerr_slave_inst_n_6\,
      Q(0) => aa_mi_artarget_hot(3),
      SR(0) => reset,
      aa_mi_arvalid => aa_mi_arvalid,
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \gen_axi.read_cnt_reg[3]_0\(7 downto 4) => \^gen_no_arbiter.m_mesg_i_reg[65]\(39 downto 36),
      \gen_axi.read_cnt_reg[3]_0\(3 downto 0) => \^gen_no_arbiter.m_mesg_i_reg[65]\(3 downto 0),
      \gen_axi.s_axi_bid_i_reg[3]_0\(3 downto 0) => \gen_axi.s_axi_bid_i\(3 downto 0),
      \gen_axi.s_axi_bid_i_reg[3]_1\(3 downto 0) => \^q\(3 downto 0),
      \gen_axi.s_axi_rid_i_reg[3]_0\(3 downto 0) => \gen_axi.s_axi_rid_i\(3 downto 0),
      \gen_axi.s_axi_rlast_i\ => \gen_axi.s_axi_rlast_i\,
      \gen_axi.s_axi_rlast_i_reg_0\ => addr_arbiter_ar_n_24,
      \gen_axi.s_axi_wready_i_reg_0\(0) => aa_mi_awtarget_hot(3),
      \gen_axi.s_axi_wready_i_reg_1\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5\,
      \gen_axi.write_cs01_out\ => \gen_axi.write_cs01_out\,
      \gen_axi.write_cs0__0\ => \gen_axi.write_cs0__0\,
      m_ready_d(0) => m_ready_d_8(1),
      mi_arready_3 => mi_arready_3,
      mi_awready_3 => mi_awready_3,
      mi_awvalid_en => mi_awvalid_en,
      mi_bready_3 => mi_bready_3,
      mi_rready_3 => mi_rready_3,
      p_18_in => p_18_in,
      p_19_in => p_19_in,
      p_25_in => p_25_in
    );
\gen_master_slots[0].r_issuing_cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_issuing_cnt(1),
      I1 => r_issuing_cnt(0),
      O => \gen_master_slots[0].r_issuing_cnt[0]_i_3_n_0\
    );
\gen_master_slots[0].r_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_ar_n_5,
      Q => r_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[0].reg_slice_mi_n_6\,
      Q => r_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].r_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[0].reg_slice_mi_n_4\,
      Q => r_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[0].reg_slice_mi\: entity work.axi_bus_axi_register_slice_v2_1_20_axi_register_slice
     port map (
      D(5 downto 2) => m_axi_bid(3 downto 0),
      D(1 downto 0) => m_axi_bresp(1 downto 0),
      E(0) => \r.r_pipe/p_1_in_3\,
      Q(0) => \gen_multi_thread.arbiter_resp_inst/chosen_6\(0),
      aclk => aclk,
      \gen_master_slots[0].r_issuing_cnt_reg[2]\ => \gen_master_slots[0].reg_slice_mi_n_4\,
      \gen_master_slots[0].r_issuing_cnt_reg[2]_0\ => \gen_master_slots[0].reg_slice_mi_n_6\,
      \gen_no_arbiter.m_valid_i_i_3__0\ => addr_arbiter_ar_n_15,
      \gen_no_arbiter.m_valid_i_reg\ => \gen_master_slots[2].reg_slice_mi_n_9\,
      \gen_no_arbiter.m_valid_i_reg_0\ => \gen_master_slots[1].reg_slice_mi_n_9\,
      m_axi_bready(0) => m_axi_bready(0),
      m_axi_bvalid(0) => m_axi_bvalid(0),
      m_axi_rdata(31 downto 0) => m_axi_rdata(31 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast(0) => m_axi_rlast(0),
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_rvalid(0) => m_axi_rvalid(0),
      \m_payload_i_reg[38]\(38 downto 35) => st_mr_rid(3 downto 0),
      \m_payload_i_reg[38]\(34) => p_104_out,
      \m_payload_i_reg[38]\(33 downto 32) => st_mr_rmesg(1 downto 0),
      \m_payload_i_reg[38]\(31 downto 0) => st_mr_rmesg(34 downto 3),
      \m_payload_i_reg[5]\(5 downto 2) => st_mr_bid(3 downto 0),
      \m_payload_i_reg[5]\(1 downto 0) => st_mr_bmesg(1 downto 0),
      m_valid_i_reg => \gen_master_slots[3].reg_slice_mi_n_1\,
      match => match,
      mi_armaxissuing(0) => mi_armaxissuing(0),
      mi_awmaxissuing(0) => mi_awmaxissuing(0),
      p_102_out => p_102_out,
      p_108_out => p_108_out,
      p_71_in => p_71_in,
      \r_cmd_pop_0__1\ => \r_cmd_pop_0__1\,
      \r_cmd_pop_3__1\ => \r_cmd_pop_3__1\,
      r_issuing_cnt(3) => r_issuing_cnt(24),
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(2 downto 0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg => M_AXI_RREADY(0),
      s_ready_i_reg_0 => \gen_master_slots[2].reg_slice_mi_n_2\,
      s_ready_i_reg_1 => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_6\,
      s_ready_i_reg_2(0) => \gen_multi_thread.arbiter_resp_inst/chosen\(0),
      sel_4 => \gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4\,
      \valid_qual_i0__2\ => \valid_qual_i0__2\,
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\gen_master_slots[0].w_issuing_cnt[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_issuing_cnt(1),
      I1 => w_issuing_cnt(0),
      O => \gen_master_slots[0].w_issuing_cnt[0]_i_3_n_0\
    );
\gen_master_slots[0].w_issuing_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_4,
      Q => w_issuing_cnt(0),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_15\,
      Q => w_issuing_cnt(1),
      R => reset
    );
\gen_master_slots[0].w_issuing_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_13\,
      Q => w_issuing_cnt(2),
      R => reset
    );
\gen_master_slots[1].r_issuing_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_issuing_cnt(9),
      I1 => r_issuing_cnt(8),
      O => \gen_master_slots[1].r_issuing_cnt[8]_i_3_n_0\
    );
\gen_master_slots[1].r_issuing_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[1].reg_slice_mi_n_4\,
      Q => r_issuing_cnt(10),
      R => reset
    );
\gen_master_slots[1].r_issuing_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_ar_n_4,
      Q => r_issuing_cnt(8),
      R => reset
    );
\gen_master_slots[1].r_issuing_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[1].reg_slice_mi_n_6\,
      Q => r_issuing_cnt(9),
      R => reset
    );
\gen_master_slots[1].reg_slice_mi\: entity work.axi_bus_axi_register_slice_v2_1_20_axi_register_slice_1
     port map (
      D(5 downto 2) => m_axi_bid(7 downto 4),
      D(1 downto 0) => m_axi_bresp(3 downto 2),
      E(0) => \r.r_pipe/p_1_in_4\,
      Q(0) => \gen_multi_thread.arbiter_resp_inst/chosen_6\(1),
      aclk => aclk,
      \gen_master_slots[1].r_issuing_cnt_reg[10]\ => \gen_master_slots[1].reg_slice_mi_n_4\,
      \gen_master_slots[1].r_issuing_cnt_reg[10]_0\ => \gen_master_slots[1].reg_slice_mi_n_6\,
      \gen_master_slots[1].r_issuing_cnt_reg[10]_1\ => \gen_master_slots[1].reg_slice_mi_n_9\,
      \gen_no_arbiter.m_target_hot_i_reg[3]\(0) => mi_awmaxissuing(2),
      \gen_no_arbiter.m_target_hot_i_reg[3]_0\(0) => mi_armaxissuing(2),
      \gen_no_arbiter.m_valid_i_i_3__0\ => addr_arbiter_ar_n_13,
      m_axi_bready(0) => m_axi_bready(1),
      m_axi_bvalid(0) => m_axi_bvalid(1),
      m_axi_rdata(31 downto 0) => m_axi_rdata(63 downto 32),
      m_axi_rid(3 downto 0) => m_axi_rid(7 downto 4),
      m_axi_rlast(0) => m_axi_rlast(1),
      m_axi_rresp(1 downto 0) => m_axi_rresp(3 downto 2),
      m_axi_rvalid(0) => m_axi_rvalid(1),
      \m_payload_i_reg[38]\(38 downto 35) => st_mr_rid(7 downto 4),
      \m_payload_i_reg[38]\(34) => p_83_out,
      \m_payload_i_reg[38]\(33 downto 32) => st_mr_rmesg(36 downto 35),
      \m_payload_i_reg[38]\(31 downto 0) => st_mr_rmesg(69 downto 38),
      \m_payload_i_reg[5]\(5 downto 2) => st_mr_bid(7 downto 4),
      \m_payload_i_reg[5]\(1 downto 0) => st_mr_bmesg(4 downto 3),
      m_valid_i_reg => \gen_master_slots[3].reg_slice_mi_n_1\,
      match => match_2,
      match_1 => match,
      p_53_in => p_53_in,
      p_81_out => p_81_out,
      p_87_out => p_87_out,
      \r_cmd_pop_1__1\ => \r_cmd_pop_1__1\,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(10 downto 8),
      \s_axi_araddr[21]\ => \gen_master_slots[1].reg_slice_mi_n_8\,
      \s_axi_awaddr[21]\ => \gen_master_slots[1].reg_slice_mi_n_7\,
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg => M_AXI_RREADY(1),
      s_ready_i_reg_0 => \gen_master_slots[2].reg_slice_mi_n_2\,
      s_ready_i_reg_1 => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\,
      s_ready_i_reg_2(0) => \gen_multi_thread.arbiter_resp_inst/chosen\(1),
      sel_4 => \gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4\,
      target_mi_enc(1 downto 0) => target_mi_enc_1(1 downto 0),
      target_mi_enc_0(1 downto 0) => target_mi_enc(1 downto 0),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(10 downto 8)
    );
\gen_master_slots[1].w_issuing_cnt[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_issuing_cnt(9),
      I1 => w_issuing_cnt(8),
      O => \gen_master_slots[1].w_issuing_cnt[8]_i_3_n_0\
    );
\gen_master_slots[1].w_issuing_cnt_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_10\,
      Q => w_issuing_cnt(10),
      R => reset
    );
\gen_master_slots[1].w_issuing_cnt_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_3,
      Q => w_issuing_cnt(8),
      R => reset
    );
\gen_master_slots[1].w_issuing_cnt_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_12\,
      Q => w_issuing_cnt(9),
      R => reset
    );
\gen_master_slots[2].r_issuing_cnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => r_issuing_cnt(17),
      I1 => r_issuing_cnt(16),
      O => \gen_master_slots[2].r_issuing_cnt[16]_i_3_n_0\
    );
\gen_master_slots[2].r_issuing_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_ar_n_3,
      Q => r_issuing_cnt(16),
      R => reset
    );
\gen_master_slots[2].r_issuing_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[2].reg_slice_mi_n_7\,
      Q => r_issuing_cnt(17),
      R => reset
    );
\gen_master_slots[2].r_issuing_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_master_slots[2].reg_slice_mi_n_5\,
      Q => r_issuing_cnt(18),
      R => reset
    );
\gen_master_slots[2].reg_slice_mi\: entity work.axi_bus_axi_register_slice_v2_1_20_axi_register_slice_2
     port map (
      D(5 downto 2) => m_axi_bid(11 downto 8),
      D(1 downto 0) => m_axi_bresp(5 downto 4),
      E(0) => \r.r_pipe/p_1_in_5\,
      Q(0) => \gen_multi_thread.arbiter_resp_inst/chosen\(2),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]\ => \gen_master_slots[2].reg_slice_mi_n_2\,
      \aresetn_d_reg[0]_0\ => \gen_master_slots[2].reg_slice_mi_n_50\,
      \gen_master_slots[2].r_issuing_cnt_reg[17]\(0) => mi_armaxissuing(2),
      \gen_master_slots[2].r_issuing_cnt_reg[18]\ => \gen_master_slots[2].reg_slice_mi_n_5\,
      \gen_master_slots[2].r_issuing_cnt_reg[18]_0\ => \gen_master_slots[2].reg_slice_mi_n_7\,
      \gen_master_slots[2].r_issuing_cnt_reg[18]_1\ => \gen_master_slots[2].reg_slice_mi_n_9\,
      \gen_master_slots[2].w_issuing_cnt_reg[17]\(0) => mi_awmaxissuing(2),
      \gen_no_arbiter.m_valid_i_i_3__0\ => addr_arbiter_ar_n_14,
      m_axi_bready(0) => m_axi_bready(2),
      m_axi_bvalid(0) => m_axi_bvalid(2),
      m_axi_rdata(31 downto 0) => m_axi_rdata(95 downto 64),
      m_axi_rid(3 downto 0) => m_axi_rid(11 downto 8),
      m_axi_rlast(0) => m_axi_rlast(2),
      m_axi_rresp(1 downto 0) => m_axi_rresp(5 downto 4),
      m_axi_rvalid(0) => m_axi_rvalid(2),
      \m_payload_i_reg[38]\(38 downto 35) => st_mr_rid(11 downto 8),
      \m_payload_i_reg[38]\(34) => p_62_out,
      \m_payload_i_reg[38]\(33 downto 32) => st_mr_rmesg(71 downto 70),
      \m_payload_i_reg[38]\(31 downto 0) => st_mr_rmesg(104 downto 73),
      \m_payload_i_reg[5]\(5 downto 2) => st_mr_bid(11 downto 8),
      \m_payload_i_reg[5]\(1 downto 0) => st_mr_bmesg(7 downto 6),
      m_valid_i_reg => \gen_master_slots[3].reg_slice_mi_n_1\,
      m_valid_i_reg_0(0) => \gen_multi_thread.arbiter_resp_inst/chosen_6\(2),
      p_35_in => p_35_in,
      p_60_out => p_60_out,
      p_66_out => p_66_out,
      \r_cmd_pop_2__1\ => \r_cmd_pop_2__1\,
      r_issuing_cnt(2 downto 0) => r_issuing_cnt(18 downto 16),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg => M_AXI_RREADY(2),
      s_ready_i_reg_0 => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_0\,
      sel_4 => \gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4\,
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(18 downto 16)
    );
\gen_master_slots[2].w_issuing_cnt[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => w_issuing_cnt(17),
      I1 => w_issuing_cnt(16),
      O => \gen_master_slots[2].w_issuing_cnt[16]_i_3_n_0\
    );
\gen_master_slots[2].w_issuing_cnt_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_2,
      Q => w_issuing_cnt(16),
      R => reset
    );
\gen_master_slots[2].w_issuing_cnt_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_9\,
      Q => w_issuing_cnt(17),
      R => reset
    );
\gen_master_slots[2].w_issuing_cnt_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_7\,
      Q => w_issuing_cnt(18),
      R => reset
    );
\gen_master_slots[3].r_issuing_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_ar_n_84,
      Q => r_issuing_cnt(24),
      R => reset
    );
\gen_master_slots[3].reg_slice_mi\: entity work.axi_bus_axi_register_slice_v2_1_20_axi_register_slice_3
     port map (
      D(0) => st_aa_artarget_hot(0),
      E(0) => \r.r_pipe/p_1_in\,
      Q(0) => \gen_multi_thread.arbiter_resp_inst/chosen_6\(3),
      aclk => aclk,
      \aresetn_d_reg[1]\ => \gen_master_slots[3].reg_slice_mi_n_1\,
      \aresetn_d_reg[1]_0\ => \gen_master_slots[3].reg_slice_mi_n_5\,
      \aresetn_d_reg[1]_1\ => \gen_master_slots[2].reg_slice_mi_n_50\,
      \gen_axi.s_axi_rlast_i\ => \gen_axi.s_axi_rlast_i\,
      \gen_master_slots[3].r_issuing_cnt_reg[24]\ => \gen_master_slots[3].reg_slice_mi_n_6\,
      \m_payload_i_reg[38]\(4 downto 1) => st_mr_rid(15 downto 12),
      \m_payload_i_reg[38]\(0) => p_39_out,
      \m_payload_i_reg[5]\(3 downto 0) => st_mr_bid(15 downto 12),
      \m_payload_i_reg[5]_0\(3 downto 0) => \gen_axi.s_axi_bid_i\(3 downto 0),
      m_valid_i_reg(0) => \gen_multi_thread.arbiter_resp_inst/chosen\(3),
      match => match,
      mi_armaxissuing(0) => mi_armaxissuing(0),
      mi_bready_3 => mi_bready_3,
      mi_rready_3 => mi_rready_3,
      p_19_in => p_19_in,
      p_25_in => p_25_in,
      p_37_out => p_37_out,
      p_43_out => p_43_out,
      \r_cmd_pop_3__1\ => \r_cmd_pop_3__1\,
      r_issuing_cnt(0) => r_issuing_cnt(24),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_ready_i_reg => \gen_master_slots[2].reg_slice_mi_n_2\,
      \skid_buffer_reg[38]\(3 downto 0) => \gen_axi.s_axi_rid_i\(3 downto 0)
    );
\gen_master_slots[3].w_issuing_cnt_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => addr_arbiter_aw_n_28,
      Q => w_issuing_cnt(24),
      R => reset
    );
\gen_slave_slots[0].gen_si_read.si_transactor_ar\: entity work.axi_bus_axi_crossbar_v2_1_21_si_transactor
     port map (
      D(1) => addr_arbiter_ar_n_82,
      D(0) => addr_arbiter_ar_n_83,
      E(0) => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_0\,
      Q(3 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen\(3 downto 0),
      SR(0) => reset,
      aa_mi_arvalid => aa_mi_arvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \chosen_reg[0]\(0) => \r.r_pipe/p_1_in_3\,
      \chosen_reg[1]\(0) => \r.r_pipe/p_1_in_4\,
      \chosen_reg[1]_0\ => \chosen_reg[1]\,
      \chosen_reg[2]\(0) => \r.r_pipe/p_1_in_5\,
      \chosen_reg[3]\(0) => \r.r_pipe/p_1_in\,
      \gen_multi_thread.active_id_reg[3]_0\(3 downto 0) => \gen_no_arbiter.m_mesg_i_reg[65]_0\(3 downto 0),
      \gen_multi_thread.active_id_reg[4]_0\ => \^gen_no_arbiter.s_ready_i_reg[0]\,
      \gen_no_arbiter.m_target_hot_i_reg[3]\ => \gen_master_slots[3].reg_slice_mi_n_6\,
      \gen_no_arbiter.m_target_hot_i_reg[3]_0\ => \gen_master_slots[1].reg_slice_mi_n_8\,
      \gen_no_arbiter.m_valid_i_reg\ => \gen_slave_slots[0].gen_si_read.si_transactor_ar_n_49\,
      \gen_no_arbiter.m_valid_i_reg_0\ => addr_arbiter_ar_n_16,
      \gen_no_arbiter.m_valid_i_reg_1\ => addr_arbiter_ar_n_17,
      p_102_out => p_102_out,
      p_37_out => p_37_out,
      p_60_out => p_60_out,
      p_81_out => p_81_out,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast(0) => s_axi_rlast(0),
      \s_axi_rlast[0]\(0) => p_39_out,
      \s_axi_rlast[0]_0\(0) => p_104_out,
      \s_axi_rlast[0]_1\(0) => p_83_out,
      \s_axi_rlast[0]_2\(0) => p_62_out,
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      st_mr_rid(15 downto 0) => st_mr_rid(15 downto 0),
      st_mr_rmesg(101 downto 70) => st_mr_rmesg(104 downto 73),
      st_mr_rmesg(69 downto 36) => st_mr_rmesg(71 downto 38),
      st_mr_rmesg(35 downto 2) => st_mr_rmesg(36 downto 3),
      st_mr_rmesg(1 downto 0) => st_mr_rmesg(1 downto 0),
      \valid_qual_i0__2\ => \valid_qual_i0__2\
    );
\gen_slave_slots[0].gen_si_write.si_transactor_aw\: entity work.\axi_bus_axi_crossbar_v2_1_21_si_transactor__parameterized0\
     port map (
      D(0) => st_aa_awtarget_hot(0),
      E(0) => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_16\,
      Q(3 downto 0) => \gen_multi_thread.arbiter_resp_inst/chosen_6\(3 downto 0),
      SR(0) => reset,
      aa_sa_awready => aa_sa_awready,
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      \chosen_reg[0]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_6\,
      \chosen_reg[0]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_14\,
      \chosen_reg[1]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_5\,
      \chosen_reg[1]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_11\,
      \chosen_reg[2]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_0\,
      \chosen_reg[2]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_8\,
      \gen_master_slots[0].w_issuing_cnt_reg[0]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_13\,
      \gen_master_slots[0].w_issuing_cnt_reg[0]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_15\,
      \gen_master_slots[1].w_issuing_cnt_reg[10]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_10\,
      \gen_master_slots[1].w_issuing_cnt_reg[10]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_12\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_7\,
      \gen_master_slots[2].w_issuing_cnt_reg[16]_0\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_9\,
      \gen_multi_thread.active_id_reg[3]_0\(3 downto 0) => D(3 downto 0),
      \gen_multi_thread.active_id_reg[4]_0\ => \^s_ready_i_reg\,
      \gen_no_arbiter.m_target_hot_i_reg[3]\ => \gen_master_slots[1].reg_slice_mi_n_7\,
      \gen_no_arbiter.m_valid_i_i_3\ => addr_arbiter_aw_n_10,
      \gen_no_arbiter.m_valid_i_i_3_0\ => addr_arbiter_aw_n_11,
      \gen_no_arbiter.m_valid_i_i_3_1\ => addr_arbiter_aw_n_12,
      \gen_no_arbiter.m_valid_i_reg\ => \gen_slave_slots[0].gen_si_write.si_transactor_aw_n_24\,
      m_axi_bvalid(2 downto 0) => m_axi_bvalid(2 downto 0),
      \m_payload_i_reg[2]\ => \m_payload_i_reg[2]\,
      match => match_2,
      mi_awmaxissuing(0) => mi_awmaxissuing(0),
      p_108_out => p_108_out,
      p_43_out => p_43_out,
      p_44_in => p_44_in,
      p_62_in => p_62_in,
      p_66_out => p_66_out,
      p_79_in => p_79_in,
      p_87_out => p_87_out,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bid(2 downto 0) => s_axi_bid(2 downto 0),
      \s_axi_bid[3]\(5 downto 2) => st_mr_bid(11 downto 8),
      \s_axi_bid[3]\(1 downto 0) => st_mr_bmesg(7 downto 6),
      \s_axi_bid[3]_0\(5 downto 2) => st_mr_bid(3 downto 0),
      \s_axi_bid[3]_0\(1 downto 0) => st_mr_bmesg(1 downto 0),
      \s_axi_bid[3]_1\(5 downto 2) => st_mr_bid(7 downto 4),
      \s_axi_bid[3]_1\(1 downto 0) => st_mr_bmesg(4 downto 3),
      \s_axi_bid[3]_2\(3 downto 0) => st_mr_bid(15 downto 12),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      \s_ready_i0__1\(0) => \s_ready_i0__1_7\(0),
      s_ready_i_reg => \gen_master_slots[3].reg_slice_mi_n_5\,
      sel_4 => \gen_addr_decoder.addr_decoder_inst/gen_target[2].gen_region[0].gen_comparator_static.gen_addr_range.addr_decode_comparator/sel_4_0\,
      st_aa_awtarget_enc(1 downto 0) => st_aa_awtarget_enc(1 downto 0),
      w_issuing_cnt(9) => w_issuing_cnt(24),
      w_issuing_cnt(8 downto 6) => w_issuing_cnt(18 downto 16),
      w_issuing_cnt(5 downto 3) => w_issuing_cnt(10 downto 8),
      w_issuing_cnt(2 downto 0) => w_issuing_cnt(2 downto 0)
    );
\gen_slave_slots[0].gen_si_write.splitter_aw_si\: entity work.axi_bus_axi_crossbar_v2_1_21_splitter
     port map (
      aclk => aclk,
      aresetn_d => aresetn_d,
      \m_ready_d_reg[1]_0\(0) => m_ready_d(1),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      \s_ready_i0__1\(0) => \s_ready_i0__1_7\(0),
      s_ready_i_reg => \^s_ready_i_reg\,
      ss_aa_awready => ss_aa_awready,
      ss_wr_awready => ss_wr_awready,
      ss_wr_awvalid => ss_wr_awvalid
    );
\gen_slave_slots[0].gen_si_write.wdata_router_w\: entity work.axi_bus_axi_crossbar_v2_1_21_wdata_router
     port map (
      \FSM_onehot_gen_axi.write_cs_reg[1]\ => \gen_slave_slots[0].gen_si_write.wdata_router_w_n_5\,
      \FSM_onehot_state_reg[1]\(0) => m_ready_d(1),
      SR(0) => reset,
      aclk => aclk,
      \gen_axi.s_axi_wready_i_reg\ => \gen_decerr_slave.decerr_slave_inst_n_6\,
      \gen_axi.write_cs0__0\ => \gen_axi.write_cs0__0\,
      m_axi_wready(2 downto 0) => m_axi_wready(2 downto 0),
      m_axi_wvalid(2 downto 0) => m_axi_wvalid(2 downto 0),
      p_18_in => p_18_in,
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      ss_wr_awready => ss_wr_awready,
      ss_wr_awvalid => ss_wr_awvalid,
      st_aa_awtarget_enc(1 downto 0) => st_aa_awtarget_enc(1 downto 0)
    );
splitter_aw_mi: entity work.axi_bus_axi_crossbar_v2_1_21_splitter_4
     port map (
      aa_sa_awvalid => aa_sa_awvalid,
      aclk => aclk,
      aresetn_d => aresetn_d,
      m_ready_d(1 downto 0) => m_ready_d_8(1 downto 0),
      \mi_awready_mux__2\ => \mi_awready_mux__2\,
      \s_ready_i0__1\(0) => \s_ready_i0__1\(0),
      \sa_wm_awready_mux__2\ => \sa_wm_awready_mux__2\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus_axi_crossbar_v2_1_21_axi_crossbar is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awregion : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wuser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arregion : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_ruser : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 4;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000101000000000000000000000000000001010000000000000000000000000000010100";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "192'b000000000000000000000000000000000001111111100000000000000000000000000000000000000000000000000000000111111101000000000000000000000000000000000000000000000000000000011111110000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : string;
  attribute C_M_AXI_READ_CONNECTIVITY of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001";
  attribute C_M_AXI_READ_ISSUING : string;
  attribute C_M_AXI_READ_ISSUING of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100";
  attribute C_M_AXI_SECURE : string;
  attribute C_M_AXI_SECURE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_WRITE_CONNECTIVITY : string;
  attribute C_M_AXI_WRITE_CONNECTIVITY of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001";
  attribute C_M_AXI_WRITE_ISSUING : string;
  attribute C_M_AXI_WRITE_ISSUING of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100";
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 3;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute C_S_AXI_ARB_PRIORITY : integer;
  attribute C_S_AXI_ARB_PRIORITY of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute C_S_AXI_BASE_ID : integer;
  attribute C_S_AXI_BASE_ID of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute C_S_AXI_READ_ACCEPTANCE : integer;
  attribute C_S_AXI_READ_ACCEPTANCE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 2;
  attribute C_S_AXI_SINGLE_THREAD : integer;
  attribute C_S_AXI_SINGLE_THREAD of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute C_S_AXI_THREAD_ID_WIDTH : integer;
  attribute C_S_AXI_THREAD_ID_WIDTH of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 4;
  attribute C_S_AXI_WRITE_ACCEPTANCE : integer;
  attribute C_S_AXI_WRITE_ACCEPTANCE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 2;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "yes";
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "axi_crossbar_v2_1_21_axi_crossbar";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 4;
  attribute P_LOCK : integer;
  attribute P_LOCK of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 2;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "3'b111";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "3'b111";
  attribute P_ONES : string;
  attribute P_ONES of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "64'b0000000000000000000000000000000000000000000000000000000000001111";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "1'b1";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar : entity is "1'b1";
end axi_bus_axi_crossbar_v2_1_21_axi_crossbar;

architecture STRUCTURE of axi_bus_axi_crossbar_v2_1_21_axi_crossbar is
  signal \<const0>\ : STD_LOGIC;
  signal \^m_axi_araddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_arburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_arcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_arid\ : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal \^m_axi_arlen\ : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal \^m_axi_arlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_arprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_arqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_arsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_awaddr\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^m_axi_awburst\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \^m_axi_awcache\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_awid\ : STD_LOGIC_VECTOR ( 11 downto 8 );
  signal \^m_axi_awlen\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_awlock\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^m_axi_awprot\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^m_axi_awqos\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_awsize\ : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s_axi_wid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  \^s_axi_wdata\(31 downto 0) <= s_axi_wdata(31 downto 0);
  \^s_axi_wid\(3 downto 0) <= s_axi_wid(3 downto 0);
  \^s_axi_wlast\(0) <= s_axi_wlast(0);
  \^s_axi_wstrb\(3 downto 0) <= s_axi_wstrb(3 downto 0);
  m_axi_araddr(95 downto 64) <= \^m_axi_araddr\(31 downto 0);
  m_axi_araddr(63 downto 32) <= \^m_axi_araddr\(31 downto 0);
  m_axi_araddr(31 downto 0) <= \^m_axi_araddr\(31 downto 0);
  m_axi_arburst(5 downto 4) <= \^m_axi_arburst\(1 downto 0);
  m_axi_arburst(3 downto 2) <= \^m_axi_arburst\(1 downto 0);
  m_axi_arburst(1 downto 0) <= \^m_axi_arburst\(1 downto 0);
  m_axi_arcache(11 downto 8) <= \^m_axi_arcache\(3 downto 0);
  m_axi_arcache(7 downto 4) <= \^m_axi_arcache\(3 downto 0);
  m_axi_arcache(3 downto 0) <= \^m_axi_arcache\(3 downto 0);
  m_axi_arid(11 downto 8) <= \^m_axi_arid\(11 downto 8);
  m_axi_arid(7 downto 4) <= \^m_axi_arid\(11 downto 8);
  m_axi_arid(3 downto 0) <= \^m_axi_arid\(11 downto 8);
  m_axi_arlen(11 downto 8) <= \^m_axi_arlen\(11 downto 8);
  m_axi_arlen(7 downto 4) <= \^m_axi_arlen\(11 downto 8);
  m_axi_arlen(3 downto 0) <= \^m_axi_arlen\(11 downto 8);
  m_axi_arlock(5) <= \<const0>\;
  m_axi_arlock(4) <= \^m_axi_arlock\(0);
  m_axi_arlock(3) <= \<const0>\;
  m_axi_arlock(2) <= \^m_axi_arlock\(0);
  m_axi_arlock(1) <= \<const0>\;
  m_axi_arlock(0) <= \^m_axi_arlock\(0);
  m_axi_arprot(8 downto 6) <= \^m_axi_arprot\(2 downto 0);
  m_axi_arprot(5 downto 3) <= \^m_axi_arprot\(2 downto 0);
  m_axi_arprot(2 downto 0) <= \^m_axi_arprot\(2 downto 0);
  m_axi_arqos(11 downto 8) <= \^m_axi_arqos\(3 downto 0);
  m_axi_arqos(7 downto 4) <= \^m_axi_arqos\(3 downto 0);
  m_axi_arqos(3 downto 0) <= \^m_axi_arqos\(3 downto 0);
  m_axi_arregion(11) <= \<const0>\;
  m_axi_arregion(10) <= \<const0>\;
  m_axi_arregion(9) <= \<const0>\;
  m_axi_arregion(8) <= \<const0>\;
  m_axi_arregion(7) <= \<const0>\;
  m_axi_arregion(6) <= \<const0>\;
  m_axi_arregion(5) <= \<const0>\;
  m_axi_arregion(4) <= \<const0>\;
  m_axi_arregion(3) <= \<const0>\;
  m_axi_arregion(2) <= \<const0>\;
  m_axi_arregion(1) <= \<const0>\;
  m_axi_arregion(0) <= \<const0>\;
  m_axi_arsize(8 downto 6) <= \^m_axi_arsize\(2 downto 0);
  m_axi_arsize(5 downto 3) <= \^m_axi_arsize\(2 downto 0);
  m_axi_arsize(2 downto 0) <= \^m_axi_arsize\(2 downto 0);
  m_axi_aruser(2) <= \<const0>\;
  m_axi_aruser(1) <= \<const0>\;
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awaddr(95 downto 64) <= \^m_axi_awaddr\(31 downto 0);
  m_axi_awaddr(63 downto 32) <= \^m_axi_awaddr\(31 downto 0);
  m_axi_awaddr(31 downto 0) <= \^m_axi_awaddr\(31 downto 0);
  m_axi_awburst(5 downto 4) <= \^m_axi_awburst\(1 downto 0);
  m_axi_awburst(3 downto 2) <= \^m_axi_awburst\(1 downto 0);
  m_axi_awburst(1 downto 0) <= \^m_axi_awburst\(1 downto 0);
  m_axi_awcache(11 downto 8) <= \^m_axi_awcache\(3 downto 0);
  m_axi_awcache(7 downto 4) <= \^m_axi_awcache\(3 downto 0);
  m_axi_awcache(3 downto 0) <= \^m_axi_awcache\(3 downto 0);
  m_axi_awid(11 downto 8) <= \^m_axi_awid\(11 downto 8);
  m_axi_awid(7 downto 4) <= \^m_axi_awid\(11 downto 8);
  m_axi_awid(3 downto 0) <= \^m_axi_awid\(11 downto 8);
  m_axi_awlen(11 downto 8) <= \^m_axi_awlen\(3 downto 0);
  m_axi_awlen(7 downto 4) <= \^m_axi_awlen\(3 downto 0);
  m_axi_awlen(3 downto 0) <= \^m_axi_awlen\(3 downto 0);
  m_axi_awlock(5) <= \<const0>\;
  m_axi_awlock(4) <= \^m_axi_awlock\(0);
  m_axi_awlock(3) <= \<const0>\;
  m_axi_awlock(2) <= \^m_axi_awlock\(0);
  m_axi_awlock(1) <= \<const0>\;
  m_axi_awlock(0) <= \^m_axi_awlock\(0);
  m_axi_awprot(8 downto 6) <= \^m_axi_awprot\(2 downto 0);
  m_axi_awprot(5 downto 3) <= \^m_axi_awprot\(2 downto 0);
  m_axi_awprot(2 downto 0) <= \^m_axi_awprot\(2 downto 0);
  m_axi_awqos(11 downto 8) <= \^m_axi_awqos\(3 downto 0);
  m_axi_awqos(7 downto 4) <= \^m_axi_awqos\(3 downto 0);
  m_axi_awqos(3 downto 0) <= \^m_axi_awqos\(3 downto 0);
  m_axi_awregion(11) <= \<const0>\;
  m_axi_awregion(10) <= \<const0>\;
  m_axi_awregion(9) <= \<const0>\;
  m_axi_awregion(8) <= \<const0>\;
  m_axi_awregion(7) <= \<const0>\;
  m_axi_awregion(6) <= \<const0>\;
  m_axi_awregion(5) <= \<const0>\;
  m_axi_awregion(4) <= \<const0>\;
  m_axi_awregion(3) <= \<const0>\;
  m_axi_awregion(2) <= \<const0>\;
  m_axi_awregion(1) <= \<const0>\;
  m_axi_awregion(0) <= \<const0>\;
  m_axi_awsize(8 downto 6) <= \^m_axi_awsize\(2 downto 0);
  m_axi_awsize(5 downto 3) <= \^m_axi_awsize\(2 downto 0);
  m_axi_awsize(2 downto 0) <= \^m_axi_awsize\(2 downto 0);
  m_axi_awuser(2) <= \<const0>\;
  m_axi_awuser(1) <= \<const0>\;
  m_axi_awuser(0) <= \<const0>\;
  m_axi_wdata(95 downto 64) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wdata(63 downto 32) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wdata(31 downto 0) <= \^s_axi_wdata\(31 downto 0);
  m_axi_wid(11 downto 8) <= \^s_axi_wid\(3 downto 0);
  m_axi_wid(7 downto 4) <= \^s_axi_wid\(3 downto 0);
  m_axi_wid(3 downto 0) <= \^s_axi_wid\(3 downto 0);
  m_axi_wlast(2) <= \^s_axi_wlast\(0);
  m_axi_wlast(1) <= \^s_axi_wlast\(0);
  m_axi_wlast(0) <= \^s_axi_wlast\(0);
  m_axi_wstrb(11 downto 8) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wstrb(7 downto 4) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wstrb(3 downto 0) <= \^s_axi_wstrb\(3 downto 0);
  m_axi_wuser(2) <= \<const0>\;
  m_axi_wuser(1) <= \<const0>\;
  m_axi_wuser(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\gen_samd.crossbar_samd\: entity work.axi_bus_axi_crossbar_v2_1_21_crossbar
     port map (
      D(56 downto 53) => s_axi_awqos(3 downto 0),
      D(52 downto 49) => s_axi_awcache(3 downto 0),
      D(48 downto 47) => s_axi_awburst(1 downto 0),
      D(46 downto 44) => s_axi_awprot(2 downto 0),
      D(43) => s_axi_awlock(0),
      D(42 downto 40) => s_axi_awsize(2 downto 0),
      D(39 downto 36) => s_axi_awlen(3 downto 0),
      D(35 downto 4) => s_axi_awaddr(31 downto 0),
      D(3 downto 0) => s_axi_awid(3 downto 0),
      M_AXI_RREADY(2 downto 0) => m_axi_rready(2 downto 0),
      Q(56 downto 53) => \^m_axi_awqos\(3 downto 0),
      Q(52 downto 49) => \^m_axi_awcache\(3 downto 0),
      Q(48 downto 47) => \^m_axi_awburst\(1 downto 0),
      Q(46 downto 44) => \^m_axi_awprot\(2 downto 0),
      Q(43) => \^m_axi_awlock\(0),
      Q(42 downto 40) => \^m_axi_awsize\(2 downto 0),
      Q(39 downto 36) => \^m_axi_awlen\(3 downto 0),
      Q(35 downto 4) => \^m_axi_awaddr\(31 downto 0),
      Q(3 downto 0) => \^m_axi_awid\(11 downto 8),
      aclk => aclk,
      aresetn => aresetn,
      \chosen_reg[1]\ => s_axi_rvalid(0),
      \gen_no_arbiter.m_mesg_i_reg[65]\(56 downto 53) => \^m_axi_arqos\(3 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]\(52 downto 49) => \^m_axi_arcache\(3 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]\(48 downto 47) => \^m_axi_arburst\(1 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]\(46 downto 44) => \^m_axi_arprot\(2 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]\(43) => \^m_axi_arlock\(0),
      \gen_no_arbiter.m_mesg_i_reg[65]\(42 downto 40) => \^m_axi_arsize\(2 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]\(39 downto 36) => \^m_axi_arlen\(11 downto 8),
      \gen_no_arbiter.m_mesg_i_reg[65]\(35 downto 4) => \^m_axi_araddr\(31 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]\(3 downto 0) => \^m_axi_arid\(11 downto 8),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(56 downto 53) => s_axi_arqos(3 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(52 downto 49) => s_axi_arcache(3 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(48 downto 47) => s_axi_arburst(1 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(46 downto 44) => s_axi_arprot(2 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(43) => s_axi_arlock(0),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(42 downto 40) => s_axi_arsize(2 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(39 downto 36) => s_axi_arlen(3 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(35 downto 4) => s_axi_araddr(31 downto 0),
      \gen_no_arbiter.m_mesg_i_reg[65]_0\(3 downto 0) => s_axi_arid(3 downto 0),
      \gen_no_arbiter.s_ready_i_reg[0]\ => s_axi_arready(0),
      m_axi_arready(2 downto 0) => m_axi_arready(2 downto 0),
      m_axi_arvalid(2 downto 0) => m_axi_arvalid(2 downto 0),
      m_axi_awready(2 downto 0) => m_axi_awready(2 downto 0),
      m_axi_awvalid(2 downto 0) => m_axi_awvalid(2 downto 0),
      m_axi_bid(11 downto 0) => m_axi_bid(11 downto 0),
      m_axi_bready(2 downto 0) => m_axi_bready(2 downto 0),
      m_axi_bresp(5 downto 0) => m_axi_bresp(5 downto 0),
      m_axi_bvalid(2 downto 0) => m_axi_bvalid(2 downto 0),
      m_axi_rdata(95 downto 0) => m_axi_rdata(95 downto 0),
      m_axi_rid(11 downto 0) => m_axi_rid(11 downto 0),
      m_axi_rlast(2 downto 0) => m_axi_rlast(2 downto 0),
      m_axi_rresp(5 downto 0) => m_axi_rresp(5 downto 0),
      m_axi_rvalid(2 downto 0) => m_axi_rvalid(2 downto 0),
      m_axi_wready(2 downto 0) => m_axi_wready(2 downto 0),
      m_axi_wvalid(2 downto 0) => m_axi_wvalid(2 downto 0),
      \m_payload_i_reg[2]\ => s_axi_bid(0),
      s_axi_arvalid(0) => s_axi_arvalid(0),
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bid(2 downto 0) => s_axi_bid(3 downto 1),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast(0) => s_axi_rlast(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_wlast(0) => \^s_axi_wlast\(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wvalid(0) => s_axi_wvalid(0),
      s_ready_i_reg => s_axi_awready(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity axi_bus is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wlast : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bready : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arready : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rready : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_awvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_wlast : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_wready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_bvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_bready : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arid : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 8 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_arvalid : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arready : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 95 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_axi_rlast : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rvalid : in STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_rready : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of axi_bus : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of axi_bus : entity is "axi_bus,axi_crossbar_v2_1_21_axi_crossbar,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of axi_bus : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of axi_bus : entity is "axi_crossbar_v2_1_21_axi_crossbar,Vivado 2019.2";
end axi_bus;

architecture STRUCTURE of axi_bus is
  signal NLW_inst_m_axi_arregion_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_awregion_UNCONNECTED : STD_LOGIC_VECTOR ( 11 downto 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 2 downto 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ADDR_WIDTH : integer;
  attribute C_AXI_ADDR_WIDTH of inst : label is 32;
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 32;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 4;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 1;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_CONNECTIVITY_MODE : integer;
  attribute C_CONNECTIVITY_MODE of inst : label is 1;
  attribute C_DEBUG : integer;
  attribute C_DEBUG of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : string;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is "96'b000000000000000000000000000101000000000000000000000000000001010000000000000000000000000000010100";
  attribute C_M_AXI_BASE_ADDR : string;
  attribute C_M_AXI_BASE_ADDR of inst : label is "192'b000000000000000000000000000000000001111111100000000000000000000000000000000000000000000000000000000111111101000000000000000000000000000000000000000000000000000000011111110000000000000000000000";
  attribute C_M_AXI_READ_CONNECTIVITY : string;
  attribute C_M_AXI_READ_CONNECTIVITY of inst : label is "96'b000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001";
  attribute C_M_AXI_READ_ISSUING : string;
  attribute C_M_AXI_READ_ISSUING of inst : label is "96'b000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100";
  attribute C_M_AXI_SECURE : string;
  attribute C_M_AXI_SECURE of inst : label is "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_M_AXI_WRITE_CONNECTIVITY : string;
  attribute C_M_AXI_WRITE_CONNECTIVITY of inst : label is "96'b000000000000000000000000000000010000000000000000000000000000000100000000000000000000000000000001";
  attribute C_M_AXI_WRITE_ISSUING : string;
  attribute C_M_AXI_WRITE_ISSUING of inst : label is "96'b000000000000000000000000000001000000000000000000000000000000010000000000000000000000000000000100";
  attribute C_NUM_ADDR_RANGES : integer;
  attribute C_NUM_ADDR_RANGES of inst : label is 1;
  attribute C_NUM_MASTER_SLOTS : integer;
  attribute C_NUM_MASTER_SLOTS of inst : label is 3;
  attribute C_NUM_SLAVE_SLOTS : integer;
  attribute C_NUM_SLAVE_SLOTS of inst : label is 1;
  attribute C_R_REGISTER : integer;
  attribute C_R_REGISTER of inst : label is 0;
  attribute C_S_AXI_ARB_PRIORITY : integer;
  attribute C_S_AXI_ARB_PRIORITY of inst : label is 0;
  attribute C_S_AXI_BASE_ID : integer;
  attribute C_S_AXI_BASE_ID of inst : label is 0;
  attribute C_S_AXI_READ_ACCEPTANCE : integer;
  attribute C_S_AXI_READ_ACCEPTANCE of inst : label is 2;
  attribute C_S_AXI_SINGLE_THREAD : integer;
  attribute C_S_AXI_SINGLE_THREAD of inst : label is 0;
  attribute C_S_AXI_THREAD_ID_WIDTH : integer;
  attribute C_S_AXI_THREAD_ID_WIDTH of inst : label is 4;
  attribute C_S_AXI_WRITE_ACCEPTANCE : integer;
  attribute C_S_AXI_WRITE_ACCEPTANCE of inst : label is 2;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_ADDR_DECODE : integer;
  attribute P_ADDR_DECODE of inst : label is 1;
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_AXILITE_SIZE : string;
  attribute P_AXILITE_SIZE of inst : label is "3'b010";
  attribute P_FAMILY : string;
  attribute P_FAMILY of inst : label is "artix7";
  attribute P_INCR : string;
  attribute P_INCR of inst : label is "2'b01";
  attribute P_LEN : integer;
  attribute P_LEN of inst : label is 4;
  attribute P_LOCK : integer;
  attribute P_LOCK of inst : label is 2;
  attribute P_M_AXI_ERR_MODE : string;
  attribute P_M_AXI_ERR_MODE of inst : label is "96'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute P_M_AXI_SUPPORTS_READ : string;
  attribute P_M_AXI_SUPPORTS_READ of inst : label is "3'b111";
  attribute P_M_AXI_SUPPORTS_WRITE : string;
  attribute P_M_AXI_SUPPORTS_WRITE of inst : label is "3'b111";
  attribute P_ONES : string;
  attribute P_ONES of inst : label is "65'b11111111111111111111111111111111111111111111111111111111111111111";
  attribute P_RANGE_CHECK : integer;
  attribute P_RANGE_CHECK of inst : label is 1;
  attribute P_S_AXI_BASE_ID : string;
  attribute P_S_AXI_BASE_ID of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000000000";
  attribute P_S_AXI_HIGH_ID : string;
  attribute P_S_AXI_HIGH_ID of inst : label is "64'b0000000000000000000000000000000000000000000000000000000000001111";
  attribute P_S_AXI_SUPPORTS_READ : string;
  attribute P_S_AXI_SUPPORTS_READ of inst : label is "1'b1";
  attribute P_S_AXI_SUPPORTS_WRITE : string;
  attribute P_S_AXI_SUPPORTS_WRITE of inst : label is "1'b1";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLKIF CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLKIF, FREQ_HZ 10000000, PHASE 0.000, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RSTIF RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RSTIF, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI ARADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI ARADDR [31:0] [95:64]";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI ARBURST [1:0] [5:4]";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI ARCACHE [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARID [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARID [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI ARID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLEN [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLEN [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI ARLEN [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARLOCK [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI ARLOCK [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI ARLOCK [1:0] [5:4]";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI ARPROT [2:0] [8:6]";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI ARQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI ARQOS [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI ARREADY [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI ARSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI ARSIZE [2:0] [8:6]";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI ARVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI ARVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI ARVALID [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWADDR [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI AWADDR [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI AWADDR [31:0] [95:64]";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWBURST [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWBURST [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI AWBURST [1:0] [5:4]";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWCACHE [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWCACHE [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI AWCACHE [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWID [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWID [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI AWID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLEN [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLEN [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI AWLEN [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWLOCK [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI AWLOCK [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI AWLOCK [1:0] [5:4]";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWPROT [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWPROT [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI AWPROT [2:0] [8:6]";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWQOS [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI AWQOS [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI AWQOS [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI AWREADY [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWSIZE [2:0] [2:0], xilinx.com:interface:aximm:1.0 M01_AXI AWSIZE [2:0] [5:3], xilinx.com:interface:aximm:1.0 M02_AXI AWSIZE [2:0] [8:6]";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI AWVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI AWVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI AWVALID [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BID [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI BID [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI BID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI BREADY [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI BRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI BRESP [1:0] [5:4]";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI BVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI BVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI BVALID [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI RDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI RDATA [31:0] [95:64]";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RID [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI RID [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI RID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RLAST [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RREADY [0:0] [2:2]";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M00_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME M01_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0, XIL_INTERFACENAME M02_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RRESP [1:0] [1:0], xilinx.com:interface:aximm:1.0 M01_AXI RRESP [1:0] [3:2], xilinx.com:interface:aximm:1.0 M02_AXI RRESP [1:0] [5:4]";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI RVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI RVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI RVALID [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WDATA [31:0] [31:0], xilinx.com:interface:aximm:1.0 M01_AXI WDATA [31:0] [63:32], xilinx.com:interface:aximm:1.0 M02_AXI WDATA [31:0] [95:64]";
  attribute X_INTERFACE_INFO of m_axi_wid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WID [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WID [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI WID [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WLAST [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WLAST [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WLAST [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WREADY [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WREADY [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WREADY [0:0] [2:2]";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WSTRB [3:0] [3:0], xilinx.com:interface:aximm:1.0 M01_AXI WSTRB [3:0] [7:4], xilinx.com:interface:aximm:1.0 M02_AXI WSTRB [3:0] [11:8]";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M00_AXI WVALID [0:0] [0:0], xilinx.com:interface:aximm:1.0 M01_AXI WVALID [0:0] [1:1], xilinx.com:interface:aximm:1.0 M02_AXI WVALID [0:0] [2:2]";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S00_AXI, DATA_WIDTH 32, PROTOCOL AXI3, FREQ_HZ 100000000, ID_WIDTH 4, ADDR_WIDTH 32, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 16, PHASE 0.000, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S00_AXI WVALID";
begin
inst: entity work.axi_bus_axi_crossbar_v2_1_21_axi_crossbar
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(95 downto 0) => m_axi_araddr(95 downto 0),
      m_axi_arburst(5 downto 0) => m_axi_arburst(5 downto 0),
      m_axi_arcache(11 downto 0) => m_axi_arcache(11 downto 0),
      m_axi_arid(11 downto 0) => m_axi_arid(11 downto 0),
      m_axi_arlen(11 downto 0) => m_axi_arlen(11 downto 0),
      m_axi_arlock(5 downto 0) => m_axi_arlock(5 downto 0),
      m_axi_arprot(8 downto 0) => m_axi_arprot(8 downto 0),
      m_axi_arqos(11 downto 0) => m_axi_arqos(11 downto 0),
      m_axi_arready(2 downto 0) => m_axi_arready(2 downto 0),
      m_axi_arregion(11 downto 0) => NLW_inst_m_axi_arregion_UNCONNECTED(11 downto 0),
      m_axi_arsize(8 downto 0) => m_axi_arsize(8 downto 0),
      m_axi_aruser(2 downto 0) => NLW_inst_m_axi_aruser_UNCONNECTED(2 downto 0),
      m_axi_arvalid(2 downto 0) => m_axi_arvalid(2 downto 0),
      m_axi_awaddr(95 downto 0) => m_axi_awaddr(95 downto 0),
      m_axi_awburst(5 downto 0) => m_axi_awburst(5 downto 0),
      m_axi_awcache(11 downto 0) => m_axi_awcache(11 downto 0),
      m_axi_awid(11 downto 0) => m_axi_awid(11 downto 0),
      m_axi_awlen(11 downto 0) => m_axi_awlen(11 downto 0),
      m_axi_awlock(5 downto 0) => m_axi_awlock(5 downto 0),
      m_axi_awprot(8 downto 0) => m_axi_awprot(8 downto 0),
      m_axi_awqos(11 downto 0) => m_axi_awqos(11 downto 0),
      m_axi_awready(2 downto 0) => m_axi_awready(2 downto 0),
      m_axi_awregion(11 downto 0) => NLW_inst_m_axi_awregion_UNCONNECTED(11 downto 0),
      m_axi_awsize(8 downto 0) => m_axi_awsize(8 downto 0),
      m_axi_awuser(2 downto 0) => NLW_inst_m_axi_awuser_UNCONNECTED(2 downto 0),
      m_axi_awvalid(2 downto 0) => m_axi_awvalid(2 downto 0),
      m_axi_bid(11 downto 0) => m_axi_bid(11 downto 0),
      m_axi_bready(2 downto 0) => m_axi_bready(2 downto 0),
      m_axi_bresp(5 downto 0) => m_axi_bresp(5 downto 0),
      m_axi_buser(2 downto 0) => B"000",
      m_axi_bvalid(2 downto 0) => m_axi_bvalid(2 downto 0),
      m_axi_rdata(95 downto 0) => m_axi_rdata(95 downto 0),
      m_axi_rid(11 downto 0) => m_axi_rid(11 downto 0),
      m_axi_rlast(2 downto 0) => m_axi_rlast(2 downto 0),
      m_axi_rready(2 downto 0) => m_axi_rready(2 downto 0),
      m_axi_rresp(5 downto 0) => m_axi_rresp(5 downto 0),
      m_axi_ruser(2 downto 0) => B"000",
      m_axi_rvalid(2 downto 0) => m_axi_rvalid(2 downto 0),
      m_axi_wdata(95 downto 0) => m_axi_wdata(95 downto 0),
      m_axi_wid(11 downto 0) => m_axi_wid(11 downto 0),
      m_axi_wlast(2 downto 0) => m_axi_wlast(2 downto 0),
      m_axi_wready(2 downto 0) => m_axi_wready(2 downto 0),
      m_axi_wstrb(11 downto 0) => m_axi_wstrb(11 downto 0),
      m_axi_wuser(2 downto 0) => NLW_inst_m_axi_wuser_UNCONNECTED(2 downto 0),
      m_axi_wvalid(2 downto 0) => m_axi_wvalid(2 downto 0),
      s_axi_araddr(31 downto 0) => s_axi_araddr(31 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(3 downto 0) => s_axi_arlen(3 downto 0),
      s_axi_arlock(1 downto 0) => s_axi_arlock(1 downto 0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready(0) => s_axi_arready(0),
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid(0) => s_axi_arvalid(0),
      s_axi_awaddr(31 downto 0) => s_axi_awaddr(31 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(3 downto 0) => s_axi_awlen(3 downto 0),
      s_axi_awlock(1 downto 0) => s_axi_awlock(1 downto 0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready(0) => s_axi_awready(0),
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid(0) => s_axi_awvalid(0),
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready(0) => s_axi_bready(0),
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid(0) => s_axi_bvalid(0),
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast(0) => s_axi_rlast(0),
      s_axi_rready(0) => s_axi_rready(0),
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid(0) => s_axi_rvalid(0),
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wid(3 downto 0) => s_axi_wid(3 downto 0),
      s_axi_wlast(0) => s_axi_wlast(0),
      s_axi_wready(0) => s_axi_wready(0),
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid(0) => s_axi_wvalid(0)
    );
end STRUCTURE;
