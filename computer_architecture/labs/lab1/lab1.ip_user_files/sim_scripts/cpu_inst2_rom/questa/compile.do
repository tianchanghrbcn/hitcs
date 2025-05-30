vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/dist_mem_gen_v8_0_13
vlib questa_lib/msim/xil_defaultlib

vmap xpm questa_lib/msim/xpm
vmap dist_mem_gen_v8_0_13 questa_lib/msim/dist_mem_gen_v8_0_13
vmap xil_defaultlib questa_lib/msim/xil_defaultlib

vlog -work xpm -64 -sv \
"D:/StudySoftware/Xilinx_Vivado_2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/StudySoftware/Xilinx_Vivado_2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/StudySoftware/Xilinx_Vivado_2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13 -64 \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 \
"../../../../lab1.srcs/sources_1/ip/cpu_inst2_rom/sim/cpu_inst2_rom.v" \

vlog -work xil_defaultlib \
"glbl.v"

