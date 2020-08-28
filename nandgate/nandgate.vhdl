library ieee;
use ieee.std_logic_1164.all;

entity nandgate is
	port(
		a,b:in std_logic;
		c: out std_logic
	);
end nandgate;

architecture behavior of nandgate is
	begin

	c <= not (a and b);

end behavior;