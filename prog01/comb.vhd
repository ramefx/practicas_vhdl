--Encabezado lbreras
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

--ENTIDAD CTO DE CAJA NEGRA
entity comb is
    port(
            a : in std_logic;
            b : in std_logic;
            c : in std_logic;
            d : in std_logic;
            s,y : out std_logic
    );
end comb;
--Arquitectura es el comportamiento de CTO CN

architecture comportamiento  of comb is --falto is
--Señals signals 
    begin
    s <= (d nand b)or(not c)or((not b)and a)or(d and b and (not a));
    y <= ((not b)and(not a)) or (b and (not a)) or ((not d)and c); --dcba abcd
end comportamiento;