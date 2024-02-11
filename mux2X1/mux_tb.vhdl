library ieee;
use ieee.std_logic_1164.all;

entity mux_tb is
end mux_tb;

architecture behavior of mux_tb is

    signal  a,b,s,en,o : std_logic;
    component mux 
           Port (
	        A, B, S, En : in std_logic;
        	O : out std_logic
    );

    end component;

begin
    
    mux1: mux port map(A  => a, B => b, S => s, En => en,O=>o);

    process begin
	    wait for 200 ns;
	    en<='1';
	    a<='1';
	    b<='0';
	    s<='1';
	wait for 200 ns;
	    en<='1';
            a<='1';
            b<='0';
            s<='0';
         wait for 200 ns;
           
wait;
    end process;

end behavior; 
