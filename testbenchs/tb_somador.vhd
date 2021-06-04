library ieee;
use ieee.std_logic_1164.all;

entity tb_somador is
end tb_somador;

architecture behavior of tb_somador is
    component somador is
        port (
                a0, b0, cin, d: in std_logic;
                s, cout  : out std_logic
        );
    end component;
    signal a0, b0, cin, cout, d, s: std_logic;
begin
    tb: somador port map(a0, b0, cin, cout, d, s);
    process
    begin
        d <= '0';
        a0 <= '1';
        b0 <= '0';
        wait for 1 ns;

        d <= '1';
        a0 <= '1';
        b0 <= '0';
        wait for 1 ns;

        wait;
    end process;
end behavior;