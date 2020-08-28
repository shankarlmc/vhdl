library ieee;
use ieee.std_logic_1164.all;

entity orgate_testbench is
	---> no content							
end orgate_testbench;

architecture test of orgate_testbench is
	component orgate
		port(
			a,b: in std_logic;
			c: out std_logic
		);
	end component;

	signal ak,bk,ck: std_logic;

	begin

	or_gate: orgate port map(a=>ak, b=>bk, c=>ck);
	
	process begin

		ak <= '0';
		bk <= '0';
		wait for 1 ns;

		ak <= '0';
		bk <= '1';
		wait for 1 ns;

		ak <= '1';
		bk <= '0';
		wait for 1 ns;

		ak <= '1';
		bk <= '1';
		wait for 1 ns;

		assert false report "Successfully Completed !";
		wait;
	end process;
end test;
