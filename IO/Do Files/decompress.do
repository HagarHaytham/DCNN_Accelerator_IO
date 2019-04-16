vsim -gui work.decompress
# End time: 04:29:31 on Apr 16,2019, Elapsed time: 1:25:22
# Errors: 0, Warnings: 0
# vsim -gui work.decompress 
# Start time: 04:29:31 on Apr 16,2019
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.decompress(archiodecompress)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.counter(archcounter)
add wave -position insertpoint sim:/decompress/*
force -freeze sim:/decompress/din 0000001110000010 0
force -freeze sim:/decompress/clk 1 0, 0 {50 ns} -r 100

force -freeze sim:/decompress/proces 0 0
force -freeze sim:/decompress/rst 0 0
run
run
force -freeze sim:/decompress/proces 1 0
run
run
run
run
run
run
run
run