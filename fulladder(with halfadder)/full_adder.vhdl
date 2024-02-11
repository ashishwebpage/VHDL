library ieee;
use ieee.std_logic_1164.all;

entity full_adder is

port(
	X, Y,Cin: in std_logic;
	Sout, Cout: out std_logic
);

end full_adder;
architecture behavior of full_adder is

	component half_adder 
	port(
	A,B : in std_logic;         
	S,C: out std_logic
);
	end component;
	component or_gate 
		port(
		bit1,bit2 : in std_logic;
		result:out std_logic
	);
	end component;
	signal T1,T2,T3:std_logic;

begin
    component1:half_adder port map(A =>X,B=>Y,S=>T1,C=>T2);
    component2:half_adder port map(A=>T1,B=>Cin,S=>Sout,C=>T3);
    component3:or_gate port map(bit1=>T3,bit2=>T2,result=>Cout);

end behavior; 


