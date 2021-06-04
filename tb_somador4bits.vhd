library ieee;
use ieee.std_logic_1164.all;

entity tb_somador4bits is
end tb_somador4bits;

architecture behavior of tb_somador4bits is
    component somador4bits is
        port(
            a     : in std_logic_vector(4 downto 0);
            b     : in std_logic_vector(3 downto 0);
            d     : in std_logic;
            s_sum : out std_logic_vector(4 downto 0) -- saída do somador
        );
    end component;
    signal d: std_logic;
    signal a, s_sum: std_logic_vector(4 downto 0);
    signal b: std_logic_vector(3 downto 0);
begin
    tb: somador4bits port map(a, b, d, s_sum);
    process
    begin
        d <= '0';
        a <= "01010";
        b <= "0011";
        wait for 1 ns;

        d <= '1';
        a <= "01010";
        b <= "0011";
        wait for 1 ns;

        wait;
    end process;
end behavior;