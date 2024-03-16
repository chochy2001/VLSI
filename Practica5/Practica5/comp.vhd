LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY comp IS

PORT(INC,DECr,CLK_MST: IN STD_LOGIC;
	S1: out std_logic_vector(7 downto 0);
	PWM1: OUT STD_LOGIC);
END ENTITY;

ARCHITECTURE BEAS OF comp IS

component DIVF
	GENERIC(FREC: INTEGER := 49999999); -- FREC = (50 MHz/2*Fdeseada) - 1
	PORT(CLK_MST: IN STD_LOGIC; -- RELOJ PRINCIPAL
			   CLK2: BUFFER STD_LOGIC);
end component;

component DIVF2
	GENERIC(FREC: INTEGER := 49999999); -- FREC = (50 MHz/2*Fdeseada) - 1
	PORT(CLK_MST: IN STD_LOGIC; -- RELOJ PRINCIPAL
			   CLK1: BUFFER STD_LOGIC);
end component;

component push_conta
		PORT(INC,DEC,CLK2: IN STD_LOGIC;
	          CUENTA: BUFFER INTEGER RANGE 0 TO 4 := 0);
end component;

component CT
port(CUENTA: in integer range 0 to 4;
	  DUTY: out integer range 0 to 100);
end component;

component pwm
PORT(DUTY: IN INTEGER RANGE 0 TO 100;
		  CLK1: IN STD_LOGIC;
	     PWM1: OUT STD_LOGIC);
end component;

component dec
port(DUTY: in integer range 0 to 100;
	  S1: out std_logic_vector(7 downto 0));
end component;

signal cuenta1: INTEGER RANGE 0 TO 4 := 0;
signal DUTY1: integer range 0 to 100;
signal sal1:  integer range 0 to 100;
signal clk11: std_logic;
signal clk22: std_logic;

begin
	U1: DIVF GENERIC MAP(FREC=>49) PORT MAP(CLK_MST, CLK11);
	U2:	push_conta port map(INC,DECr, CLK11, cuenta1);
	U3: CT PORT MAP (cuenta1, DUTY1);
	U4: dec port map (DUTY1, S1);
	U5: DIVF2 GENERIC MAP(FREC=>49999) PORT MAP(CLK_MST, CLK22);
	U6: pwm port map (DUTY1, CLK22, PWM1);
	
end;