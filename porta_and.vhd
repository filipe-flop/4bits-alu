library ieee;
use ieee.std_logic_1164.all;


entity porta_and is
    port(
        a     : in std_logic_vector(4 downto 0);
        b     : in std_logic_vector(3 downto 0);
        d     : in std_logic;
        s_and : out std_logic_vector(4 downto 0)
    );
end porta_and;

architecture behavior of porta_and is

begin
    s_and(n downto 0) <= "ZZZZ" when d = '0' else
             a(n downto 0) and b;
end behavior;