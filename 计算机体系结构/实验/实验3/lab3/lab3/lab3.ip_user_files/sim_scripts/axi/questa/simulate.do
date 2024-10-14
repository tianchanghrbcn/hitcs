onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axi_opt

do {wave.do}

view wave
view structure
view signals

do {axi.udo}

run -all

quit -force
