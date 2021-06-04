library ieee;
use ieee.std_logic_1164.all;

entity tb_ula is
end tb_ula;

architecture behavior of tb_ula is
    component ula is
        port(
            -- entradas
            a    : in std_logic_vector(4 downto 0); -- entrada A
            b    : in std_logic_vector(3 downto 0); -- entrada B
            op   : in std_logic_vector(2 downto 0); -- indica a operação
    
            -- saídas
            r     : out std_logic_vector(4 downto 0); -- resultado
            maior : out std_logic;                    -- '1' se A > B
            igual : out std_logic                     -- '1' se A = B
        );
    end component;
    signal a, r: std_logic_vector(4 downto 0);
    signal b: std_logic_vector(3 downto 0);
    signal op: std_logic_vector(2 downto 0);
    signal maior, igual: std_logic;
begin
    tb: ula port map(a, b, op, r, maior, igual);
    process
    begin
        op <= "000"; -- somador
        a <= "00100";
        b <= "0011";
        wait for 1 ns;

        op <= "001"; -- subtrator
        a <= "00101";
        b <= "0001";
        wait for 1 ns;

        op <= "010"; -- and
        a <= "00011";
        b <= "0010";
        wait for 1 ns;

        op <= "011"; -- or
        a <= "00110";
        b <= "0110";
        wait for 1 ns;

        op <= "100"; -- xor
        a <= "00111";
        b <= "0011";
        wait for 1 ns;

        op <= "101"; -- complemento de 2
        a <= "01001";
        b <= "0010";
        wait for 1 ns;

        wait;
    end process;

end behavior;