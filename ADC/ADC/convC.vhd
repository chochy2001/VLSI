LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY convC IS
    PORT(
        CUENTAS: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
        --temp : OUT INTEGER RANGE 0 TO 9
		  M,C,D,U: OUT INTEGER RANGE 0 TO 9
    );
END ENTITY convC;

ARCHITECTURE Behavioral OF convC IS
    SIGNAL vm_int: INTEGER RANGE 0 TO 5000;
	 signal  temp :  INTEGER RANGE -50 TO 150;----50-150
	 --signal temp_value : integer range TEMP_MIN to TEMP_MAX;
BEGIN
    
    PROCESS (CUENTAS)
    BEGIN
        vm_int <= TO_INTEGER(unsigned(CUENTAS)) * 5000 / 4095;
    END PROCESS;
	
    temp<= (vm_int * 1000)/10;---convertir mv
	 
	 U <= temp mod 10;
    D <= (temp/ 10) mod 10;
    C <= (temp / 100) mod 10;
    M <= (temp / 1000) mod 10;
END ARCHITECTURE Behavioral;


