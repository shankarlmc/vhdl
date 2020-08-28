library ieee;
use ieee.std_logic_1164.all;

entity andgate_testbench is
	---> no content							
end andgate_testbench;

architecture test of andgate_testbench is
	component andgate
		port(
			a,b: in std_logic;
			c: out std_logic
		);
	end component;

	signal ak,bk,ck: std_logic;

	begin

	and_gate: andgate port map(a=>ak, b=>bk, c=>ck);	
	
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

		assert false report "Completed successfully";
		wait;
	end process;
end test;
