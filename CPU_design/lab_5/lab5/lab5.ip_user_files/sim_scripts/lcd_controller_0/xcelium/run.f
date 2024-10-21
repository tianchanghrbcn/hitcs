-makelib xcelium_lib/xpm -sv \
  "D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/vivado2019/Vivado/2019.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_4 \
  "../../../ipstatic/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab4.srcs/sources_1/ip/lcd_controller_0/ip/text_bram/sim/text_bram.v" \
-endlib
-makelib xcelium_lib/dist_mem_gen_v8_0_13 \
  "../../../ipstatic/simulation/dist_mem_gen_v8_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../lab4.srcs/sources_1/ip/lcd_controller_0/ip/rst_rom/sim/rst_rom.v" \
  "../../../../lab4.srcs/sources_1/ip/lcd_controller_0/ip/font_rom/sim/font_rom.v" \
  "../../../../lab4.srcs/sources_1/ip/lcd_controller_0/imports/hardware/lcd_controller.v" \
  "../../../../lab4.srcs/sources_1/ip/lcd_controller_0/sim/lcd_controller_0.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

