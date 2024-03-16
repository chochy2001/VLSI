LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY suma is
	PORT(	CUENTA: IN INTEGER RANGE 0 TO 14 := 0;
			S1: IN INTEGER RANGE 0 TO 255;
			S2: IN INTEGER RANGE 0 TO 255;
			S3: IN INTEGER RANGE 0 TO 255;
			S4: IN INTEGER RANGE 0 TO 255;
			SIN: OUT INTEGER RANGE 0 TO 1024);
END ENTITY;

ARCHITECTURE BEAS OF suma IS
BEGIN

	WITH CUENTA SELECT
		  SIN <= s1 			WHEN 0, 
					s2 			WHEN 1, 
					s1 + s2 		WHEN 2, 
					s3				when 3,
					s1+s3			WHEN 4,
					s2+s3 		WHEN 5,
					s1+s2+s3		WHEN 6,
					s4		 		WHEN 7,
					s4+s1 		WHEN 8,
					s4+s2 		WHEN 9,
					s4+s1+s2		WHEN 10,
					s4+s3			when 11,
					s4+s3+s1		WHEN 12,
					s4+s3+s2		WHEN 13,
					s4+s3+s2+s1	WHEN 14,
					NULL WHEN OTHERS;

END BEAS;
