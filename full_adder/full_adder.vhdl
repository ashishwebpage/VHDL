library ieee;
use ieee.std_logic_1164.all;

entity full_adder is

port(
	A, B,Cin: in std_logic;
	S, Cout: out std_logic
);

end full_adder;

architecture behavior of full_adder is
begin  
	process (A, B, Cin)
    	begin
        S <= A xor B xor Cin;
        Cout <= (A and B) or (Cin and (A xor B));
    end process;
end behavior; 
