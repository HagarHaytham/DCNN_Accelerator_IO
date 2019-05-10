vsim work.accelerator
# vsim work.accelerator 
# Start time: 10:48:07 on May 10,2019
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
# ** Warning: (vsim-8683) Uninitialized out port /accelerator/ioU/dout(3 downto 0) has no driver.
# This port will contribute value (4'hX) to the signal network.
add wave *
force -freeze sim:/accelerator/i_rst 1 0
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 0 0
force -freeze sim:/accelerator/i_CNNImage 0 0
force -freeze sim:/accelerator/i_clk 1 10, 0 {60 ps} -r 100
run
# ** Warning: NUMERIC_STD.TO_INTEGER: metavalue detected, returning 0
#    Time: 0 ps  Iteration: 0  Instance: /accelerator/mem
force -freeze sim:/accelerator/i_rst 0 0
run
force -freeze sim:/accelerator/i_din 10111011 0
run
force -freeze sim:/accelerator/i_interrupt 1 0
force -freeze sim:/accelerator/i_loadProcess 1 0
force -freeze sim:/accelerator/i_CNNImage 1 0
run
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 0 0
force -freeze sim:/accelerator/i_CNNImage 0 0
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
force -freeze sim:/accelerator/i_interrupt 1 0
force -freeze sim:/accelerator/i_loadProcess 1 0
run
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 0 0
run
run
run
run
run
run
run
run
run
force -freeze sim:/accelerator/i_din 8f8f 0
force -freeze sim:/accelerator/i_interrupt 1 0
force -freeze sim:/accelerator/i_loadProcess 1 0
force -freeze sim:/accelerator/i_CNNImage 1 0
run
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 0 0
force -freeze sim:/accelerator/i_CNNImage 0 0
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
force -freeze sim:/accelerator/i_interrupt 1 0
force -freeze sim:/accelerator/i_loadProcess 1 0
run
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 0 0
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
force -freeze sim:/accelerator/i_din 1111 0
force -freeze sim:/accelerator/i_interrupt 1 0
force -freeze sim:/accelerator/i_loadProcess 1 0
force -freeze sim:/accelerator/i_CNNImage 1 0
run
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 0 0
force -freeze sim:/accelerator/i_CNNImage 0 0
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
force -freeze sim:/accelerator/i_interrupt 1 0
force -freeze sim:/accelerator/i_loadProcess 1 0
run
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 0 0
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
force -freeze sim:/accelerator/i_din ffff 0
force -freeze sim:/accelerator/i_interrupt 1 0
force -freeze sim:/accelerator/i_loadProcess 1 0
force -freeze sim:/accelerator/i_CNNImage 1 0
run
run
run
noforce sim:/accelerator/i_interrupt
noforce sim:/accelerator/i_loadProcess
noforce sim:/accelerator/i_CNNImage
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 0 0
force -freeze sim:/accelerator/i_CNNImage 0 0
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
force -freeze sim:/accelerator/i_interrupt 1 0
force -freeze sim:/accelerator/i_loadProcess 1 0
run
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 0 0
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
