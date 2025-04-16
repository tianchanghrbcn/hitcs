onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cpu_data_ram_opt

do {wave.do}

view wave
view structure
view signals

do {cpu_data_ram.udo}

run -all

quit -force
