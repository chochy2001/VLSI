Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;


Entity conta_rts is 
	PORT(	CLK: IN STD_LOGIC;
			RST: IN STD_LOGIC);
END  ENTITY;

ARCHITECTURE BEAS OF conta_rts IS
SIGNAL CUENTA: STD_LOGIC_VECTOR (3 DOWNTO 0);
BEGIN

	  PROCESS(CLK)
	  BEGIN 
	     IF FALLING_EDGE (CLK) THEN
			IF RST = '1' THEN 
				CUENTA<="0000";
		    ELSIF CUENTA="1111" THEN
				CUENTA<="0000";
			ELSE 
				CUENTA<=CUENTA + "0001";
			END IF;
		 END IF;
	END PROCESS;

    
END BEAS;

