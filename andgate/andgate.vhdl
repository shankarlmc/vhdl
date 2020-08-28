library ieee;
use ieee.std_logic_1164.all;

entity andgate is
	port(
		a,b:in std_logic;
		c: out std_logic
	);
end andgate;

architecture behavior of andgate is
	begin

	c <= a and b;
	
end behavior;