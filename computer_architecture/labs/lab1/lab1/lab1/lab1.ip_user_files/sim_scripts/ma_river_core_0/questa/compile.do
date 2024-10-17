vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/blk_mem_gen_v8_4_4
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap blk_mem_gen_v8_4_4 questa_lib/msim/blk_mem_gen_v8_4_4
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv "+incdir+../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super" \
"D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 "+incdir+../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super" \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 "+incdir+../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/ip/bram_td/sim/bram_td.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/ip/bram_sd/sim/bram_sd.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/alu.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/arf.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/bram_32_1024_sd.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/bram_32_1024_td.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/branch_predictor.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/buffer.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/commit.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/cp0_group.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/decode.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/decoder.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/dispatch.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/div.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/dsp_mul.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/f_adder_front.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/f_comp.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/f_decoder.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/f_divider_front.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/f_muler_front.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/f_normal.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/f_prf.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/f_round.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/f_sqrter_front.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/fetch.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/fixed_to_float.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/float_base.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/float_to_fixed.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/fpu_top.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/fu_alu.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/fu_fccu.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/fu_fpu.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/fu_mdu.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/fu_mu.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/gpr_table.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/interconnect.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/l1_tlb.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/l2_tlb.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/mem_ctrl.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/mul.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/rename.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/rob.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/station.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/imports/super/mycpu_top.v" \
"../../../../lab4.srcs/sources_1/ip/ma_river_core_0/sim/ma_river_core_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

