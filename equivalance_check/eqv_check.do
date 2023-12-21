set log file fifo_lec.log -replace

read library /home/vlsi1/23EC4224/project/fifo/equivalance_check/tsl18fs120_scl_ff.v -verilog -both
read design /home/vlsi1/23EC4224/project/fifo/rtl1/fifo.v -verilog -golden
read design /home/vlsi1/23EC4224/project/fifo/synthesis/fifo_netlist.v -verilog -revised

set system mode lec
add compare point -all
compare 
