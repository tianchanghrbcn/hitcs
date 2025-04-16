// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (win64) Build 2708876 Wed Nov  6 21:40:23 MST 2019
// Date        : Wed Aug 21 00:40:18 2024
// Host        : ywy_c_asm_PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/ywy_c/Documents/coding/hitcoa_at2024/lab5/lab5.srcs/sources_1/ip/cpu_ans_rom/cpu_ans_rom_sim_netlist.v
// Design      : cpu_ans_rom
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a200tfbg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "cpu_ans_rom,dist_mem_gen_v8_0_13,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "dist_mem_gen_v8_0_13,Vivado 2019.2" *) 
(* NotValidForBitStream *)
module cpu_ans_rom
   (a,
    spo);
  input [5:0]a;
  output [63:0]spo;

  wire [5:0]a;
  wire [63:0]spo;
  wire [63:0]NLW_U0_dpo_UNCONNECTED;
  wire [63:0]NLW_U0_qdpo_UNCONNECTED;
  wire [63:0]NLW_U0_qspo_UNCONNECTED;

  (* C_FAMILY = "artix7" *) 
  (* C_HAS_D = "0" *) 
  (* C_HAS_DPO = "0" *) 
  (* C_HAS_DPRA = "0" *) 
  (* C_HAS_I_CE = "0" *) 
  (* C_HAS_QDPO = "0" *) 
  (* C_HAS_QDPO_CE = "0" *) 
  (* C_HAS_QDPO_CLK = "0" *) 
  (* C_HAS_QDPO_RST = "0" *) 
  (* C_HAS_QDPO_SRST = "0" *) 
  (* C_HAS_WE = "0" *) 
  (* C_MEM_TYPE = "0" *) 
  (* C_PIPELINE_STAGES = "0" *) 
  (* C_QCE_JOINED = "0" *) 
  (* C_QUALIFY_WE = "0" *) 
  (* C_REG_DPRA_INPUT = "0" *) 
  (* c_addr_width = "6" *) 
  (* c_default_data = "0" *) 
  (* c_depth = "64" *) 
  (* c_elaboration_dir = "./" *) 
  (* c_has_clk = "0" *) 
  (* c_has_qspo = "0" *) 
  (* c_has_qspo_ce = "0" *) 
  (* c_has_qspo_rst = "0" *) 
  (* c_has_qspo_srst = "0" *) 
  (* c_has_spo = "1" *) 
  (* c_mem_init_file = "cpu_ans_rom.mif" *) 
  (* c_parser_type = "1" *) 
  (* c_read_mif = "1" *) 
  (* c_reg_a_d_inputs = "0" *) 
  (* c_sync_enable = "1" *) 
  (* c_width = "64" *) 
  cpu_ans_rom_dist_mem_gen_v8_0_13 U0
       (.a(a),
        .clk(1'b0),
        .d({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dpo(NLW_U0_dpo_UNCONNECTED[63:0]),
        .dpra({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .i_ce(1'b1),
        .qdpo(NLW_U0_qdpo_UNCONNECTED[63:0]),
        .qdpo_ce(1'b1),
        .qdpo_clk(1'b0),
        .qdpo_rst(1'b0),
        .qdpo_srst(1'b0),
        .qspo(NLW_U0_qspo_UNCONNECTED[63:0]),
        .qspo_ce(1'b1),
        .qspo_rst(1'b0),
        .qspo_srst(1'b0),
        .spo(spo),
        .we(1'b0));
endmodule

(* C_ADDR_WIDTH = "6" *) (* C_DEFAULT_DATA = "0" *) (* C_DEPTH = "64" *) 
(* C_ELABORATION_DIR = "./" *) (* C_FAMILY = "artix7" *) (* C_HAS_CLK = "0" *) 
(* C_HAS_D = "0" *) (* C_HAS_DPO = "0" *) (* C_HAS_DPRA = "0" *) 
(* C_HAS_I_CE = "0" *) (* C_HAS_QDPO = "0" *) (* C_HAS_QDPO_CE = "0" *) 
(* C_HAS_QDPO_CLK = "0" *) (* C_HAS_QDPO_RST = "0" *) (* C_HAS_QDPO_SRST = "0" *) 
(* C_HAS_QSPO = "0" *) (* C_HAS_QSPO_CE = "0" *) (* C_HAS_QSPO_RST = "0" *) 
(* C_HAS_QSPO_SRST = "0" *) (* C_HAS_SPO = "1" *) (* C_HAS_WE = "0" *) 
(* C_MEM_INIT_FILE = "cpu_ans_rom.mif" *) (* C_MEM_TYPE = "0" *) (* C_PARSER_TYPE = "1" *) 
(* C_PIPELINE_STAGES = "0" *) (* C_QCE_JOINED = "0" *) (* C_QUALIFY_WE = "0" *) 
(* C_READ_MIF = "1" *) (* C_REG_A_D_INPUTS = "0" *) (* C_REG_DPRA_INPUT = "0" *) 
(* C_SYNC_ENABLE = "1" *) (* C_WIDTH = "64" *) (* ORIG_REF_NAME = "dist_mem_gen_v8_0_13" *) 
module cpu_ans_rom_dist_mem_gen_v8_0_13
   (a,
    d,
    dpra,
    clk,
    we,
    i_ce,
    qspo_ce,
    qdpo_ce,
    qdpo_clk,
    qspo_rst,
    qdpo_rst,
    qspo_srst,
    qdpo_srst,
    spo,
    dpo,
    qspo,
    qdpo);
  input [5:0]a;
  input [63:0]d;
  input [5:0]dpra;
  input clk;
  input we;
  input i_ce;
  input qspo_ce;
  input qdpo_ce;
  input qdpo_clk;
  input qspo_rst;
  input qdpo_rst;
  input qspo_srst;
  input qdpo_srst;
  output [63:0]spo;
  output [63:0]dpo;
  output [63:0]qspo;
  output [63:0]qdpo;

  wire \<const0> ;
  wire [5:0]a;
  wire [43:0]\^spo ;

  assign dpo[63] = \<const0> ;
  assign dpo[62] = \<const0> ;
  assign dpo[61] = \<const0> ;
  assign dpo[60] = \<const0> ;
  assign dpo[59] = \<const0> ;
  assign dpo[58] = \<const0> ;
  assign dpo[57] = \<const0> ;
  assign dpo[56] = \<const0> ;
  assign dpo[55] = \<const0> ;
  assign dpo[54] = \<const0> ;
  assign dpo[53] = \<const0> ;
  assign dpo[52] = \<const0> ;
  assign dpo[51] = \<const0> ;
  assign dpo[50] = \<const0> ;
  assign dpo[49] = \<const0> ;
  assign dpo[48] = \<const0> ;
  assign dpo[47] = \<const0> ;
  assign dpo[46] = \<const0> ;
  assign dpo[45] = \<const0> ;
  assign dpo[44] = \<const0> ;
  assign dpo[43] = \<const0> ;
  assign dpo[42] = \<const0> ;
  assign dpo[41] = \<const0> ;
  assign dpo[40] = \<const0> ;
  assign dpo[39] = \<const0> ;
  assign dpo[38] = \<const0> ;
  assign dpo[37] = \<const0> ;
  assign dpo[36] = \<const0> ;
  assign dpo[35] = \<const0> ;
  assign dpo[34] = \<const0> ;
  assign dpo[33] = \<const0> ;
  assign dpo[32] = \<const0> ;
  assign dpo[31] = \<const0> ;
  assign dpo[30] = \<const0> ;
  assign dpo[29] = \<const0> ;
  assign dpo[28] = \<const0> ;
  assign dpo[27] = \<const0> ;
  assign dpo[26] = \<const0> ;
  assign dpo[25] = \<const0> ;
  assign dpo[24] = \<const0> ;
  assign dpo[23] = \<const0> ;
  assign dpo[22] = \<const0> ;
  assign dpo[21] = \<const0> ;
  assign dpo[20] = \<const0> ;
  assign dpo[19] = \<const0> ;
  assign dpo[18] = \<const0> ;
  assign dpo[17] = \<const0> ;
  assign dpo[16] = \<const0> ;
  assign dpo[15] = \<const0> ;
  assign dpo[14] = \<const0> ;
  assign dpo[13] = \<const0> ;
  assign dpo[12] = \<const0> ;
  assign dpo[11] = \<const0> ;
  assign dpo[10] = \<const0> ;
  assign dpo[9] = \<const0> ;
  assign dpo[8] = \<const0> ;
  assign dpo[7] = \<const0> ;
  assign dpo[6] = \<const0> ;
  assign dpo[5] = \<const0> ;
  assign dpo[4] = \<const0> ;
  assign dpo[3] = \<const0> ;
  assign dpo[2] = \<const0> ;
  assign dpo[1] = \<const0> ;
  assign dpo[0] = \<const0> ;
  assign qdpo[63] = \<const0> ;
  assign qdpo[62] = \<const0> ;
  assign qdpo[61] = \<const0> ;
  assign qdpo[60] = \<const0> ;
  assign qdpo[59] = \<const0> ;
  assign qdpo[58] = \<const0> ;
  assign qdpo[57] = \<const0> ;
  assign qdpo[56] = \<const0> ;
  assign qdpo[55] = \<const0> ;
  assign qdpo[54] = \<const0> ;
  assign qdpo[53] = \<const0> ;
  assign qdpo[52] = \<const0> ;
  assign qdpo[51] = \<const0> ;
  assign qdpo[50] = \<const0> ;
  assign qdpo[49] = \<const0> ;
  assign qdpo[48] = \<const0> ;
  assign qdpo[47] = \<const0> ;
  assign qdpo[46] = \<const0> ;
  assign qdpo[45] = \<const0> ;
  assign qdpo[44] = \<const0> ;
  assign qdpo[43] = \<const0> ;
  assign qdpo[42] = \<const0> ;
  assign qdpo[41] = \<const0> ;
  assign qdpo[40] = \<const0> ;
  assign qdpo[39] = \<const0> ;
  assign qdpo[38] = \<const0> ;
  assign qdpo[37] = \<const0> ;
  assign qdpo[36] = \<const0> ;
  assign qdpo[35] = \<const0> ;
  assign qdpo[34] = \<const0> ;
  assign qdpo[33] = \<const0> ;
  assign qdpo[32] = \<const0> ;
  assign qdpo[31] = \<const0> ;
  assign qdpo[30] = \<const0> ;
  assign qdpo[29] = \<const0> ;
  assign qdpo[28] = \<const0> ;
  assign qdpo[27] = \<const0> ;
  assign qdpo[26] = \<const0> ;
  assign qdpo[25] = \<const0> ;
  assign qdpo[24] = \<const0> ;
  assign qdpo[23] = \<const0> ;
  assign qdpo[22] = \<const0> ;
  assign qdpo[21] = \<const0> ;
  assign qdpo[20] = \<const0> ;
  assign qdpo[19] = \<const0> ;
  assign qdpo[18] = \<const0> ;
  assign qdpo[17] = \<const0> ;
  assign qdpo[16] = \<const0> ;
  assign qdpo[15] = \<const0> ;
  assign qdpo[14] = \<const0> ;
  assign qdpo[13] = \<const0> ;
  assign qdpo[12] = \<const0> ;
  assign qdpo[11] = \<const0> ;
  assign qdpo[10] = \<const0> ;
  assign qdpo[9] = \<const0> ;
  assign qdpo[8] = \<const0> ;
  assign qdpo[7] = \<const0> ;
  assign qdpo[6] = \<const0> ;
  assign qdpo[5] = \<const0> ;
  assign qdpo[4] = \<const0> ;
  assign qdpo[3] = \<const0> ;
  assign qdpo[2] = \<const0> ;
  assign qdpo[1] = \<const0> ;
  assign qdpo[0] = \<const0> ;
  assign qspo[63] = \<const0> ;
  assign qspo[62] = \<const0> ;
  assign qspo[61] = \<const0> ;
  assign qspo[60] = \<const0> ;
  assign qspo[59] = \<const0> ;
  assign qspo[58] = \<const0> ;
  assign qspo[57] = \<const0> ;
  assign qspo[56] = \<const0> ;
  assign qspo[55] = \<const0> ;
  assign qspo[54] = \<const0> ;
  assign qspo[53] = \<const0> ;
  assign qspo[52] = \<const0> ;
  assign qspo[51] = \<const0> ;
  assign qspo[50] = \<const0> ;
  assign qspo[49] = \<const0> ;
  assign qspo[48] = \<const0> ;
  assign qspo[47] = \<const0> ;
  assign qspo[46] = \<const0> ;
  assign qspo[45] = \<const0> ;
  assign qspo[44] = \<const0> ;
  assign qspo[43] = \<const0> ;
  assign qspo[42] = \<const0> ;
  assign qspo[41] = \<const0> ;
  assign qspo[40] = \<const0> ;
  assign qspo[39] = \<const0> ;
  assign qspo[38] = \<const0> ;
  assign qspo[37] = \<const0> ;
  assign qspo[36] = \<const0> ;
  assign qspo[35] = \<const0> ;
  assign qspo[34] = \<const0> ;
  assign qspo[33] = \<const0> ;
  assign qspo[32] = \<const0> ;
  assign qspo[31] = \<const0> ;
  assign qspo[30] = \<const0> ;
  assign qspo[29] = \<const0> ;
  assign qspo[28] = \<const0> ;
  assign qspo[27] = \<const0> ;
  assign qspo[26] = \<const0> ;
  assign qspo[25] = \<const0> ;
  assign qspo[24] = \<const0> ;
  assign qspo[23] = \<const0> ;
  assign qspo[22] = \<const0> ;
  assign qspo[21] = \<const0> ;
  assign qspo[20] = \<const0> ;
  assign qspo[19] = \<const0> ;
  assign qspo[18] = \<const0> ;
  assign qspo[17] = \<const0> ;
  assign qspo[16] = \<const0> ;
  assign qspo[15] = \<const0> ;
  assign qspo[14] = \<const0> ;
  assign qspo[13] = \<const0> ;
  assign qspo[12] = \<const0> ;
  assign qspo[11] = \<const0> ;
  assign qspo[10] = \<const0> ;
  assign qspo[9] = \<const0> ;
  assign qspo[8] = \<const0> ;
  assign qspo[7] = \<const0> ;
  assign qspo[6] = \<const0> ;
  assign qspo[5] = \<const0> ;
  assign qspo[4] = \<const0> ;
  assign qspo[3] = \<const0> ;
  assign qspo[2] = \<const0> ;
  assign qspo[1] = \<const0> ;
  assign qspo[0] = \<const0> ;
  assign spo[63] = \<const0> ;
  assign spo[62] = \<const0> ;
  assign spo[61] = \<const0> ;
  assign spo[60] = \<const0> ;
  assign spo[59] = \<const0> ;
  assign spo[58] = \<const0> ;
  assign spo[57] = \<const0> ;
  assign spo[56] = \<const0> ;
  assign spo[55] = \<const0> ;
  assign spo[54] = \<const0> ;
  assign spo[53] = \<const0> ;
  assign spo[52] = \<const0> ;
  assign spo[51] = \<const0> ;
  assign spo[50] = \<const0> ;
  assign spo[49] = \<const0> ;
  assign spo[48] = \<const0> ;
  assign spo[47] = \<const0> ;
  assign spo[46] = \<const0> ;
  assign spo[45] = \<const0> ;
  assign spo[44] = \<const0> ;
  assign spo[43:39] = \^spo [43:39];
  assign spo[38] = \<const0> ;
  assign spo[37] = \<const0> ;
  assign spo[36:32] = \^spo [36:32];
  assign spo[31] = \^spo [18];
  assign spo[30] = \^spo [18];
  assign spo[29] = \^spo [18];
  assign spo[28] = \^spo [18];
  assign spo[27] = \^spo [18];
  assign spo[26] = \^spo [18];
  assign spo[25:24] = \^spo [13:12];
  assign spo[23] = \^spo [12];
  assign spo[22] = \^spo [18];
  assign spo[21] = \^spo [21];
  assign spo[20] = \^spo [16];
  assign spo[19] = \^spo [13];
  assign spo[18:0] = \^spo [18:0];
  GND GND
       (.G(\<const0> ));
  cpu_ans_rom_dist_mem_gen_v8_0_13_synth \synth_options.dist_mem_inst 
       (.a(a),
        .spo({\^spo [43:39],\^spo [36:32],\^spo [18],\^spo [13:12],\^spo [21],\^spo [16],\^spo [17],\^spo [15:14],\^spo [11:0]}));
endmodule

(* ORIG_REF_NAME = "dist_mem_gen_v8_0_13_synth" *) 
module cpu_ans_rom_dist_mem_gen_v8_0_13_synth
   (spo,
    a);
  output [29:0]spo;
  input [5:0]a;

  wire [5:0]a;
  wire [29:0]spo;

  cpu_ans_rom_rom \gen_rom.rom_inst 
       (.a(a),
        .spo(spo));
endmodule

(* ORIG_REF_NAME = "rom" *) 
module cpu_ans_rom_rom
   (spo,
    a);
  output [29:0]spo;
  input [5:0]a;

  wire [5:0]a;
  wire [29:0]spo;

  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \spo[0]_INST_0 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[3]),
        .O(spo[0]));
  LUT6 #(
    .INIT(64'h0000001400000053)) 
    \spo[10]_INST_0 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[10]));
  LUT6 #(
    .INIT(64'h0000003500000052)) 
    \spo[11]_INST_0 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[11]));
  LUT6 #(
    .INIT(64'h0000004300000034)) 
    \spo[12]_INST_0 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[17]));
  LUT6 #(
    .INIT(64'h0000000000060000)) 
    \spo[13]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(spo[18]));
  LUT6 #(
    .INIT(64'h0000001000000047)) 
    \spo[14]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[12]));
  LUT6 #(
    .INIT(64'h0000003700000052)) 
    \spo[15]_INST_0 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[13]));
  LUT6 #(
    .INIT(64'h000000000000305F)) 
    \spo[16]_INST_0 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[1]),
        .I4(a[4]),
        .I5(a[5]),
        .O(spo[15]));
  LUT5 #(
    .INIT(32'h00000100)) 
    \spo[17]_INST_0 
       (.I0(a[2]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[3]),
        .O(spo[14]));
  LUT6 #(
    .INIT(64'h0000000000040000)) 
    \spo[18]_INST_0 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[3]),
        .O(spo[19]));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \spo[1]_INST_0 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[3]),
        .O(spo[1]));
  LUT6 #(
    .INIT(64'h0000000000000038)) 
    \spo[21]_INST_0 
       (.I0(a[0]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[2]),
        .O(spo[16]));
  LUT6 #(
    .INIT(64'h0000001400000073)) 
    \spo[2]_INST_0 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[2]));
  LUT6 #(
    .INIT(64'h000000D0000000BF)) 
    \spo[32]_INST_0 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[20]));
  LUT6 #(
    .INIT(64'h0000004700000078)) 
    \spo[33]_INST_0 
       (.I0(a[2]),
        .I1(a[3]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[21]));
  LUT6 #(
    .INIT(64'h000000140000006C)) 
    \spo[34]_INST_0 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[0]),
        .I3(a[4]),
        .I4(a[5]),
        .I5(a[1]),
        .O(spo[22]));
  LUT6 #(
    .INIT(64'h00060008000A000A)) 
    \spo[35]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(spo[23]));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \spo[36]_INST_0 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[4]),
        .I3(a[5]),
        .I4(a[1]),
        .I5(a[3]),
        .O(spo[24]));
  LUT6 #(
    .INIT(64'h00000097000000A2)) 
    \spo[39]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[25]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00020000)) 
    \spo[3]_INST_0 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[3]),
        .O(spo[3]));
  LUT6 #(
    .INIT(64'h0000009700000020)) 
    \spo[40]_INST_0 
       (.I0(a[3]),
        .I1(a[0]),
        .I2(a[2]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[1]),
        .O(spo[26]));
  LUT6 #(
    .INIT(64'h0203030100020200)) 
    \spo[41]_INST_0 
       (.I0(a[3]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[1]),
        .I4(a[0]),
        .I5(a[2]),
        .O(spo[27]));
  LUT6 #(
    .INIT(64'h000400000002000A)) 
    \spo[42]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(spo[28]));
  LUT6 #(
    .INIT(64'h0303020000000000)) 
    \spo[43]_INST_0 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(spo[29]));
  LUT6 #(
    .INIT(64'h000000700000003F)) 
    \spo[4]_INST_0 
       (.I0(a[2]),
        .I1(a[0]),
        .I2(a[3]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[1]),
        .O(spo[4]));
  LUT6 #(
    .INIT(64'h000200000000000C)) 
    \spo[5]_INST_0 
       (.I0(a[3]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[2]),
        .O(spo[5]));
  LUT6 #(
    .INIT(64'h0002000800000000)) 
    \spo[6]_INST_0 
       (.I0(a[2]),
        .I1(a[1]),
        .I2(a[5]),
        .I3(a[4]),
        .I4(a[0]),
        .I5(a[3]),
        .O(spo[6]));
  LUT6 #(
    .INIT(64'h0102010000000000)) 
    \spo[7]_INST_0 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[2]),
        .I5(a[3]),
        .O(spo[7]));
  LUT6 #(
    .INIT(64'h0000001C00000053)) 
    \spo[8]_INST_0 
       (.I0(a[3]),
        .I1(a[2]),
        .I2(a[1]),
        .I3(a[5]),
        .I4(a[4]),
        .I5(a[0]),
        .O(spo[8]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h01000000)) 
    \spo[9]_INST_0 
       (.I0(a[1]),
        .I1(a[5]),
        .I2(a[4]),
        .I3(a[0]),
        .I4(a[3]),
        .O(spo[9]));
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
