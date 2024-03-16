LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demux IS
PORT(
    Tec: IN INTEGER RANGE 0 TO 15; 
    Cod: IN INTEGER RANGE 0 TO 1; -- Selector
    S1: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)); -- Display 
    --S2: OUT STD_LOGIC_VECTOR(7 DOWNTO 0) -- Display);
END ENTITY;

ARCHITECTURE BEAS OF demux IS
BEGIN

    PROCESS(Cod,TEC)
    BEGIN

        IF Cod = 1 THEN --Dec
            CASE Tec IS
               WHEN 1 => S1 <= "00000011"; -- 0
					WHEN 2 => S1 <= "10011111"; -- 1
					WHEN 3 => S1 <= "00100101"; -- 2
					WHEN 4 => S1 <= "00001101"; -- 3
					WHEN 5 => S1 <= "10011001"; -- 4
					WHEN 6 => S1 <= "01001001"; -- 5
					WHEN 7 => S1 <= "01000001"; -- 6
					WHEN 8 => S1 <= "00000001"; -- 8
					WHEN 9 => S1 <= "00001001"; -- 9
					
					WHEN OTHERS => S1 <= "11111111";
            END CASE;
        
        ELSIF Cod = 0 THEN --Hex 
            CASE Tec IS
					WHEN 0 => S1 <= "00000011"; -- 0
					WHEN 1 => S1 <= "10011111"; -- 1
					WHEN 2 => S1 <= "00100101"; -- 2
					WHEN 3 => S1 <= "00001101"; -- 3
					WHEN 4 => S1 <= "10011001"; -- 4
					WHEN 5 => S1 <= "01001001"; -- 5
					WHEN 6 => S1 <= "01000001"; -- 6
					WHEN 7 => S1 <= "00011111"; -- 7
					WHEN 8 => S1 <= "00000001"; -- 8
					WHEN 9 => S1 <= "00001001"; -- 9
					
					WHEN 10 => S1 <= "00010001"; -- A
					WHEN 11=> S1 <= "11000001"; -- b
					WHEN 12 => S1 <= "01100011"; -- C
					WHEN 13 => S1 <= "10000101"; -- d
					WHEN 14 => S1 <= "01100001"; -- E
					WHEN 15 => S1 <= "01110001"; -- F
					WHEN OTHERS => S1 <= "11111111";
					END CASE;
        END IF;

    END PROCESS;

END BEAS;
