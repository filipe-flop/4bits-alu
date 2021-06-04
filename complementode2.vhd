library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity complementode2 is
    port(
        a  : in std_logic_vector(4 downto 0);
        d  : in std_logic;
        s_comp : out std_logic_vector(4 downto 0)
    );
end complementode2;

architecture behavior of complementode2 is
    signal t: std_logic_vector(4 downto 0);
begin
    t  <= not a;
    s_comp <= "ZZZZZ" when d = '0' else
              std_logic_vector(unsigned(t) + 1);
end behavior;