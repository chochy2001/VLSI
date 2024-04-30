 Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;
entity ASM is
	port(	valor:  IN std_logic_vector(3 downto 0);---teclado
			CLK,rst,prob,hab: in std_logic;
			dec: out  std_logic;
			N1,N2,N3,C,D, U: BUFFER std_logic_vector(3 downto 0);
			M, M2, M3: in std_logic_vector(7 downto 0);--MENSAJE 
			L0,L1, L2, L3, L4, L5: buffer std_logic_vector(7 downto 0));
end entity;

architecture Behavioral of ASM is

TYPE ESTADOS IS (INICIO, ESTADO1, ESTADO2, DELAY, DELAY2, DELAYLED,temporal,edo3,ESTADO4,DELAY4,PRUEBA,LOGRADO, WIND);
SIGNAL PRESENTE: ESTADOS := INICIO;
SIGNAL AUXI:INTEGER RANGE 0 TO 8;
SIGNAL AUX, AUX2, AUXLED: INTEGER RANGE 0 TO 10000000 := 0;
signal random_value : std_logic_vector(23 downto 0);

signal digit0, digit1, digit2 : std_logic_vector(3 downto 0);

	begin
	PROCESS(CLK, valor,rst,prob)
	
	variable seed1, seed2, seed3 : std_logic_vector(23 downto 0);
	variable  V1,V2,V3: std_logic_vector(3 downto 0);
	BEGIN
		IF RISING_EDGE(CLK) THEN
				CASE PRESENTE IS
					WHEN INICIO => 
					dec<='1';
						IF PRESENTE = INICIO THEN---generacion de numeros aleatorios 
							if hab='1' then
								 U <= "1010";
								 D <= "1010";
								 C <= "1010";
								 N1 <= "1010";
								 N2<= "1010";
								 N3<= "1010";
								  seed1 := X"000001";
									seed2 := X"9823AB";
									seed3 := X"123456";
									random_value <= (others => '0');
								 AUXI<=0;
							elsif hab='0' then
								seed1 := seed1 xor (seed1(4) xor seed1(3)) & seed1(23 downto 1);
								seed2 := seed2 xor (seed2(6) xor seed2(2)) & seed2(23 downto 1);
								seed3 := seed3 xor (seed3(9) xor seed3(8)) & seed3(23 downto 1);
								random_value <= seed1 xor seed2 xor seed3;
								N1 <= random_value(3 downto 0);
								N2 <= random_value(7 downto 4);
								N3 <= random_value(11 downto 8);
								
								V1:=N1;
								V2:=N2;
								V3:=N3;
	
								PRESENTE <= DELAYLED;
							end if;
						END IF;
				
					WHEN ESTADO1 => --INGRESAR VALORES TECLADO 
						C <= D;
						D <= U;
						U <= "0001";---VALOR;
						PRESENTE <= DELAY;
				
				
					WHEN DELAY => 
						IF AUX = 500 THEN
							AUX <= 0;
							PRESENTE <= temporal;
						ELSE
							AUX <= AUX + 1;
							PRESENTE <= DELAY;
						END IF;
					when temporal =>
						if rst='1' then 
							presente<= estado1;
						elsif rst='0' then 
							presente<=prueba;---ESTADO2;
						end if;
						
					
					WHEN PRUEBA =>
						 U<="0001";
						 D <= "0001";
						 C <= "0001";
						 V1 := "0001";
						 V2:= "0001";
						 V3:= "0001";
						
						PRESENTE<= ESTADO2;
						
					WHEN ESTADO2=>
					L0 <= "11111111";
					L1 <= L0;
					L2 <= L1;
					L3 <= L2;
					L4 <= L3;
					L5 <= L4;
					if prob='1' then 
						U<=U;
						D<=D;
						C<=C;
					elsif prob='0' then 
						dec<='0';
								
						IF V1=U AND V2=D AND V3=C THEN
								 U <= "1010";
								 D <= "1010";
								 C <= "1010";
								 N1 <= "1010";
								 N2<= "1010";
								 N3<= "1010";
							IF AUXI<3 THEN  
								AUXI<=AUXI+1;
								PRESENTE <= ESTADO4; 
							ELSIF AUX=3 THEN ---YA SON 3 VALIDOS
								PRESENTE<=LOGRADO;
							END IF;
						ELSE
							PRESENTE <= edo3;
						END IF;
					end if;
					
					when edo3=>
						 U <= "1010";
						 D <= "1010";
						 C <= "1010";
						 N1 <= "1010";
						 N2<= "1010";
						 N3<= "1010";
						 L0 <= M3;
						 L1 <= L0;
					    L2 <= L1;
						 L3 <= L2;
						 L4 <= L3;
						 L5 <= L4;
						 presente<=delay2;
						 
					WHEN DELAY2 => 
					IF AUX2 = 500 THEN
						AUX2 <= 0;
						PRESENTE <= edo3;
						IF AUX=20 THEN
							AUX<=0;
							PRESENTE<=INICIO;
						ELSE
							AUX<=AUX+1;
						END IF;
					ELSE
						AUX2 <= AUX2 + 1;
						PRESENTE <= DELAY2;
					END IF;
					
					WHEN ESTADO4 =>
						L0 <= M;
						L1 <= L0;
						L2 <= L1;
						L3 <= L2;
						L4 <= L3;
						L5 <= L4;
						PRESENTE <=DELAY4;
						
					WHEN DELAY4 =>
						IF AUX2 = 500 THEN
						AUX2 <= 0;
						PRESENTE <= ESTADO4;
							IF AUX=20 THEN
								AUX<=0;
								PRESENTE<=INICIO;
							ELSE
								AUX<=AUX+1;
							END IF;
						ELSE
							AUX2 <= AUX2 + 1;
							PRESENTE <= DELAY2;
						END IF;
						
					WHEN LOGRADO =>
						L0 <= M2;
						L1 <= L0;
						L2 <= L1;
						L3 <= L2;
						L4 <= L3;
						L5 <= L4;
						
					WHEN WIND =>
						IF AUX2 = 500 THEN
						AUX2 <= 0;
						PRESENTE <= LOGRADO;
						ELSE
							AUX2 <= AUX2 + 1;
							PRESENTE <= DELAY2;
						END IF;
						
					WHEN DELAYLED => 
					IF AUXLED = 5000 THEN
						AUXLED <= 0;
						N1 <= "1010";
						N2<= "1010";
						N3<= "1010";
						PRESENTE <= estado1;
					ELSE
						AUXLED <= AUXLED + 1;
						PRESENTE <= DELAYLED;
					END IF;
						
				END CASE;
		END IF;
	END PROCESS;
end Behavioral;