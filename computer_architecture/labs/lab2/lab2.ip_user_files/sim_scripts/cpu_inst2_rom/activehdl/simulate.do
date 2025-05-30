onbreak {quit -force}
onerror {quit -force}

asim -t 1ps +access +r +m+cpu_inst2_rom -L xpm -L dist_mem_gen_v8_0_13 -L xil_defaultlib -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.cpu_inst2_rom xil_defaultlib.glbl

do {wave.do}

view wave
view structure

do {cpu_inst2_rom.udo}

run -all

endsim

quit -force
