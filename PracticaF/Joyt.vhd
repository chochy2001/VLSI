library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Joyt is
    Port (
        MovX : IN INTEGER RANGE 0 TO 4095;
        MovY : IN INTEGER RANGE 0 TO 4095;
        posic: OUT INTEGER RANGE 0 TO 7
        
    );
end Joyt;

architecture Behavioral of Joyt is
    constant RANGO_NUEVO : INTEGER := 1024;

begin
    process ( MovX,  MovY)
        variable X_Nuevo : INTEGER;
        variable Y_Nuevo : INTEGER;
    begin
        -- Convertir los valores a los nuevos rangos
        X_Nuevo :=  MovX * RANGO_NUEVO / 4095;
        Y_Nuevo :=  MovY * RANGO_NUEVO / 4095;


		  -- Eje X
        if X_Nuevo < 409 then
					 posic<=1;--izqu
				
        elsif X_Nuevo > 611  then
					posic<=0;--derec
            
        elsif X_Nuevo > 410 and X_Nuevo < 610 then
					posic<=4;   ---centro       
        end if;

        -- Eje Y
		  if Y_Nuevo < 500 then
					posic<=2;--arriba
        elsif Y_Nuevo > 524 and Y_Nuevo < 1904 then
					posic<=3;---abajo
        else
             posic<=0;--centr
        end if;

    end process;

end Behavioral;