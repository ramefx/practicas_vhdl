--asing.vhd recuerda llamar al archivo como a la entidad 24/10/2022
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Asgnaciones concurrentes "when -- else"
entity asig is
    Port ( a : in  STD_LOGIC;
           out1 : out  STD_LOGIC);
end asig;

architecture Behavioral of asig is
--Signals
--Compuerta not con "when--else"
begin
	out1 <= '0' when a='1' else
		    '1' when a='0'  ;
end Behavioral;