library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity puertas is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           f_inv : out  STD_LOGIC;
           f_and2 : out  STD_LOGIC;
           f_or2 : out  STD_LOGIC;
           f_nand2 : out  STD_LOGIC;
           f_nor2 : out  STD_LOGIC);
end puertas;

architecture Behavioral of puertas is

begin

	f_inv <= not a;
	f_and2 <= a and b;
	f_or2 <= a or b;
	f_nand2 <= a nand b;
	f_nor2 <= a nor b;


end Behavioral;