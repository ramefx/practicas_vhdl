LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY comb_tb IS
END comb_tb;

---arquitectura del componente de la uut
architecture bhv of comb_tb is 
-- componente
component comb is
    port(
            a : in std_logic;
            b : in std_logic;
            c : in std_logic;
            d : in std_logic;
            s,y : out std_logic
        );
end component;
--señales
--Entrada
signal a : std_logic := '0';
signal b : std_logic := '0';
signal c : std_logic := '0';
signal d : std_logic := '0';
--salida
signal s,y : std_logic;
--unidad de pruebas
begin uut: comb port map(
    a => a,
    b => b,
    c => c,
    d => d,
    s => s,
    y => y
    );
--proceso de estimulos 
        stim: process
        begin
            wait for 100 ns;
            --insertar estimulos
            d <= '0'; c <= '0';b <= '0';a <= '0'; wait for 100 ns; --0
            d <= '0'; c <= '0';b <= '0';a <= '1'; wait for 100 ns; --1
            d <= '0'; c <= '0';b <= '1';a <= '0'; wait for 100 ns; --2
            d <= '0'; c <= '0';b <= '1';a <= '1'; wait for 100 ns; --3
            d <= '0'; c <= '1';b <= '0';a <= '0'; wait for 100 ns; --4
            d <= '0'; c <= '1';b <= '0';a <= '1'; wait for 100 ns; --5
            d <= '0'; c <= '1';b <= '1';a <= '0'; wait for 100 ns; --6
            d <= '0'; c <= '1';b <= '1';a <= '1'; wait for 100 ns; --7
            d <= '1'; c <= '0';b <= '0';a <= '0'; wait for 100 ns; --8
            d <= '1'; c <= '0';b <= '0';a <= '1'; wait for 100 ns; --9
            d <= '1'; c <= '0';b <= '1';a <= '0'; wait for 100 ns; --10
            d <= '1'; c <= '0';b <= '1';a <= '1'; wait for 100 ns; --11
            d <= '1'; c <= '1';b <= '0';a <= '0'; wait for 100 ns; --12
            d <= '1'; c <= '1';b <= '0';a <= '1'; wait for 100 ns; --13
            d <= '1'; c <= '1';b <= '1';a <= '0'; wait for 100 ns; --14
            d <= '1'; c <= '1';b <= '1';a <= '1'; wait for 100 ns; --15
            wait;
        end process;
end;
        

