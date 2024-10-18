onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib axi_bus_opt

do {wave.do}

view wave
view structure
view signals

do {axi_bus.udo}

run -all

quit -force
