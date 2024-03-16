LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY sipo IS
             PORT(CLK: IN STD_LOGIC;
	            D: IN STD_LOGIC_VECTOR (7 DOWNTO 0);
					H: IN STD_LOGIC;
					Q1, Q2, Q3, Q4, Q5, Q6: BUFFER STD_LOGIC_VECTOR (7 DOWNTO 0));
END ENTITY;

ARCHITECTURE BEAS OF sipo IS
BEGIN
      PROCESS(CLK)
      BEGIN
			IF RISING_EDGE (CLK) THEN
				IF H = '1' THEN
					  Q1 <= D;
					  Q2 <= Q1;
					  Q3 <= Q2;
					  Q4 <= Q3;
					  Q5 <= Q4;
					  Q6 <= Q5;
				 ELSE
					  Q1 <= "11111111";
					  Q2 <= "11111111";
					  Q3 <= "11111111";
					  Q4 <= "11111111";
					  Q5 <= "11111111";
					  Q6 <= "11111111";
				 END IF;
			END IF;
		END PROCESS;

END BEAS;
