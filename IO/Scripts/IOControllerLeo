load_library tsmc035_typ
set_working_dir /home/ayman/Desktop/VLSI/Try01
read -technology "tsmc035_typ"  { /home/ayman/Desktop/VLSI/Project/VHDLFiles/IOController.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/VLSI/Project/VHDLFiles/upCounter.vhd }
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
elaborate IOController -architecture behavioral 
set_clock -name .work.IOController.behavioral.i_clk -clock_cycle "10.000000"
set_clock -name .work.IOController.behavioral.i_clk -pulse_width "5.000000"
report_delay IOControllerDelayRep -num_paths 1 -critical_paths -clock_frequency
report_area IOControllerAreaRep -cell_usage -all_leafs 
set novendor_constraint_file FALSE
auto_write -format SDF IOController.sdf
set novendor_constraint_file FALSE
auto_write -format Verilog IOController.v
optimize .work.IOController.behavioral -target tsmc035_typ -macro -delay -effort quick -hierarchy flatten 
optimize_timing .work.IOController.behavioral 
optimize_timing .work.IOController.behavioral -force 
set novendor_constraint_file FALSE
auto_write -format Verilog IOController.v
set novendor_constraint_file FALSE
auto_write -format SDF IOController.sdf
report_area IOControllerAreaRep -cell_usage -all_leafs 
report_delay IOControllerDelayRep -num_paths 1 -critical_paths -clock_frequency

