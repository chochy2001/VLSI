Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


Entity teclado is 
	PORT(COL: IN STD_LOGIC_VECTOR (3 DOWNTO 0);
		  FIL: OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
		  Tec: OUT INTEGER RANGE 0 TO 15;
		  CLK: IN STD_LOGIC);
END  ENTITY;

ARCHITECTURE BEAS OF teclado IS 
SIGNAL CUENTA: STD_LOGIC_VECTOR (3 DOWNTO 0);
SIGNAL HAB: STD_LOGIC;

BEGIN

	  PROCESS(CLK)
	  BEGIN 
	     IF FALLING_EDGE (CLK) THEN
			IF HAB = '1' THEN 
				CUENTA<=CUENTA;
		    ELSIF CUENTA="1111" THEN
				CUENTA<="0000";
			ELSE 
				CUENTA<=CUENTA + "0001";
			END IF;
		 END IF;
	END PROCESS;
		
	WITH CUENTA(1 DOWNTO 0) SELECT
		HAB <= NOT COL(0) WHEN "00", --MSB
			    NOT COL(1) WHEN "01",
		       NOT COL(2) WHEN "10",
             NOT COL(3) WHEN "11"; --LSB
              
   WITH CUENTA (3 DOWNTO 2) SELECT 
		FIL <= "1110" WHEN "00",
			    "1101" WHEN "01",
			    "1011" WHEN "10",
			    "0111" WHEN "11";
	
	WITH CUENTA SELECT
		Tec <=  0 WHEN "0010",
				  1 WHEN "1111",
				  2 WHEN "1110",
				  3 WHEN "1101",
				  4 WHEN "1011",
				  5 WHEN "1010",
				  6 WHEN "1001",
				  7 WHEN "0111",
				  8 WHEN "0110",
				  9 WHEN "0101",
				 10 WHEN "1100", -- A
				 11 WHEN "1000", -- b
				 12 WHEN "0100", -- C
				 13 WHEN "0000", -- d
				 14 WHEN "0011", -- *
				 15 WHEN "0001"; -- #
		
    
END BEAS;
