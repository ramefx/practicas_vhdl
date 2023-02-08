ghdl -s asig.vhd
ghdl -s asig_tb.vhd
ghdl -a asig.vhd
ghdl -a asig_tb.vhd
ghdl -e asig_tb
ghdl -r asig_tb
ghdl -r asig_tb --vcd=simu1.vcd
gtkwave simu1.vcd