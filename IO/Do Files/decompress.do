vsim -gui work.decompressimage
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