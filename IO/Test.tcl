proc c  {} {
    vcom integration.vhd   
    echo "---------------COMPILATION IS OVER--------------------------"
    vsim work.accelerator
    echo "---------------STARTED SIMULATION---------------------------"
    add wave *
    add wave -position insertpoint sim:/accelerator/ioU/ImgDecompU/*
    run -all
    force -freeze sim:/accelerator/i_rst 1 0
    # force -freeze sim:/accelerator/i_clk 1 10, 0 {60 ps} -r 100
    force -freeze sim:/accelerator/i_clk 1 0, 0 {50 ps} -r 100
    run
}

proc bitsToHex bits {
     set binValue [binary format B16 $bits]
     binary scan $binValue H4 hex
     return $hex
}

set fp [open "compimg.txt" r]
set file_data [read $fp]
close $fp
set sz [string  length $file_data]

#  compile, start sim and rst
c

force -freeze sim:/accelerator/i_rst 0 0
force -freeze sim:/accelerator/i_interrupt 0 0
force -freeze sim:/accelerator/i_loadProcess 1 0
force -freeze sim:/accelerator/i_CNNImage 1 0
run
set R [examine o_ready]

while {$R==0} {
    run
    set R [examine o_ready]
}
run
force -freeze sim:/accelerator/i_interrupt 1 0
run
force -freeze sim:/accelerator/i_interrupt 0 0

set k 0
set j 0
for { set i 0 }  {$i < $sz} {set i [expr {$i + 15}]} {
    set arr($j) [string range $file_data $i $i+15]
    puts "$arr($j)"
    set hex [bitsToHex $arr($j)]
    puts $hex
    force -freeze sim:/accelerator/i_din $hex 0    
    run
    incr j
    # puts{"Image"}
    set x [examine o_ready]
    puts $x
    while {$x==0} {
        incr k
        run
        set x [examine o_ready]
        puts "Image"
        if { $k> 20} {
            exit 1 
            # force exit for now
        }
    }
}

# wait for Done Signal

# set D [examine o_done]
# while {$D==0} {
#     run
#     set D [examine o_done]
# }



####### image is done, So start sending CNN




