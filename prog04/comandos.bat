ghdl -s exor.vhd
ghdl -s exor_tb.vhd
ghdl -a exor.vhd
ghdl -a exor_tb.vhd
ghdl -e exor_tb
ghdl -r exor_tb
ghdl -r exor_tb --vcd=simu1.vcd
gtkwave simu1.vcd