vsim -sdftyp /=/home/ayman/IO/SDF/jsonDec.sdf work.JDecomp
add wave -position insertpoint sim:/JDecomp/*
force -freeze sim:/JDecomp/clk 1 0, 0 {5000 ps} -r 10000
force -freeze sim:/JDecomp/en 1'b0 0
force -freeze sim:/JDecomp/rst 1'b1 0
force -freeze sim:/JDecomp/recPack 16'b1000011100000111 0
run
run
force -freeze sim:/JDecomp/en 1'b1 0
force -freeze sim:/JDecomp/rst 1'b0 0
run
force -freeze sim:/JDecomp/en 1'b0 0
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
force -freeze sim:/JDecomp/en 1'b1 0
force -freeze sim:/JDecomp/recPack 16'b1000001000000010 0
run
force -freeze sim:/JDecomp/en 1'b0 0
run
run
run
run
run
run
run
run
run
force -freeze sim:/JDecomp/en 1'b1 0
force -freeze sim:/JDecomp/recPack 16'b0000000000000000 0
run
force -freeze sim:/JDecomp/en 1'b0 0
run
run
run
run
