LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY demux IS
    PORT (
        C, D, U: IN INTEGER RANGE 0 TO 9;
        SEL: IN INTEGER RANGE 0 TO 3;
        SEG0: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        SEG1: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        SEG2: OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        SEG3: OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
    );
END ENTITY demux;

ARCHITECTURE BEAS OF demux IS
    SIGNAL allow_assignments : BOOLEAN := TRUE;
BEGIN
    PROCESS(SEL, C, D, U)
    BEGIN
        CASE SEL IS
            WHEN 0 =>
                IF C = 1 THEN
                    SEG0 <= "00010001"; --A
                    SEG1 <= "11100011"; --L 
                    SEG2 <= "11100001"; --T
                    SEG3 <= "11000101"; --O
                    allow_assignments <= FALSE;
                END IF;
            
            WHEN 1 =>
                IF D = 7 AND U = 5 THEN
                    SEG0 <= "00010001"; --A
                    SEG1 <= "11100011"; --L 
                    SEG2 <= "11100001"; --T
                    SEG3 <= "11000101"; --O
                    allow_assignments <= FALSE;
                END IF;
            
            WHEN 2 =>
                IF D = 5 THEN
                    SEG0 <= "00010001"; --A
                    SEG1 <= "11100011"; --L 
                    SEG2 <= "11100001"; --T
                    SEG3 <= "11000101"; --O
                    allow_assignments <= FALSE;
                END IF;
            
            WHEN 3 =>
                IF D = 2 AND U = 5 THEN
                    SEG0 <= "00010001"; --A
                    SEG1 <= "11100011"; --L 
                    SEG2 <= "11100001"; --T
                    SEG3 <= "11000101"; --O
                    allow_assignments <= FALSE;
                END IF;
                
            WHEN OTHERS =>
                NULL;
        END CASE;
        IF allow_assignments THEN
            CASE C IS
                WHEN 0 => SEG0 <= "00000011"; -- 0
                WHEN 1 => SEG0 <= "10011111"; -- 1
                WHEN 2 => SEG0 <= "00100101"; -- 2
                WHEN 3 => SEG0 <= "00001101"; -- 3
                WHEN 4 => SEG0 <= "10011001"; -- 4
                WHEN 5 => SEG0 <= "01001001"; -- 5
                WHEN 6 => SEG0 <= "01000001"; -- 6
                WHEN 7 => SEG0 <= "00011111"; -- 7
                WHEN 8 => SEG0 <= "00000001"; -- 8
                WHEN 9 => SEG0 <= "00001001"; -- 9
            END CASE;
            
            CASE D IS
                WHEN 0 => SEG1 <= "00000011"; -- 0
                WHEN 1 => SEG1 <= "10011111"; -- 1
                WHEN 2 => SEG1 <= "00100101"; -- 2
                WHEN 3 => SEG1 <= "00001101"; -- 3
                WHEN 4 => SEG1 <= "10011001"; -- 4
                WHEN 5 => SEG1 <= "01001001"; -- 5
                WHEN 6 => SEG1 <= "01000001"; -- 6
                WHEN 7 => SEG1 <= "00011111"; -- 7
                WHEN 8 => SEG1 <= "00000001"; -- 8
                WHEN 9 => SEG1 <= "00001001"; -- 9
            END CASE;
            
            CASE U IS
                WHEN 0 => SEG2 <= "00000011"; -- 0
                WHEN 1 => SEG2 <= "10011111"; -- 1
                WHEN 2 => SEG2 <= "00100101"; -- 2
                WHEN 3 => SEG2 <= "00001101"; -- 3
                WHEN 4 => SEG2 <= "10011001"; -- 4
                WHEN 5 => SEG2 <= "01001001"; -- 5
                WHEN 6 => SEG2 <= "01000001"; -- 6
                WHEN 7 => SEG2 <= "00011111"; -- 7
                WHEN 8 => SEG2 <= "00000001"; -- 8
                WHEN 9 => SEG2 <= "00001001"; -- 9
            END CASE;
				SEG3 <= "11111111";
        END IF;
		  allow_assignments <= TRUE;
    END PROCESS;
END BEAS;
