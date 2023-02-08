--asing_tb.vhd recuerda llamar al archivo como a la entidad 24/10/2022
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--entidad tb
ENTITY asig_tb IS
END asig_tb;
---arquitectura del componente de la uut
architecture bhv of asig_tb is 
-- componente
component asig is
    port(
            a : in std_logic;
            out1 : out std_logic
        );
end component;
--señales
--Entrada
signal a : std_logic := '0';
--salida
signal out1 : std_logic;
--unidad de pruebas
begin uut: asig port map(
    a => a,
    out1 => out1
    );
--proceso de estimulos 
        stim: process
        begin
            wait for 10 ns;
            --insertar estimulos
            a <= '0'; wait for 10 ns; --0
            a <= '1'; wait for 10 ns; --1
            a <= '0'; wait for 10 ns; --0
            a <= '1'; wait for 10 ns; --1
            a <= '0'; wait for 10 ns; --0
            a <= '1'; wait for 10 ns; --1
            a <= '0'; wait for 10 ns; --0
            a <= '1'; wait for 10 ns; --1
            a <= '0'; wait for 10 ns; --0
            a <= '1'; wait for 10 ns; --1
            a <= '0'; wait for 10 ns; --0
            a <= '1'; wait for 10 ns; --1
            a <= '0'; wait for 10 ns; --0
            a <= '1'; wait for 10 ns; --1
            wait;
        end process;
end;