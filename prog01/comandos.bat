ghdl -s comb.vhd
ghdl -s comb_tb.vhd
ghdl -a comb.vhd
ghdl -a comb_tb.vhd
ghdl -e comb_tb
ghdl -r comb_tb
ghdl -r comb_tb --vcd=simu1.vcd
gtkwave simu1.vcd