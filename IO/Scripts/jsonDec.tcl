load_library tsmc035_typ
read -technology "tsmc035_typ"  { /home/ayman/IO/JSONDecomp.vhd }
read -technology "tsmc035_typ"  { /home/ayman/IO/shiftRegister.vhd }
read -technology "tsmc035_typ"  { /home/ayman/IO/fbitCounter.vhd }
read -technology "tsmc035_typ"  { /home/ayman/IO/counter.vhd }
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
elaborate JDecomp -architecture myArch 
set_clock -name .work.JDecomp.myArch.clk -clock_cycle "10.000000"
set_clock -name .work.JDecomp.myArch.clk -pulse_width "5.000000"
optimize .work.JDecomp.myArch -target tsmc035_typ -macro -delay -effort quick -hierarchy flatten 
optimize_timing .work.JDecomp.myArch 
report_area jsonDec -cell_usage -all_leafs 
report_delay jsonDec -num_paths 1 -critical_paths -clock_frequency
set novendor_constraint_file FALSE
auto_write jsonDec.v
set novendor_constraint_file FALSE
auto_write -format SDF jsonDec.sdf

