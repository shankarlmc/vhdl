library ieee;
use ieee.std_logic_1164.all;

entity ha_testbench is
end ha_testbench;

architecture test of ha_testbench is
	component ha
		port(
			a: in std_ulogic;
			b: in std_ulogic;
			c: out std_ulogic;
			s: out std_ulogic
		);
	end component;
	signal ain, bin, carry, sum : std_logic;

	begin
		half_adder: ha port map (a => ain, b => bin, c => carry, s => sum);

		process begin

			ain <= '0';
			bin <= '0';
			wait for 1 ns;

			ain <= '0';
			bin <= '1';
			wait for 1 ns;

			ain <= '1';
			bin <= '0';
			wait for 1 ns;

			ain <= '1';
			bin <= '1';
			wait for 1 ns;

			assert false report "Reached end of test";
			wait;
		end process;
end test;