vsim work.IOController -L ADK
# vsim work.IOController -L ADK 
# Start time: 18:26:53 on Apr 23,2019
# Loading work.IOController
# Loading work.fake_gnd
# Loading work.nand03
# Loading work.dffr
# Loading work.latch
# Loading work.oai21
# Loading work.nor02_2x
# Loading work.nand02
# Loading work.nand04
# Loading work.dffs_ni
# Loading work.inv01
# Loading work.nor03_2x
# Loading work.aoi22
# Loading work.mux21
# Loading work.xnor2
# Loading work.buf02
# Loading work.inv02
# Loading work.dff_r_err
# Loading work.dff_r
# Loading work.latch_p
# Loading work.dff_s_err
# Loading work.dff_s
# Loading work.mux2
add wave *
force -freeze sim:/IOController/i_rst 1 0
force -freeze sim:/IOController/i_int 0 0
force -freeze sim:/IOController/i_op 0 0
force -freeze sim:/IOController/i_dtype 0 0
force -freeze sim:/IOController/i_decompI 0 0
force -freeze sim:/IOController/i_wordI 0 0
force -freeze sim:/IOController/i_decompC 0 0
force -freeze sim:/IOController/i_wordC 0 0
force -freeze sim:/IOController/i_processDone 0 0
force -freeze sim:/IOController/i_clk 1 100, 0 {5100 ps} -r 10000
run
force -freeze sim:/IOController/i_rst 0 0
run
run
run
force -freeze sim:/IOController/i_int 1 0
force -freeze sim:/IOController/i_op 1 0
force -freeze sim:/IOController/i_dtype 1 0
run
run
force -freeze sim:/IOController/i_int 0 0
force -freeze sim:/IOController/i_op 0 0
force -freeze sim:/IOController/i_dtype 0 0
run
run
force -freeze sim:/IOController/i_wordI 1 0
run
run
run
run
force -freeze sim:/IOController/i_wordI 0 0
run
run
force -freeze sim:/IOController/i_decompI 1 0
run
run
run
force -freeze sim:/IOController/i_decompI 0 0
run
run
run
force -freeze sim:/IOController/i_int 0 0
force -freeze sim:/IOController/i_op 0 0
run
run
run
force -freeze sim:/IOController/i_int 1 0
force -freeze sim:/IOController/i_op 1 0
run
run
run
force -freeze sim:/IOController/i_int 0 0
force -freeze sim:/IOController/i_op 0 0
run
run
run
force -freeze sim:/IOController/i_wordC 1 0
run
run
force -freeze sim:/IOController/i_wordC 0 0
run
run
run
force -freeze sim:/IOController/i_wordC 1 0
run
run
force -freeze sim:/IOController/i_wordC 0 0
run
run
force -freeze sim:/IOController/i_decompC 1 0
run
run
run
force -freeze sim:/IOController/i_decompC 0 0
run
run
run
run
force -freeze sim:/IOController/i_int 1 0
run
run
force -freeze sim:/IOController/i_int 0 0
run
run
run
force -freeze sim:/IOController/i_processDone 1 0
run
force -freeze sim:/IOController/i_processDone 0 0
run
run
run
run
