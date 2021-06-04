library ieee;
use ieee.std_logic_1164.all;


entity porta_or is
    port(
        a     : in std_logic_vector(4 downto 0);
        b     : in std_logic_vector(3 downto 0);
        d     : in std_logic;
        s_or : out std_logic_vector(4 downto 0)
    );
end porta_or;

architecture behavior of porta_or is

begin
    s_or(3 downto 0) <= "ZZZZ" when d = '0' else
                        a(3 downto 0) or b;
end behavior;