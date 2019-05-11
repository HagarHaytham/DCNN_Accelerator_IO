vsim -gui work.accelerator
# vsim -gui work.accelerator 
# Start time: 19:59:23 on May 11,2019
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
# Loading work.accelerator(struct)
# Loading work.io(struct)
# Loading work.iocontroller(behavioral)
# Loading ieee.std_logic_arith(body)
# Loading ieee.std_logic_unsigned(body)
# Loading work.upcounter(behavioral)
# Loading work.iointerface(behavioral)
# Loading work.nreg(nregarch)
# Loading work.decompressimage(archiodecompressimage)
# Loading work.updcounter(archupdcounter)
# Loading work.jdecomp(myarch)
# Loading work.counter(archi)
# Loading work.fbitupcounter(archi)
# Loading work.shiftreg(shreg)
# Loading ieee.numeric_std(body)
# Loading work.ram(ramarch)
# ** Warning: (vsim-8683) Uninitialized out port /accelerator/ioU/dout(3) has no driver.
# This port will contribute value (U) to the signal network.
# ** Warning: (vsim-8683) Uninitialized out port /accelerator/ioU/dout(2) has no driver.
# This port will contribute value (U) to the signal network.
# ** Warning: (vsim-8683) Uninitialized out port /accelerator/ioU/dout(1) has no driver.
# This port will contribute value (U) to the signal network.
# ** Warning: (vsim-8683) Uninitialized out port /accelerator/ioU/dout(0) has no driver.
# This port will contribute value (U) to the signal network.
add wave -position insertpoint sim:/accelerator/*
add wave -position insertpoint sim:/accelerator/ioU/JsonDecompU/*
force -freeze sim:/accelerator/i_clk 1 0, 0 {50 ps} -r 100
force -freeze sim:/accelerator/i_rst 1 0
force -freeze sim:/accelerator/i_interrupt 1 0
force -freeze sim:/accelerator/i_loadProcess 1 0
force -freeze sim:/accelerator/i_CNNImage 0 0
force -freeze sim:/accelerator/i_din 0000111010000010 0
run
# ** Warning: NUMERIC_STD.TO_INTEGER: metavalue detected, returning 0
#    Time: 0 ps  Iteration: 0  Instance: /accelerator/mem
force -freeze sim:/accelerator/i_rst 0 0
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
run
run
run
run
run
run
run
run
