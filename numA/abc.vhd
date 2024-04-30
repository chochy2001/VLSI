library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

ENTITY abc IS
	PORT(LETRA: IN INTEGER RANGE 0 TO 128;
			dec: in  std_logic;
			NUMERO: in std_logic_vector(3 downto 0);
	       SAL: OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
END abc;

ARCHITECTURE BEAS OF abc IS
BEGIN
	process(NUMERO,DEC,LETRA)
   begin
	IF dec='0' THEN
		CASE LETRA IS
		 WHEN 0 => SAL <= "00010001"; -- A
		 WHEN 1 => SAL <= "11000001"; -- b
		 WHEN 2 => SAL <= "01100001"; -- C
		 WHEN 3 => SAL <= "10000101"; -- d
		 WHEN 4 => SAL <= "01100001"; -- E
		 WHEN 5 => SAL <= "01110001"; -- F
		 WHEN 6 => SAL <= "01000001"; -- G
		 WHEN 7 => SAL <= "11010001"; -- H
		 WHEN 8 => SAL <= "10011111"; -- I
		 WHEN 9 => SAL <= "10000111"; -- J
		 WHEN 10 => SAL <= "01010001"; -- K
		 WHEN 11 => SAL <= "11100011"; -- L
		 WHEN 12 => SAL <= "01101101"; -- M
		 WHEN 13 => SAL <= "00010011"; -- n
		 WHEN 14 => SAL <= "01010101"; -- ñ
		 WHEN 15 => SAL <= "11000101"; -- o
		 WHEN 16 => SAL <= "00110001"; -- P
		 WHEN 17 => SAL <= "00011001"; -- q
		 WHEN 18 => SAL <= "11110101"; -- r
		 WHEN 19 => SAL <= "01001001"; -- S
		 WHEN 20 => SAL <= "11100001"; -- t
		 WHEN 21 => SAL <= "10000011"; -- U
		 WHEN 22 => SAL <= "10111001"; -- v
		 WHEN 23 => SAL <= "01000111"; -- w
		 WHEN 24 => SAL <= "10010001"; -- X
		 WHEN 25 => SAL <= "10001001"; -- Y
		 WHEN 26 => SAL <= "00100101"; -- Z
		  WHEN 27 => SAL <= "11111111"; -- 
		 WHEN OTHERS => SAL <= "11111111";
END CASE;

			elsIF dec='1' THEN --numeros
				case to_integer(unsigned(NUMERO)) is
					when 0 => SAL <= "00000011"; -- 0
					when 1 => SAL <= "10011111"; -- 1
					when 2 => SAL <= "00100101"; -- 2
					when 3 => SAL <= "00001101"; -- 3
					when 4 => SAL <= "10011001"; -- 4
					when 5 => SAL <= "01001001"; -- 5
					when 6 => SAL <= "01000001"; -- 6
					when 7 => SAL <= "00011111"; -- 7
					when 8 => SAL <= "00000001"; -- 8
					when 9 => SAL <= "00001001"; -- 9
					when 10 => SAL <= "11111111"; -- 9
					when others => SAL <= "10011111";
			  end case;
		END IF;
	end process;
END BEAS;
