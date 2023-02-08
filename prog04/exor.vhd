--exor con when else
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--Asgnaciones concurrentes "when -- else"
entity exor is
    Port ( a : in  STD_LOGIC;
            b : in  STD_LOGIC;
           out1 : out  STD_LOGIC);
end exor;
architecture Behavioral of exor is
--Signals
signal union: std_logic_vector (1 downto 0);
signal out2: std_logic;
--Compuerta not con "when--else"
begin
union <= a&b;
	out1 <= '1' when union="01" else
		    '1' when union="10" else
            '0'  ;
    out2 <= b xor a;
end Behavioral;