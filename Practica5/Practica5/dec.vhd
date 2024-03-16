library ieee;
use ieee.std_logic_1164.all;
ENTITY dec is
port(DUTY: in integer range 0 to 100;
	  S1: out std_logic_vector(7 downto 0));
END dec;

architecture HAPG of dec is
begin 

    PROCESS(DUTY)
    BEGIN
            CASE DUTY IS
               WHEN 0 => S1 <= "00000011"; -- 0
					WHEN 14 => S1 <= "10011111"; -- 1
					WHEN 49 => S1 <= "00100101"; -- 2
					WHEN 74=> S1 <= "00001101"; -- 3
					WHEN 99 => S1 <= "10011001"; -- 4
					--WHEN 6 => S1 <= "01001001"; -- 5
					--WHEN 7 => S1 <= "01000001"; -- 6
					--WHEN 8 => S1 <= "00000001"; -- 8
					--WHEN 9 => S1 <= "00001001"; -- 9
					
					WHEN OTHERS => S1 <= "11111111";
            END CASE;
end process;
end HAPG;