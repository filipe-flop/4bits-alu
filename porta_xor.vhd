library ieee;
use ieee.std_logic_1164.all;


entity porta_xor is
    port(
        a     : in std_logic_vector(4 downto 0);
        b     : in std_logic_vector(3 downto 0);
        d     : in std_logic;
        s_xor : out std_logic_vector(4 downto 0)
    );
end porta_xor;

architecture behavior of porta_xor is

begin
    s_xor(3 downto 0) <= "ZZZZ" when d = '0' else
                         a(3 downto 0) xor b;
end behavior;