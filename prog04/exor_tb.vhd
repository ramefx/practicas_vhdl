----sing_tb.vhd recuerda llamar al archivo como a la entidad 12/10/2022
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--entidad tb
ENTITY exor_tb IS
END exor_tb;
---arquitectura del componente de la uut
architecture bhv of exor_tb is 
-- componente
component exor is
    port(
            a : in std_logic;
            b : in std_logic;
            out1 : out std_logic
        );
end component;
--señales
--Entrada
signal a : std_logic := '0';
signal b : std_logic := '0';
--salida
signal out1 : std_logic;
--unidad de pruebas
begin uut: exor port map(
    a => a,
    b => b,
    out1 => out1
    );
--proceso de estimulos 
        stim: process
        begin
            wait for 50 ns;
            --insertar estimulos
            b <= '0'; a <= '0'; wait for 50 ns; --0
            b <= '0'; a <= '1'; wait for 50 ns; --1
            b <= '1'; a <= '0'; wait for 50 ns; --2
            b <= '1'; a <= '1'; wait for 50 ns; --3
           
            wait;
        end process;
end;
        

