vlib work
vlib riviera

vlib riviera/xpm
vlib riviera/dist_mem_gen_v8_0_13
vlib riviera/xil_defaultlib

vmap xpm riviera/xpm
vmap dist_mem_gen_v8_0_13 riviera/dist_mem_gen_v8_0_13
vmap xil_defaultlib riviera/xil_defaultlib

vlog -work xpm  -sv2k12 \
"D:/StudySoftware/Xilinx_Vivado_2019.2/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/StudySoftware/Xilinx_Vivado_2019.2/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/StudySoftware/Xilinx_Vivado_2019.2/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work dist_mem_gen_v8_0_13  -v2k5 \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib  -v2k5 \
"../../../../lab1.srcs/sources_1/ip/cpu_inst2_rom/sim/cpu_inst2_rom.v" \

vlog -work xil_defaultlib \
"glbl.v"

