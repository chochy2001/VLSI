library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity repaso is
    port (
        NUMERO: in std_logic_vector(3 downto 0);
        SAL: out std_logic_vector(7 downto 0)
    );
end entity;

architecture BEAS of repaso is
begin
    process(NUMERO)
    begin
        case to_integer(unsigned(NUMERO)) is
            when 0 => SAL <= "00000011"; -- 0
            when 1 => SAL <= "10011111"; -- 1
            when 2 => SAL <= "00100101"; -- 2
            when 3 => SAL <= "00001101"; -- 3
            when 4 => SAL <= "10011001"; -- 4
            when 5 => SAL <= "01001001"; -- 5
            when 6 => SAL <= "01000001"; -- 6
            when 7 => SAL <= "00011111"; -- 7
            when 8 => SAL <= "00000001"; -- 8
            when 9 => SAL <= "00001001"; -- 9
            when others => SAL <= "11111111";
        end case;
    end process;
end BEAS;
