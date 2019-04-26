load_library tsmc035_typ
set_working_dir /home/ayman/Desktop/IO
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/IO.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/IOController.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/IOInterface.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/JSONDecomp.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/DecompressImage.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/counter.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/fbitCounter.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/Register.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/shiftRegister.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/updCounter.vhd }
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
elaborate IO -architecture struct 
set_clock -name .work.IO.struct.clk -clock_cycle "10.000000"
set_clock -name .work.IO.struct.clk -pulse_width "5.000000"
optimize .work.IO.struct -target tsmc035_typ -macro -delay -effort quick -hierarchy flatten 
optimize_timing .work.IO.struct 
report_area IOarea -cell_usage -all_leafs 
report_delay IOdelay -num_paths 1 -critical_paths -clock_frequency
set novendor_constraint_file FALSE
auto_write IO.v
set novendor_constraint_file FALSE
auto_write -format SDF IO.sdf

