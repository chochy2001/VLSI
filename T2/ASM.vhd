Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity ASM is
	port(	CLK, H_ASM: in std_logic;
			LED: OUT STD_LOGIC;
			valor:  IN INTEGER RANGE 0 TO 15;---teclado
			HAB: in STD_LOGIC;
			M, C,D, U: BUFFER INTEGER RANGE 0 TO 9);
end entity;

architecture Behavioral of ASM is

TYPE ESTADOS IS (INICIO, ESTADO1, ESTADO2, ESTADO3, DELAY, DELAY2, DELAYLED);
SIGNAL PRESENTE: ESTADOS := INICIO;
SIGNAL AUX: INTEGER RANGE 0 TO 5000 := 0;
SIGNAL AUX2: INTEGER RANGE 0 TO 5000 := 0;
SIGNAL AUXLED: INTEGER RANGE 0 TO 1000 := 0;

	begin
	PROCESS(CLK,H_ASM, valor)
	BEGIN
		IF RISING_EDGE(CLK) THEN
			CASE PRESENTE IS
				WHEN INICIO => 
					IF PRESENTE = INICIO THEN
						U <= 0;
						D <= 0;
						C <= 0;
						M <= 0;
						PRESENTE <= ESTADO1;
					END IF;
					
				WHEN ESTADO1 => 
					if H_ASM='1' AND HAB = '1' THEN
						PRESENTE <= ESTADO2;
					ELSif H_ASM='0' AND HAB = '1' THEN
						 IF valor = 15 THEN -- '#'
							  PRESENTE <= INICIO;
						 ELSIF valor = 14 THEN -- '*' 
							PRESENTE <= ESTADO3;
						END IF;
					END IF;
					
				WHEN ESTADO2 => 
				
					M <= C;
					C <= D;
					D <= U;
					U <= valor;
					
					PRESENTE <= DELAY;
					
				WHEN DELAY => 
				IF AUX = 500 THEN
					AUX <= 0;
					PRESENTE <= ESTADO1;
				ELSE
					AUX <= AUX + 1;
					PRESENTE <= DELAY;
				END IF;
				
				WHEN ESTADO3 =>
					IF U > 0 THEN
						U <= U - 1;
					ELSIF D > 0 THEN
						D <= D - 1;
						U <= 9;
					ELSIF C > 0 THEN
						C <=  C - 1;
						D <= 9;
						U <= 9;
					ELSIF M > 0 THEN
						M <= M - 1;
						C <= 9;
						D <= 9;
						U <= 9;
					END IF;
					
					IF U = 0 AND D = 0 AND C = 0 AND M = 0 THEN
						LED <= '1';
						PRESENTE <= DELAYLED;
					ELSE
						PRESENTE <= DELAY2;
					END IF;
					
				WHEN DELAY2 => 
				IF AUX2 = 5 THEN
					AUX2 <= 0;
					PRESENTE <= ESTADO3;
				ELSE
					AUX2 <= AUX2 + 1;
					PRESENTE <= DELAY2;
				END IF;
				
				WHEN DELAYLED => 
				IF AUXLED = 1000 THEN
					AUXLED <= 0;
					LED <= '0';
					PRESENTE <= INICIO;
				ELSE
					AUXLED <= AUXLED + 1;
					PRESENTE <= DELAYLED;
				END IF;
				
			END CASE;
		END IF;
	END PROCESS;
end Behavioral;