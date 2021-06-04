library ieee;
use ieee.std_logic_1164.all;

entity somador is
	port (
			a0, b0, cin, d: in std_logic;
			s, cout  : out std_logic
	);
end somador;

architecture behavior of somador is
	
begin
	with d select
	s    <= (b0 xor cin) xor a0 when '1',
			'Z' when others;
	with d select
	cout <= (b0 and cin) or (b0 and a0) or (cin and a0) when '1',
			'Z' when others;

end behavior;