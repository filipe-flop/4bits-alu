library ieee;
use ieee.std_logic_1164.all;

entity tb_and is
end tb_and;

architecture behavior of tb_and is
    component porta_and is
        port(
        a     : in std_logic_vector(4 downto 0);
        b     : in std_logic_vector(3 downto 0);
        d     : in std_logic;
        s_and : out std_logic_vector(4 downto 0)
    );
    end component;
    signal a  : std_logic_vector(4 downto 0);
    signal b     : std_logic_vector(3 downto 0);
    signal d : std_logic;
    signal s_and : std_logic_vector(4 downto 0);
begin
    tb: porta_and port map(a, b, d, s_and);
    process
    begin
        d <= '0';
        a <= "01010";
        b <= "0110";
        wait for 1 ns;

        d <= '1';
        a <= "01010";
        b <= "0110";
        wait for 1 ns;
        wait;
    end process;
end behavior;