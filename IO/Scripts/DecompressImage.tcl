load_library tsmc035_typ
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/DecompressImage.vhd }
read -technology "tsmc035_typ"  { /home/ayman/Desktop/IO/Counter.vhd }
pre_optimize -common_logic -unused_logic -boundary -xor_comparator_optimize 
pre_optimize -extract 
elaborate DecompressImage -architecture ArchIODecompressImage 
set sdf_type combined
set_clock -name .work.DecompressImage.ArchIODecompressImage.clk -clock_cycle "10.000000"
set_clock -name .work.DecompressImage.ArchIODecompressImage.clk -pulse_width "5.000000"
optimize .work.DecompressImage.ArchIODecompressImage -target tsmc035_typ -macro -delay -effort quick -hierarchy flatten 
optimize_timing .work.DecompressImage.ArchIODecompressImage 
report_area /home/ayman/Desktop/IO/AreaReports/decompressimage -cell_usage -all_leafs 
report_delay /home/ayman/Desktop/IO/DelayReports/decompressimage -num_paths 1 -critical_paths -clock_frequency
set novendor_constraint_file FALSE
auto_write decompressimage.v
set novendor_constraint_file FALSE
auto_write -format SDF decompressimage.sdf
