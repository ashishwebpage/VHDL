all: result.vcd

result.vcd: mux.vhdl mux_tb.vhdl 
	ghdl -a mux.vhdl
	ghdl -a mux_tb.vhdl
	ghdl -e mux_tb
	ghdl -r mux_tb --vcd=result.vcd 

clean:
	rm -rf result.vcd
