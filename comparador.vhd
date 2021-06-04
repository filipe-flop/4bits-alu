library ieee;
use ieee.std_logic_1164.all;

entity comparador is
  port (
    a    : in std_logic_vector(4 downto 0);
    b    : in std_logic_vector(3 downto 0);
    maior : out std_logic;              
    igual : out std_logic                   
    );
end comparador;

architecture behavior of comparador is
    signal m0, m1, m2, m3, i0, i1, i2, i3: std_logic;
begin
    m0 <= not b(0) and a(0);
    m1 <= not(a(0) xor b(0)) and a(1) and not b(1);
    m2 <= not(a(1) xor b(1)) and not(a(0) xor b(0)) and a(2) and not b(2);
    m3 <= not(a(2) xor b(2)) and not(a(1) xor b(1)) and not(a(0) xor b(0)) and a(3) and not b(3);

    maior <= m0 or m1 or m2 or m3;

    i0 <= a(0) xor b(0);
    i1 <= a(1) xor b(1);
    i2 <= a(2) xor b(2);
    i3 <= a(3) xor b(3);
    
    igual <= not (i0 or i1 or i2 or i3);
end behavior;