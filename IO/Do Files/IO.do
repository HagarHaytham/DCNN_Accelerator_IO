vsim -gui work.io
# vsim -gui work.io 
# Start time: 06:24:01 on Apr 24,2019
# Loading std.standard
# Loading std.textio(body)
# Loading ieee.std_logic_1164(body)
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
# Loading work.mux4x1(behavioral)
add wave -position insertpoint sim:/io/ImgDecompU/*
add wave -position insertpoint sim:/io/*
force -freeze sim:/io/clk 1 0, 0 {50 ns} -r 100
force -freeze sim:/io/rst 1 0
run
force -freeze sim:/io/interrupt 0 0
force -freeze sim:/io/loadProcess 0 0
force -freeze sim:/io/CNNImage 1 0
run
force -freeze sim:/io/rst 0 0
force -freeze sim:/io/interrupt 1 0
force -freeze sim:/io/loadProcess 0 0
force -freeze sim:/io/din 0000001010000011 0
run
run
run
run
run
run