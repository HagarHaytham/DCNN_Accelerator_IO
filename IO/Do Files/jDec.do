vsim work.jdecomp
# vsim work.jdecomp 
# Start time: 14:00:04 on Apr 24,2019
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.jdecomp(myarch)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.counter(archi)
# Loading work.fbitupcounter(archi)
# Loading work.shiftreg(shreg)
add wave -position insertpoint sim:/jdecomp/*
force -freeze sim:/jdecomp/clk 1 0, 0 {25 ns} -r 50
force -freeze sim:/jdecomp/en 1 0
force -freeze sim:/jdecomp/rst 1 0
force -freeze sim:/jdecomp/recPack 0 0
force -freeze sim:/jdecomp/en 0 0
run
force -freeze sim:/jdecomp/en 1 0
run
noforce sim:/jdecomp/en
restart
force -freeze sim:/jdecomp/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/jdecomp/en 0 0
force -freeze sim:/jdecomp/rst 1 0
force -freeze sim:/jdecomp/recPack 1000011100000111 0
run
force -freeze sim:/jdecomp/en 1 0
force -freeze sim:/jdecomp/rst 0 0
run
force -freeze sim:/jdecomp/en 0 0
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
run
run