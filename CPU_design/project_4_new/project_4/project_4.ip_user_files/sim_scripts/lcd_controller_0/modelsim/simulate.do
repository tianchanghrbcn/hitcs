onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xpm -L blk_mem_gen_v8_4_4 -L xil_defaultlib -L dist_mem_gen_v8_0_13 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.lcd_controller_0 xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {lcd_controller_0.udo}

run -all

quit -force
