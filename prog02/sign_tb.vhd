--sing_tb.vhd recuerda llamar al archivo como a la entidad 12/10/2022
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
--entidad tb
ENTITY sign_tb IS
END sign_tb;
---arquitectura del componente de la uut
architecture bhv of sign_tb is 
-- componente
component sign is
    port(
            a : in std_logic;
            b : in std_logic;
            c : in std_logic;
            d : in std_logic;
            e : in std_logic;
            f : out std_logic
        );
end component;
--señales
--Entrada
signal a : std_logic := '0';
signal b : std_logic := '0';
signal c : std_logic := '0';
signal d : std_logic := '0';
signal e : std_logic := '0';
--salida
signal f : std_logic;
--unidad de pruebas
begin uut: sign port map(
    a => a,
    b => b,
    c => c,
    d => d,
    e => e,
    f => f
    );
--proceso de estimulos 
        stim: process
        begin
            wait for 50 ns;
            --insertar estimulos
            e <= '0'; d <= '0'; c <= '0';b <= '0';a <= '0'; wait for 50 ns; --0
            e <= '0'; d <= '0'; c <= '0';b <= '0';a <= '1'; wait for 50 ns; --1
            e <= '0'; d <= '0'; c <= '0';b <= '1';a <= '0'; wait for 50 ns; --2
            e <= '0'; d <= '0'; c <= '0';b <= '1';a <= '1'; wait for 50 ns; --3
            e <= '0'; d <= '0'; c <= '1';b <= '0';a <= '0'; wait for 50 ns; --4
            e <= '0'; d <= '0'; c <= '1';b <= '0';a <= '1'; wait for 50 ns; --5
            e <= '0'; d <= '0'; c <= '1';b <= '1';a <= '0'; wait for 50 ns; --6
            e <= '0'; d <= '0'; c <= '1';b <= '1';a <= '1'; wait for 50 ns; --7
            e <= '0'; d <= '1'; c <= '0';b <= '0';a <= '0'; wait for 50 ns; --8
            e <= '0'; d <= '1'; c <= '0';b <= '0';a <= '1'; wait for 50 ns; --9
            e <= '0'; d <= '1'; c <= '0';b <= '1';a <= '0'; wait for 50 ns; --10
            e <= '0'; d <= '1'; c <= '0';b <= '1';a <= '1'; wait for 50 ns; --11
            e <= '0'; d <= '1'; c <= '1';b <= '0';a <= '0'; wait for 50 ns; --12
            e <= '0'; d <= '1'; c <= '1';b <= '0';a <= '1'; wait for 50 ns; --13
            e <= '0'; d <= '1'; c <= '1';b <= '1';a <= '0'; wait for 50 ns; --14
            e <= '0'; d <= '1'; c <= '1';b <= '1';a <= '1'; wait for 50 ns; --15
            e <= '1'; d <= '0'; c <= '0';b <= '0';a <= '0'; wait for 50 ns; --16
            e <= '1'; d <= '0'; c <= '0';b <= '0';a <= '1'; wait for 50 ns; --17
            e <= '1'; d <= '0'; c <= '0';b <= '1';a <= '0'; wait for 50 ns; --18
            e <= '1'; d <= '0'; c <= '0';b <= '1';a <= '1'; wait for 50 ns; --19
            e <= '1'; d <= '0'; c <= '1';b <= '0';a <= '0'; wait for 50 ns; --20
            e <= '1'; d <= '0'; c <= '1';b <= '0';a <= '1'; wait for 50 ns; --21
            e <= '1'; d <= '0'; c <= '1';b <= '1';a <= '0'; wait for 50 ns; --22
            e <= '1'; d <= '0'; c <= '1';b <= '1';a <= '1'; wait for 50 ns; --23
            e <= '1'; d <= '1'; c <= '0';b <= '0';a <= '0'; wait for 50 ns; --24
            e <= '1'; d <= '1'; c <= '0';b <= '0';a <= '1'; wait for 50 ns; --25
            e <= '1'; d <= '1'; c <= '0';b <= '1';a <= '0'; wait for 50 ns; --26
            e <= '1'; d <= '1'; c <= '0';b <= '1';a <= '1'; wait for 50 ns; --27
            e <= '1'; d <= '1'; c <= '1';b <= '0';a <= '0'; wait for 50 ns; --28
            e <= '1'; d <= '1'; c <= '1';b <= '0';a <= '1'; wait for 50 ns; --29
            e <= '1'; d <= '1'; c <= '1';b <= '1';a <= '0'; wait for 50 ns; --30
            e <= '1'; d <= '1'; c <= '1';b <= '1';a <= '1'; wait for 50 ns; --31
            wait;
        end process;
end;
        

