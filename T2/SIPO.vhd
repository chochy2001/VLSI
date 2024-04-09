

----en caso de cambiar el estado 2 del asm
library ieee;
use ieee.std_logic_1164.all;

entity SIPO is
	port(CLK: in std_logic;
		  valor: in std_logic_vector(7 downto 0);
		  Q0,Q1, Q2, Q3: buffer std_logic_vector(7 downto 0));
end entity;

architecture Behavioral of SIPO is
	begin
	process(CLK)
		begin
		if rising_edge(CLK) then
			Q0 <= valor;
			Q1 <= Q0;
			Q2 <= Q1;
			Q3 <= Q2;
		end if;
	end process;
end Behavioral;