library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ula is
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
end ula;

architecture comportamento of ula is
    --declaração dos componentes
    component decodificador is
        port (
            op : in std_logic_vector(2 downto 0);
            d  : out std_logic_vector(5 downto 0)
        );
    end component;

    component somador4bits is
        port(
            a     : in std_logic_vector(4 downto 0);
            b     : in std_logic_vector(3 downto 0);
            d     : in std_logic;
            s_sum : out std_logic_vector(4 downto 0)
        );
    end component;

    component subtrator4bits is
        port(
            a     : in std_logic_vector(4 downto 0);
            b     : in std_logic_vector(3 downto 0);
            d     : in std_logic;
            s_sub : out std_logic_vector(4 downto 0)
        );
    end component;

    component porta_and is
        port(
            a     : in std_logic_vector(4 downto 0);
            b     : in std_logic_vector(3 downto 0);
            d     : in std_logic;
            s_and : out std_logic_vector(4 downto 0)
        );
    end component;

    component porta_or is
        port(
            a     : in std_logic_vector(4 downto 0);
            b     : in std_logic_vector(3 downto 0);
            d     : in std_logic;
            s_or : out std_logic_vector(4 downto 0)
        );
    end component;

    component porta_xor is
        port(
            a     : in std_logic_vector(4 downto 0);
            b     : in std_logic_vector(3 downto 0);
            d     : in std_logic;
            s_xor : out std_logic_vector(4 downto 0)
        );
    end component;

    component complementode2 is
        port(
            a  : in std_logic_vector(4 downto 0);
            d  : in std_logic;
            s_comp : out std_logic_vector(4 downto 0)
        );
    end component;

    component comparador is
        port (
          a    : in std_logic_vector(4 downto 0);
          b    : in std_logic_vector(3 downto 0);
          maior : out std_logic;              
          igual : out std_logic                   
          );
      end component;

    signal d: std_logic_vector(5 downto 0); --sinal do decodificador
begin
    -- mapeamento das portas
    ula_decodificador: decodificador port map(op => op, d => d);
    ula_somador4bits: somador4bits port map(a => a, b => b, d => d(0), s_sum => r);
    ula_subtrator4bits: subtrator4bits port map(a => a, b => b, d => d(1), s_sub => r);
    ula_and: porta_and port map(a => a, b => b, d => d(2), s_and => r);
    ula_or: porta_or port map(a => a, b => b, d => d(3), s_or => r);
    ula_xor: porta_xor port map(a => a, b => b, d => d(4), s_xor => r);
    ula_complementode2: complementode2 port map(a => a, d => d(5), s_comp => r);
    ula_comparador: comparador port map(a => a, b => b, maior => maior, igual => igual);
end comportamento;