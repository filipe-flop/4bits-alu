library ieee;
use ieee.std_logic_1164.all;

entity somador4bits is
    port(
        a     : in std_logic_vector(4 downto 0);
        b     : in std_logic_vector(3 downto 0);
        d     : in std_logic;
        s_sum : out std_logic_vector(4 downto 0) -- saída do somador
    );
end somador4bits;

architecture behavior of somador4bits is
    component somador is
        port (
                a0, b0, cin, d : in std_logic;
                s, cout        : out std_logic
        );
    end component;

    signal s0, s1, s2: std_logic;
begin
    somador_0: somador port map (d => d, a0 => a(0), b0 => b(0), cin => '0', s => s_sum(0), cout => s0);
    somador_1: somador port map (d => d, a0 => a(1), b0 => b(1), cin => s0, s => s_sum(1), cout => s1);
    somador_2: somador port map (d => d, a0 => a(2), b0 => b(2), cin => s1, s => s_sum(2), cout => s2);
    somador_3: somador port map (d => d, a0 => a(3), b0 => b(3), cin => s2, s => s_sum(3), cout => s_sum(4));
end behavior;