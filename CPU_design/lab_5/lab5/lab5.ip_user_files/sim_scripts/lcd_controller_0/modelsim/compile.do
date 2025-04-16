vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/blk_mem_gen_v8_4_4
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/dist_mem_gen_v8_0_13

vmap xpm modelsim_lib/msim/xpm
vmap blk_mem_gen_v8_4_4 modelsim_lib/msim/blk_mem_gen_v8_4_4
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap dist_mem_gen_v8_0_13 modelsim_lib/msim/dist_mem_gen_v8_0_13

vlog -work xpm -64 -incr -sv \
"D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work blk_mem_gen_v8_4_4 -64 -incr \
"../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../lab4.srcs/sources_1/ip/lcd_controller_0/ip/text_bram/sim/text_bram.v" \

vlog -work dist_mem_gen_v8_0_13 -64 -incr \
"../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \

vlog -work xil_defaultlib -64 -incr \
"../../../../lab4.srcs/sources_1/ip/lcd_controller_0/ip/rst_rom/sim/rst_rom.v" \
"../../../../lab4.srcs/sources_1/ip/lcd_controller_0/ip/font_rom/sim/font_rom.v" \
"../../../../lab4.srcs/sources_1/ip/lcd_controller_0/imports/hardware/lcd_controller.v" \
"../../../../lab4.srcs/sources_1/ip/lcd_controller_0/sim/lcd_controller_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

