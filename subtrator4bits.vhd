library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity subtrator4bits is
    port(
        a     : in std_logic_vector(4 downto 0);
        b     : in std_logic_vector(3 downto 0);
        d     : in std_logic;
        s_sub : out std_logic_vector(4 downto 0)
    );
end subtrator4bits;

architecture behavior of subtrator4bits is
    component subtrator is
        port (
			a0, b0, cin, d: in std_logic;
			s, cout  : out std_logic
	);
    end component;

    signal s0, s1, s2: std_logic;
    
begin
    subtrator_0: subtrator port map (d => d, a0 => a(0), b0 => b(0), cin => '0', s => s_sub(0), cout => s0);
    subtrator_1: subtrator port map (d => d, a0 => a(1), b0 => b(1), cin => s0, s => s_sub(1), cout => s1);
    subtrator_2: subtrator port map (d => d, a0 => a(2), b0 => b(2), cin => s1, s => s_sub(2), cout => s2);
    subtrator_3: subtrator port map (d => d, a0 => a(3), b0 => b(3), cin => s2, s => s_sub(3), cout => s_sub(4));

end behavior;