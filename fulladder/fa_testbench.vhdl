library ieee;
use ieee.std_logic_1164.all;

entity fa_testbench is
end fa_testbench;

architecture test of fa_testbench is
	component fa
		port(
			a: in std_ulogic;
			b: in std_ulogic;
			cin: in std_ulogic;
			cout: out std_ulogic;
			s: out std_ulogic
		);
	end component;
	
	signal ain, bin, cin, cout, sum : std_logic;

	begin
		full_adder: fa port map (a => ain, b => bin, cin => cin, cout => cout, s => sum);

		process begin

			ain <= '0';
			bin <= '0';
			cin <= '0';
			wait for 1 ns;

			ain <= '0';
			bin <= '0';
			cin <= '1';
			wait for 1 ns;

			ain <= '0';
			bin <= '1';
			cin <= '0';
			wait for 1 ns;

			ain <= '0';
			bin <= '1';
			cin <= '1';
			wait for 1 ns;

			ain <= '1';
			bin <= '0';
			cin <= '0';
			wait for 1 ns;

			ain <= '1';
			bin <= '0';
			cin <= '1';
			wait for 1 ns;

			ain <= '1';
			bin <= '1';
			cin <= '0';
			wait for 1 ns;

			ain <= '1';
			bin <= '1';
			cin <= '1';
			wait for 1 ns;

			assert false report "Reached end of test";
			wait;
		end process;
end test;