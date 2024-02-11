library ieee;
use ieee.std_logic_1164.all;

entity decoder_tb is
end decoder_tb;

architecture test of decoder_tb is
	    signal i : std_logic_vector(1 downto 0);
    	    signal  o: std_logic_vector(3 downto 0);
	component decoder		
	port(
		I: in STD_LOGIC_VECTOR(1 downto 0);
		O:out STD_LOGIC_VECTOR(3 downto 0)
	);

	end component;

begin
	decoder1: decoder port map(I=> i, O => o);

	process begin

		wait for 500 ms;

		i <= "01";
		wait for 500 ms;
		i <= "11";
		wait for 500 ms;
		wait;
	end process;
end test;
