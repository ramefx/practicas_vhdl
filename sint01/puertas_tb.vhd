LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY puertas_tb IS
END puertas_tb;
 
ARCHITECTURE behavior OF puertas_tb IS 
 
    COMPONENT puertas
    PORT(
         a : IN  std_logic;
         b : IN  std_logic;
         f_inv : OUT  std_logic;
         f_and2 : OUT  std_logic;
         f_or2 : OUT  std_logic;
         f_nand2 : OUT  std_logic;
         f_nor2 : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal a : std_logic := '0';
   signal b : std_logic := '0';

 	--Outputs
   signal f_inv : std_logic;
   signal f_and2 : std_logic;
   signal f_or2 : std_logic;
   signal f_nand2 : std_logic;
   signal f_nor2 : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   
 
BEGIN
    uut: puertas PORT MAP (
          a => a,
          b => b,
          f_inv => f_inv,
          f_and2 => f_and2,
          f_or2 => f_or2,
          f_nand2 => f_nand2,
          f_nor2 => f_nor2
        );

 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
     a <= '0' ;
	  b <= '0' ;
	  
	  wait for 100 ns;
	  
	  a <= '0' ;
	  b <= '1' ;
	  
	  wait for 100 ns ;
	  
	  a <= '1' ;
	  b <= '0' ;
	  
	  wait for 100 ns ;
	  
	  a <= '1' ;
	  b <= '1' ;
	  
	  wait for 100 ns ;

      -- insert stimulus here 

      wait;
   end process;

END;
