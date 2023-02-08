ghdl -s sign.vhd
ghdl -s sign_tb.vhd
ghdl -a sign.vhd
ghdl -a sign_tb.vhd
ghdl -e sign_tb
ghdl -r sign_tb
ghdl -r sign_tb --vcd=simu1.vcd
gtkwave simu1.vcd