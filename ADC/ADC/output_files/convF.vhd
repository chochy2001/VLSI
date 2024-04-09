LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.NUMERIC_STD.ALL;

ENTITY convF IS
    PORT(
        CUENTAS: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
        --temp : OUT INTEGER RANGE 0 TO 9
		  M,C,D,U: OUT INTEGER RANGE 0 TO 9
    );
END ENTITY convF;

ARCHITECTURE Behavioral OF convF IS
    SIGNAL vm_int: INTEGER RANGE 0 TO 5000;
	 signal  temp :  INTEGER RANGE -50 TO 150;----50-150
	 SIGNAL temp_F: INTEGER RANGE 0 TO 500;
	 --signal temp_value : integer range TEMP_MIN to TEMP_MAX;
BEGIN
    
    PROCESS (CUENTAS)
    BEGIN
        vm_int <= TO_INTEGER(unsigned(CUENTAS)) * 5000 / 4095;

	
    temp<= (vm_int * 1000)/10;---convertir mv
       temp_F <= (temp * 9 / 5) + 32;
		  
    END PROCESS;

    U <= temp_F mod 10;
    D <= (temp_F / 10) mod 10;
    C <= (temp_F / 100) mod 10;
    M <= (temp_F / 100) / 10;
END ARCHITECTURE Behavioral;


