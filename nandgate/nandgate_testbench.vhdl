library ieee;
use ieee.std_logic_1164.all;

entity nandgate_testbench is
	---> no content							
end nandgate_testbench;

architecture test of nandgate_testbench is
	component nandgate
		port(
			a,b: in std_logic;
			c: out std_logic
		);
	end component;

	signal ak,bk,ck: std_logic;

	begin

	nand_gate: nandgate port map(a=>ak, b=>bk, c=>ck);	
	
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
