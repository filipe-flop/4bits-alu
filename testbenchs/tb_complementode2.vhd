library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_complementode2 is
end tb_complementode2;

architecture behavior of tb_complementode2 is
    component complementode2 is
        port(
            a  : in std_logic_vector(4 downto 0);
            d  : in std_logic;
            s_comp : out std_logic_vector(4 downto 0)
        );
    end component;
    signal a, s_comp: std_logic_vector(4 downto 0);
    signal d: std_logic;
begin
    comp: complementode2 port map(a, d, s_comp);
    process
    begin
        d <= '0';
        a <= "01010";
        wait for 1 ns;

        d <= '1';
        a <= "00110";
        wait for 1 ns;

        wait;
    end process;
end behavior;



