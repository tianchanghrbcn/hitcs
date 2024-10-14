set_property SRC_FILE_INFO {cfile:c:/Users/ywy_c/Documents/coding/hitcoa_at2024/coa/lab2/lab2.srcs/sources_1/ip/clk_pll/clk_pll.xdc rfile:../../../lab2.srcs/sources_1/ip/clk_pll/clk_pll.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in]] 0.1
