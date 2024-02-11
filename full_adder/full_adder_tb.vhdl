library ieee;
use ieee.std_logic_1164.all;

entity full_adder_tb is
end full_adder_tb;

architecture test of full_adder_tb is
	signal a, b,cin, s, c: std_logic;
	component full_adder
	port(
	A, B,Cin: in std_logic;
	S, Cout: out std_logic
);

	end component;

begin
	full_adder1: full_adder port map(A => a, B => b, Cin => cin,S=>s, Cout => c);

	process begin

		wait for 500 ms;

		a <= '1';
		b <= '1';
		cin<='1';
		wait for 500 ms;

		a <= '0';
		b <= '1';
		cin<='0';
		wait for 500 ms;

		wait;
	end process;
end test;
