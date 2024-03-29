LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY suma is
	PORT(	sel: IN 	STD_LOGIC_VECTOR (1 DOWNTO 0);
			S1: IN INTEGER RANGE 0 TO 255;
			S2: IN INTEGER RANGE 0 TO 255;
			S3: IN INTEGER RANGE 0 TO 255;
			S4: IN INTEGER RANGE 0 TO 255;
			SIN: OUT INTEGER RANGE 0 TO 2147483648);
END ENTITY;

ARCHITECTURE BEAS OF suma IS
BEGIN

	WITH SEL SELECT
		  SIN <= S1 			WHEN "00", 
					S1+S2 		WHEN "01", 
					S1+S2+S3 	WHEN "10", 
					S1+S2+S3+S4	WHEN "11";
END BEAS;
