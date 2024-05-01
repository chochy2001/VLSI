library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RandomNumberGenerator is
  port (
    reset    : in  std_logic;
    clk      : in  std_logic;
    u  : out std_logic_vector (2 downto 0);  -- Unidades
    tens     : out std_logic_vector (2 downto 0);  -- Decenas
    hundreds : out std_logic_vector (2 downto 0)   -- Centenas
  );
end entity;

architecture rtl of RandomNumberGenerator is
    signal count_i      : std_logic_vector (5 downto 0); -- Ajustado para más bits
    signal feedback     : std_logic;

    -- Nuevas señales para unidades, decenas y centenas
    signal units_s    : std_logic_vector (2 downto 0);
    signal tens_s     : std_logic_vector (2 downto 0);
    signal hundreds_s : std_logic_vector (2 downto 0);

begin
    feedback <= not(count_i(5) xor count_i(3)); -- Modificada para un LFSR más grande

    process (reset, clk) 
    begin
        if (reset = '1') then
            count_i <= (others=>'0');
        elsif (rising_edge(clk)) then
            count_i <= count_i(4 downto 0) & feedback; -- Modificado para acomodar el LFSR más grande
        end if;

        -- Extraer unidades, decenas y centenas del conteo actual
        units_s    <= count_i(2 downto 0);
        tens_s     <= count_i(3 downto 1);
        hundreds_s <= count_i(5 downto 3);
    end process;

    -- Convertir unidades, decenas y centenas en BCD para las salidas
    u    <= std_logic_vector(to_unsigned(to_integer(unsigned(units_s)), u'length));
    tens     <= std_logic_vector(to_unsigned(to_integer(unsigned(tens_s)), tens'length));
    hundreds <= std_logic_vector(to_unsigned(to_integer(unsigned(hundreds_s)), hundreds'length));
end architecture;
