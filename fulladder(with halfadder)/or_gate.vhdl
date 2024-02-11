library ieee;
use ieee.std_logic_1164.all;

entity or_gate is
	port(
	bit1,bit2: in std_logic;
	result : out std_logic
);
end entity;
architecture dataflow of or_gate is
begin
	result <= bit1 or bit2;
end dataflow;



