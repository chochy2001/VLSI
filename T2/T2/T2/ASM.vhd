Library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity ASM is
port(CLK, H_ASM: in std_logic;
     valor: in INTEGER RANGE 0 TO 15;---teclado
     HAB: in STD_LOGIC;
     M, C, D, U: BUFFER INTEGER RANGE 0 TO 9;
     digitos_encendidos: OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
end entity;

architecture Behavioral of ASM is
TYPE ESTADOS IS (INICIO, ESTADO1, ESTADO2, ESTADO3, DELAY);
SIGNAL PRESENTE: ESTADOS := INICIO;
SIGNAL AUX: INTEGER RANGE 0 TO 100000000 := 0;
SIGNAL M1, C1, D1, U1: INTEGER RANGE 0 TO 9:= 0;
SIGNAL digitos_encendidos_int: STD_LOGIC_VECTOR(3 DOWNTO 0) := "1111";

begin
PROCESS(CLK,H_ASM, valor)
BEGIN
IF RISING_EDGE(CLK) THEN
  -- Actualizar digitos_encendidos
  IF M = 0 THEN
    digitos_encendidos_int(3) <= '0'; -- Apagar miles
  ELSE
    digitos_encendidos_int(3) <= '1'; -- Encender miles
  END IF;

  IF M = 0 AND C = 0 THEN 
    digitos_encendidos_int(2) <= '0'; -- Apagar centenas
  ELSE
    digitos_encendidos_int(2) <= '1'; -- Encender centenas  
  END IF;

  IF M = 0 AND C = 0 AND D = 0 THEN
    digitos_encendidos_int(1) <= '0'; -- Apagar decenas
  ELSE 
    digitos_encendidos_int(1) <= '1'; -- Encender decenas
  END IF;

  digitos_encendidos_int(0) <= '1'; -- Unidades siempre encendidas

  CASE PRESENTE IS
    WHEN INICIO =>
      IF PRESENTE = INICIO THEN
        U1 <= 0;
        D1 <= 0;
        C1 <= 0;
        M1 <= 0;
        PRESENTE <= ESTADO1;
      END IF;

    WHEN ESTADO1 =>
      if H_ASM='1' AND HAB = '1' THEN
        PRESENTE <= ESTADO2;
      ELSif H_ASM='0' THEN
        IF valor = 15 THEN -- '#'
          PRESENTE <= INICIO;
        ELSIF valor = 14 THEN -- '*'
          PRESENTE <= ESTADO3;
        END IF;
      END IF;

    WHEN ESTADO2 =>
      M1 <= C1;
      C1 <= D1;
      D1 <= U1;
      U1 <= valor;
      PRESENTE <= DELAY;

    WHEN DELAY =>
      IF AUX = 100000000 THEN
        AUX <= 0;
        PRESENTE <= ESTADO1;
      ELSE
        AUX <= AUX + 1;
        PRESENTE <= DELAY;
      END IF;

    WHEN ESTADO3 =>
      IF U1 > 0 THEN
        U1 <= U1 - 1;
      ELSIF D1 > 0 THEN
        D1 <= D1 - 1;
        U1 <= 9;
      ELSIF C1 > 0 THEN
        C1 <= C1 - 1;
        D1 <= 9;
        U1 <= 9;
      ELSIF M1 > 0 THEN
        M1 <= M1 - 1;
        C1 <= 9;
        D1 <= 9;
        U1 <= 9;
      END IF;

      IF U1 = 0 AND D1 = 0 AND C1 = 0 AND M1 = 0 THEN
        PRESENTE <= INICIO;
      ELSE
        PRESENTE <= ESTADO3;
      END IF;
  END CASE;

  -- Asignar salidas
  M <= M1 WHEN digitos_encendidos_int(3) = '1' ELSE 0;
  C <= C1 WHEN digitos_encendidos_int(2) = '1' ELSE 0;
  D <= D1 WHEN digitos_encendidos_int(1) = '1' ELSE 0;
  U <= U1;

END IF;
END PROCESS;

digitos_encendidos <= digitos_encendidos_int;

end Behavioral;