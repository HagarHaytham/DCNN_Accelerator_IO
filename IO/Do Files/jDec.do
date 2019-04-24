vsim work.jdecomp
# vsim work.jdecomp 
# Start time: 11:23:05 on Apr 23,2019
# //  ModelSim DE 2019.1 Jan  1 2019 Linux 4.4.0-140-generic
# //
# //  Copyright 1991-2019 Mentor Graphics Corporation
# //  All Rights Reserved.
# //
# //  ModelSim DE and its associated documentation contain trade
# //  secrets and commercial or financial information that are the property of
# //  Mentor Graphics Corporation and are privileged, confidential,
# //  and exempt from disclosure under the Freedom of Information Act,
# //  5 U.S.C. Section 552. Furthermore, this information
# //  is prohibited from disclosure under the Trade Secrets Act,
# //  18 U.S.C. Section 1905.
# //
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.jdecomp(myarch)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.counter(archi)
# Loading work.upcounter(archi)
# Loading work.shiftreg(shreg)
add wave -position insertpoint sim:/jdecomp/*
quit -sim
# End time: 11:27:45 on Apr 23,2019, Elapsed time: 0:04:40
# Errors: 0, Warnings: 0
vsim work.jdecomp
# vsim work.jdecomp 
# Start time: 11:28:43 on Apr 23,2019
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.jdecomp(myarch)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.counter(archi)
# Loading work.upcounter(archi)
# Loading work.shiftreg(shreg)
add wave -position insertpoint sim:/jdecomp/*
force -freeze sim:/jdecomp/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/jdecomp/rst 1 0
run
force -freeze sim:/jdecomp/en 1 0
force -freeze sim:/jdecomp/rst 0 0
force -freeze sim:/jdecomp/recPack 1000011100000111 0
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
force -freeze sim:/jdecomp/en 1 0
force -freeze sim:/jdecomp/recPack 16'b1000001000000010 0
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
force -freeze sim:/jdecomp/en 1 0
force -freeze sim:/jdecomp/recPack 16'b1000010000000100 0
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