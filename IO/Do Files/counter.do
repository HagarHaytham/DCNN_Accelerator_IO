vsim -gui work.counter
# vsim -gui work.counter 
# Start time: 03:04:09 on Apr 16,2019
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.counter(archcounter)
add wave -position insertpoint sim:/counter/*
force -freeze sim:/counter/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/counter/rst 1 0
force -freeze sim:/counter/dir 1 0
run
run
force -freeze sim:/counter/en 1 0
run
run
force -freeze sim:/counter/rst 0 0
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
run
force -freeze sim:/counter/en 0 0
run
run
run