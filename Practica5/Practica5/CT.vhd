library ieee;
use ieee.std_logic_1164.all;

ENTITY CT is
port(CUENTA: in integer range 0 to 4;
	  DUTY: out integer range 0 to 100);
END CT;

architecture HAPG of CT is
begin	
				
	with CUENTA select 
		DUTY<=0 when 0,
		14 when 1,
		49 when 2,
		74 when 3,
		99 when others;
end HAPG;