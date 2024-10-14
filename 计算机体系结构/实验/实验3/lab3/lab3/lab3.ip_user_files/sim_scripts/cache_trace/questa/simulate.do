onbreak {quit -f}
onerror {quit -f}

vsim -t 1ps -lib xil_defaultlib cache_trace_opt

do {wave.do}

view wave
view structure
view signals

do {cache_trace.udo}

run -all

quit -force
