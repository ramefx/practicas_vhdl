library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;     -- Para unsigned
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity D_FLIPFLOP_SOURCE is
Port (  D, CLK, RST : in  STD_LOGIC;
        Q, Qb : out  STD_LOGIC);
end D_FLIPFLOP_SOURCE;

architecture Behavioral of D_FLIPFLOP_SOURCE is

begin
    process (D, CLK, RST)
    begin
        if (RST = '1') then
            Q <= '0';
        elsif (rising_edge(CLK)) then ---thiis for data flip-flop, for delay flip-flop use negative edge
            Q <= D;
            Qb <= not D;
        end if;
end process;
end Behavioral;