onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib lcd_controller_0_opt

do {wave.do}

view wave
view structure
view signals

do {lcd_controller_0.udo}

run -all

quit -force
