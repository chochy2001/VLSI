library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.std_logic_unsigned.all;

entity random_numbers is
    port (
        clk : in std_logic;
        reset : in std_logic;
        display0 : out std_logic_vector(7 downto 0);
        display1 : out std_logic_vector(7 downto 0);
        display2 : out std_logic_vector(7 downto 0)
    );
end random_numbers;

architecture rtl of random_numbers is
    signal random_value : std_logic_vector(23 downto 0);
    signal digit0, digit1, digit2 : std_logic_vector(3 downto 0);
begin
    -- Generador de números aleatorios
    process(clk, reset)
        variable seed1, seed2, seed3 : std_logic_vector(23 downto 0);
    begin
        if reset = '1' then
            seed1 := X"000001";
            seed2 := X"9823AB";
            seed3 := X"123456";
            random_value <= (others => '0');
        elsif rising_edge(clk) then
            seed1 := seed1 xor (seed1(4) xor seed1(3)) & seed1(23 downto 1);
            seed2 := seed2 xor (seed2(6) xor seed2(2)) & seed2(23 downto 1);
            seed3 := seed3 xor (seed3(9) xor seed3(8)) & seed3(23 downto 1);
            random_value <= seed1 xor seed2 xor seed3;
        end if;
    end process;

    -- Divisores para obtener dígitos
    digit0 <= random_value(3 downto 0);
    digit1 <= random_value(7 downto 4);
    digit2 <= random_value(11 downto 8);

    -- Decodificadores para displays de 7 segmentos
    with digit0 select
        display0 <= "00000011" WHEN "0000", -- 0
					"10011111" WHEN "0001", -- 1
					"00100101" WHEN "0010", -- 2
					"00001101" WHEN "0011", -- 3
					"10011001" WHEN "0100", -- 4
					"01001001" WHEN "0101", -- 5
					"01000001" WHEN "0110", -- 6
					"00011111" WHEN "0111", -- 7
					"00000001" WHEN "1000", -- 8
					"00001001" WHEN "1001", -- 9
					"00000011" WHEN OTHERS;

    with digit1 select
        display1 <=  "00000011" WHEN "0000", -- 0
					"10011111" WHEN "0001", -- 1
					"00100101" WHEN "0010", -- 2
					"00001101" WHEN "0011", -- 3
					"10011001" WHEN "0100", -- 4
					"01001001" WHEN "0101", -- 5
					"01000001" WHEN "0110", -- 6
					"00011111" WHEN "0111", -- 7
					"00000001" WHEN "1000", -- 8
					"00001001" WHEN "1001", -- 9
					"00000011" WHEN OTHERS;

    with digit2 select
        display2 <= "00000011" WHEN "0000", -- 0
					"10011111" WHEN "0001", -- 1
					"00100101" WHEN "0010", -- 2
					"00001101" WHEN "0011", -- 3
					"10011001" WHEN "0100", -- 4
					"01001001" WHEN "0101", -- 5
					"01000001" WHEN "0110", -- 6
					"00011111" WHEN "0111", -- 7
					"00000001" WHEN "1000", -- 8
					"00001001" WHEN "1001", -- 9
					"00000011" WHEN OTHERS;

end rtl;