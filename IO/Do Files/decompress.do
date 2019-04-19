vsim -gui work.decompressimage
# End time: 15:45:17 on Apr 19,2019, Elapsed time: 0:18:01
# Errors: 0, Warnings: 0
# vsim -gui work.decompressimage 
# Start time: 15:45:18 on Apr 19,2019
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.decompressimage(archiodecompressimage)
# Loading work.counter(archcounter)
add wave -position insertpoint sim:/decompressimage/*
force -freeze sim:/decompressimage/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/decompressimage/rst 1 0
force -freeze sim:/decompressimage/proces 0 0
noforce sim:/decompressimage/din
force -freeze sim:/decompressimage/din 0000000000000000 0
run
run
force -freeze sim:/decompressimage/proces 1 0
run
run
force -freeze sim:/decompressimage/rst 0 0
run
run
force -freeze sim:/decompressimage/proces 0 0
run
run
run
force -freeze sim:/decompressimage/proces 1 0
force -freeze sim:/decompressimage/din 0000000111000010 0
force -freeze sim:/decompressimage/din 0000001110000010 0
run
run
run
force -freeze sim:/decompressimage/proces 0 0
run
run
run
run
run
run
run
run