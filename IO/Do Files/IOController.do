vsim work.iocontroller
# vsim work.iocontroller 
# Start time: 16:50:58 on Apr 23,2019
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.iocontroller(behavioral)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.upcounter(behavioral)
add wave *
force -freeze sim:/iocontroller/i_rst 1 0
force -freeze sim:/iocontroller/i_int 0 0
force -freeze sim:/iocontroller/i_op 0 0
force -freeze sim:/iocontroller/i_dtype 0 0
force -freeze sim:/iocontroller/i_decompI 0 0
force -freeze sim:/iocontroller/i_wordI 0 0
force -freeze sim:/iocontroller/i_decompC 0 0
force -freeze sim:/iocontroller/i_wordC 0 0
force -freeze sim:/iocontroller/i_processDone 0 0
force -freeze sim:/iocontroller/i_clk 1 100, 0 {5100 ps} -r 10000
run
force -freeze sim:/iocontroller/i_rst 0 0
run
run
force -freeze sim:/iocontroller/i_int 1 0
force -freeze sim:/iocontroller/i_op 1 0
force -freeze sim:/iocontroller/i_dtype 1 0
run
run
force -freeze sim:/iocontroller/i_int 0 0
force -freeze sim:/iocontroller/i_op 0 0
force -freeze sim:/iocontroller/i_dtype 0 0
run
run
force -freeze sim:/iocontroller/i_wordI 1 0
run
run
run
force -freeze sim:/iocontroller/i_wordI 0 0
run
force -freeze sim:/iocontroller/i_decompI 1 0
run
run
run
run
force -freeze sim:/iocontroller/i_int 1 0
force -freeze sim:/iocontroller/i_op 1 0
run
noforce sim:/iocontroller/i_int
noforce sim:/iocontroller/i_op
force -freeze sim:/iocontroller/i_int 0 0
force -freeze sim:/iocontroller/i_op 0 0
run
run
run
force -freeze sim:/iocontroller/i_wordC 1 0
run
run
run
run
force -freeze sim:/iocontroller/i_wordC 0 0
run
run
run
force -freeze sim:/iocontroller/i_decompC 1 0
run
run
run
run
force -freeze sim:/iocontroller/i_int 1 0
run
force -freeze sim:/iocontroller/i_int 0 0
run
run
run
force -freeze sim:/iocontroller/i_processDone 1 0
run
force -freeze sim:/iocontroller/i_processDone 0 0
run
run
run
run
run
