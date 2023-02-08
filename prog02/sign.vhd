-- vsg_off
--sing.vhd recuerda llamar al archivo como a la entidad 12/10/2022
--Encabezado lbreras
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
--ENTIDAD CTO DE CAJA NEGRA
entity sign is
    port(
            a : in std_logic;
            b : in std_logic;
            c : in std_logic;
            d : in std_logic;
            e : in std_logic;
            f : out std_logic
    );
end sign;
--Arquitectura es el comportamiento de CTO CN
architecture comportamiento  of sign is 
--Señals signals
signal sig1: std_logic; 
signal sig2: std_logic;
signal sig3: std_logic;
--Signal es una palabra clave de VHDL. Declara una señal del tipo de datos especificado. 
--Una declaración de señal se utiliza para representar señales internas dentro de una declaración de arquitectura.
begin
    sig1 <= a or b;
    sig2 <= d and c;
    sig3 <= sig1 and sig2;
    f <= sig3 or e ;
end comportamiento;