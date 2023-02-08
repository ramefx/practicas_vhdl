ghdl -s ffd.vhdl
ghdl -s ffd_tb.vhdl
ghdl -a ffd.vhdl
ghdl -a ffd_tb.vhdl
ghdl -e ffd_tb
ghdl -r ffd_tb
ghdl -r ffd_tb --vcd=simu3.vcd
%gtkwave simu1.vcd%