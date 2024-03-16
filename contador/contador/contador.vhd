LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY contador IS
	PORT(F, INI, CLK: IN STD_LOGIC;
		
		M, C, D, U: BUFFER INTEGER RANGE 0 TO 9);
		
END ENTITY;

ARCHITECTURE prac1 OF contador IS
signal RST: std_logic;
BEGIN
	PROCESS(F, INI, M,C,D,U)
	variable hc, hm : integer;
	BEGIN
	IF F='1' then---FORMATO
		hm:=1; 
		HC:=1;
	ELSE 
		hm:=2; 
		HC:=3;
	END IF;
	IF INI='1' THEN---RST EXTERNO
		RST<='1';
	ELSIF M=HM AND C=HC AND D=5 AND U=9 THEN
		RST<='1';
	ELSE
		RST<='0';
	END IF;
				
	END PROCESS;
	
	PROCESS(CLK, RST)
	BEGIN
		IF FALLING_EDGE(CLK) THEN
			IF RST = '1' THEN
				U <= 0; D <= 0; C <= 0; M <= 0;
			ELSIF U = 9 THEN
				U <= 0;
				IF D = 9 THEN
					D <= 0;
					IF C = 9 THEN
						C <= 0;
						IF M = 9 THEN
							M <= 0;
						ELSE
							M <= M+1;
						END IF;
					ELSE
						C <= C+1;
					END IF;
				ELSE
					D <= D+1;
				END IF;
			ELSE
				U <= U+1;
			END IF;
		END IF;
	END PROCESS;

END prac1;