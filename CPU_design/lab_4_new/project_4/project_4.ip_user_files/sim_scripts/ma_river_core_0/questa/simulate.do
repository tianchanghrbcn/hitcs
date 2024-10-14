onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib ma_river_core_0_opt

do {wave.do}

view wave
view structure
view signals

do {ma_river_core_0.udo}

run -all

quit -force
