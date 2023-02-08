library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;     -- Para unsigned
--use IEEE.STD_LOGIC_ARITH.ALL;
--use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ffd_tb is --mismo nombre que el archivo
end entity;

architecture tb of ffd_tb is

component D_FLIPFLOP_SOURCE is
    Port (  D, CLK, RST : in STD_LOGIC;
            Q, Qb : out STD_LOGIC);
end component ;

signal D, CLK, RST, Q, Qb : STD_LOGIC;

begin
    uut: D_FLIPFLOP_SOURCE port map(
        D => D,
        CLK => CLK,
        RST => RST,
        Q => Q,
        Qb => Qb);

    Clock: process
            begin
                CLK <= '0';
                wait for 10 ns;
                CLK <= '1';
                wait for 10 ns;
                --CLK <= '0';
                --wait for 20 ns;
                --CLK <= '1';
                --wait for 30 ns;
               -- wait; --change borrar
            end process;

    stim: process
            begin
                RST <= '0';
                D <= '0';
                wait for 40 ns;
                D <= '1';
                wait for 40 ns;
                --wait; --change borrar
                RST <= '1';
                wait for 40 ns;
            end process;
end tb;