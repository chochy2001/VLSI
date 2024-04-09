library ieee;
use ieee.std_logic_1164.all;

ENTITY dem is 
port(txC,txF: in std_logic;
	  sel: in std_logic;
	  Tx: out std_logic);
end dem;

architecture beha of dem is
begin 

with sel select
	Tx <= txC when '0',
			txF when '1';

end beha;