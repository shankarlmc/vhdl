library ieee;
use ieee.std_logic_1164.all;

entity fa is 
	port(
		a: in std_ulogic;
		b: in std_ulogic;
		cin: in std_ulogic;
		cout: out std_ulogic;
		s: out std_ulogic
	);
end fa;

architecture  behave of fa is
begin
	s <= (a xor b) xor cin;
	cout <= ((a xor b) and cin) or (a and b);
end behave;
