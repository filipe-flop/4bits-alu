library ieee;
use ieee.std_logic_1164.all;

entity subtrator is
	port (
			a0, b0, cin, d: in std_logic;
			s, cout  : out std_logic
	);
end subtrator;

architecture behavior of subtrator is
	
begin
	with d select
    s <= (a0 xor b0) xor cin when '1',
		 'Z' when others;
	with d select
    cout <= (not(a0 xor b0) and cin) or (not a0 and b0) when '1',
			'Z' when others;

end behavior;