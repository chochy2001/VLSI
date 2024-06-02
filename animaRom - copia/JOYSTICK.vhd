LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY JOYSTICK IS
PORT(	X,Y: IN STD_LOGIC_VECTOR (11 DOWNTO 0);
		U,D,L,RR: BUFFER STD_LOGIC);
END JOYSTICK;

ARCHITECTURE BEAS OF JOYSTICK IS
BEGIN

	PROCESS(X,Y,U,D,L,RR)
	BEGIN
		IF (X > 2028 AND X < 2068) AND ( Y < 1000) THEN
			U 	<= '1';
			D 	<= '0';
			L 	<= '1';
			RR <= '1';
		ELSIF (X > 2028 AND X < 2068) AND ( Y > 3000) THEN
			U 	<= '0';
			D 	<= '1';
			L 	<= '1';
			RR <= '1';
		ELSIF (Y > 1500 AND Y < 2500) AND ( X < 1500) THEN
			U 	<= '1';
			D 	<= '1';
			L 	<= '0';
			RR <= '1';
		ELSIF (Y > 1500 AND Y < 2500) AND ( X > 2500) THEN
			U 	<= '1';
			D 	<= '1';
			L 	<= '1';
			RR <= '0';
		ELSE
			U 	<= '1';
			D 	<= '1';
			L 	<= '1';
			RR <= '1';
		END IF;
	END PROCESS;
END BEAS;
