LIBRARY IEEE; 
USE IEEE.STD_LOGIC_1164.ALL; 

ENTITY rom IS 
	PORT(DIR: IN INTEGER RANGE 0 TO 15; 
	  SALIDA: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); 
END ENTITY; 

ARCHITECTURE BEAS OF rom IS 
TYPE MEM IS ARRAY (0 TO 15) OF STD_LOGIC_VECTOR(7 DOWNTO 0); 
CONSTANT ROM: MEM := (
								"11111111",	--
								"11000001",	--b
								"11110101",	--r
								"10011111", --i
								"01000001", --g
								"00010001", --a
								"10000101", --d
								"00010001", --a
								"11111111",	--
								"00010011", --n
								"11000100", --o
								"11111111",	--
								"00001001", -- 9
								"11111111",	--
								"11111111",
								"11111111"	--
								);
BEGIN 

  SALIDA <=ROM(DIR); 

END BEAS;
