LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ASM IS
	PORT(Echo, CLK: IN STD_LOGIC;
	      C,D, U: BUFFER INTEGER RANGE 0 TO 9; 
			 T: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE DBA OF ASM IS
TYPE ESTADOS IS (INICIO, ESTADO1, ESTADO2, ESTADO3, DELAY);
SIGNAL PRESENTE: ESTADOS := INICIO;
SIGNAL AUX: INTEGER RANGE 0 TO 100000 := 0;

BEGIN

	PROCESS(CLK)
	BEGIN
		IF RISING_EDGE(CLK) THEN
			CASE PRESENTE IS
				WHEN INICIO => -- TAREAS EN INICIO
					IF PRESENTE = INICIO THEN
						T <= '1'; --Como esta en negada ahora es 1
						U <= 0;
						D <= 0;
						C <= 0;
						PRESENTE <= ESTADO1;
					END IF;
					
				WHEN ESTADO1 => -- TAREAS EN ESTADO1
					T <= '0'; --Como esta en negada ahora es 0
					PRESENTE <= ESTADO2;
									
				WHEN ESTADO2 => -- TAREAS EN ESTADO2
					T <= '1'; --Como esta en negada ahora 1
						IF ECHO = '1' THEN
							PRESENTE <= ESTADO3;
						ELSE
							PRESENTE <= INICIO;
						END IF;
				WHEN ESTADO3 => -- TAREAS EN ESTADO3
					IF U = 9 THEN
							U <= 0;
							IF D = 9 THEN
									D <= 0;
									IF C = 4 THEN
											C <= 0;
									ELSE
											C <= C + 1;
									END IF;
							ELSE 
								D <= D + 1;
							END IF;
						ELSE
							U <= U + 1;
					END IF;

					IF ECHO = '1' THEN
						PRESENTE <= ESTADO3;
					ELSE 
						PRESENTE <= DELAY;
					END IF;
					
				WHEN DELAY => -- TAREAS EN DELAY
				IF AUX = 10000 THEN
					AUX <= 0;
					PRESENTE <= INICIO;
				ELSE
					AUX <= AUX + 1;
					PRESENTE <= DELAY;
				END IF;
			END CASE;
		END IF;
	END PROCESS;

END DBA;
