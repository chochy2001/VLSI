library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity RandomNumberGenerator is
    port (
        clk : in std_logic;
        reset : in std_logic;
        random_number : out std_logic_vector(7 downto 0)
    );
end RandomNumberGenerator;

architecture Behavioral of RandomNumberGenerator is
    signal seed : std_logic_vector(31 downto 0) := (others => '0');
begin
    process(clk, reset)
    begin
        if reset = '1' then
            seed <= (others => '0');
        elsif rising_edge(clk) then
            -- Actualiza la semilla con el valor actual del reloj
            seed <= seed + std_logic_vector(to_unsigned(to_integer(unsigned(seed)) + 1, seed'length));
        end if;
    end process;

    process(clk)
    begin
        if rising_edge(clk) then
            if reset = '1' then
                random_number <= (others => '0');
            else
                -- Genera el número aleatorio usando la semilla actual
                random_number <= seed(31 downto 24);
            end if;
        end if;
    end process;
end Behavioral;
