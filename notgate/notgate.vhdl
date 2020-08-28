library ieee;
use ieee.std_logic_1164.all;

entity notgate is
	port(
		a: in std_logic;
		b: out std_logic
	);
end notgate;

architecture behavior of notgate is
	begin

	b <= not a;

end behavior;