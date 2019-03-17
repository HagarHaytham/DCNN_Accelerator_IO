proc c  {} {
    vcom IO.vhd   
    echo "---------------COMPILATION IS OVER--------------------------"
    vsim work.IO
    echo "---------------STARTED SIMULATION---------------------------"
    add wave *
    run -all
    


}
proc bitsToHex bits {
     set binValue [binary format B16 $bits]
     binary scan $binValue H4 hex
     return $hex
  }

set fp [open "compimg.txt" r]
set file_data [read $fp]
# while { [gets $fp data] >= 0 } {
#    puts $data
# }
puts $file_data
close $fp
set sz [string  length $file_data]
puts $sz
c
set j 0
for { set i 0 }  {$i < $sz} {incr i +15} {
    set arr($j) [string range $file_data $i $i+15]
    puts "$arr($j)"
    set hex [bitsToHex $arr($j)]
    puts $hex
    force -freeze sim:/io/Din $hex 0
    force -freeze sim:/io/Rst 1 0
    run
    incr j
}
