library ieee;
use ieee.std_logic_1164.all;

entity notgate_testbench is
	---> no content							
end notgate_testbench;

architecture test of notgate_testbench is
	component notgate
		port(
			a: in std_logic;
			b: out std_logic
		);
	end component;

	signal ak, bk: std_logic;

	begin

	not_gate: notgate port map(a=>ak, b=>bk);	---> component instantiation
	
	process begin

		ak <= '0';
		wait for 1 ns;

		ak <= '1';
		wait for 1 ns;

		assert false report "Successfully Completed !";
		wait;
	end process;
end test;
