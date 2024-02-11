all: result.vcd

result.vcd: half_adder.vhdl half_adder_tb.vhdl 
	ghdl -a half_adder.vhdl
	ghdl -a half_adder_tb.vhdl
	ghdl -e half_adder_tb
	ghdl -r half_adder_tb --vcd=result.vcd

clean:
	rm -rf result.vcd
