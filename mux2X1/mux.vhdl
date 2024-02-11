library ieee;
use ieee.std_logic_1164.all;

entity mux is
    Port (
       A, B, S, En : in std_logic;
        O : out std_logic
    );
end mux;

architecture behaviour of mux is
begin
    process(A, B, S, En)  
    begin
        if En = '1' then
            if S = '0' then
                O <=A;
            else
                O <= B;
            end if;
        else
            O <= '0';
        end if;
    end process;
end behaviour;
