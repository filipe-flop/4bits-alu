library ieee;
use ieee.std_logic_1164.all;


entity tb_subtrator4bits is
end tb_subtrator4bits;

architecture behavior of tb_subtrator4bits is
    component subtrator4bits is
        port(
        a     : in std_logic_vector(4 downto 0);
        b     : in std_logic_vector(3 downto 0);
        d     : in std_logic;
        s_sub : out std_logic_vector(4 downto 0) -- saída do subtrator
    );
    end component;
    signal a, s_sub : std_logic_vector(4 downto 0);
    signal b : std_logic_vector(3 downto 0);
    signal d : std_logic;
    
begin
    sub: subtrator4bits port map(a, b, d, s_sub);
    process
    begin
        d <= '1';
        a(3 downto 0) <= "1010";
        b <= "0111";
        wait for 1 ns;

        d <= '0';
        a(3 downto 0) <= "1000";
        b <= "1000";
        wait for 1 ns;

        d <= '0';
        a(3 downto 0) <= "0011";
        b <= "0101";
        wait for 1 ns;

        wait;
    end process;
        
end behavior;