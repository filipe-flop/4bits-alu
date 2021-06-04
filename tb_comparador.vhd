library ieee;
use ieee.std_logic_1164.all;

entity tb_comparador is
end tb_comparador;

architecture behavior of tb_comparador is
    component comparador is
        port (
          a    : in std_logic_vector(4 downto 0);
          b    : in std_logic_vector(3 downto 0);
          maior : out std_logic;              
          igual : out std_logic                    
          );
      end component;
    signal a: std_logic_vector(4 downto 0);
    signal b: std_logic_vector(3 downto 0);
    signal maior, igual: std_logic;
begin
    comp: comparador port map(a, b, maior, igual);
    process
    begin
    a <= "01010";
    b <= "1010";
    wait for 1 ns;

    a <= "00100";
    b <= "1100";
    wait for 1 ns;

    a <= "00111";
    b <= "0011";
    wait for 1 ns;
    
    wait;
    end process;
end behavior;