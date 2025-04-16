onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+lcd_controller_0 -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L dist_mem_gen_v8_0_13 -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.lcd_controller_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {lcd_controller_0.udo}

run -all

endsim

quit -force
