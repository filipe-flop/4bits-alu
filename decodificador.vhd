library ieee;
use ieee.std_logic_1164.all;

entity decodificador is
    port (
        op : in std_logic_vector(2 downto 0);
        d  : out std_logic_vector(5 downto 0)
    );
end decodificador;

architecture behavior of decodificador is

begin
    with op select
        d(0) <= '1' when "000",
                '0' when others;
    with op select
        d(1) <= '1' when "001",
                '0' when others;
    with op select
        d(2) <= '1' when "010",
                '0' when others;
    with op select
        d(3) <= '1' when "011",
                '0' when others;
    with op select
        d(4) <= '1' when "100",
                '0' when others;
    with op select
        d(5) <= '1' when "101",
                '0' when others;           
end behavior;