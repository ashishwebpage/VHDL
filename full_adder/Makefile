all: result.vcd

result.vcd: full_adder.vhdl full_adder_tb.vhdl 
	ghdl -a full_adder.vhdl
	ghdl -a full_adder_tb.vhdl
	ghdl -e full_adder_tb
	ghdl -r full_adder_tb --vcd=result.vcd

clean:
	rm -rf result.vcd
