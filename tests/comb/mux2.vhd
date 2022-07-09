library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux2 is
	generic (n : integer := 32);
	port (
		input0, input1: in std_logic_vector(n-1 downto 0);
		sel: in std_logic;
		output: out std_logic_vector(n-1 downto 0)
	);
end mux2;

architecture rtl OF mux2 is
	signal x: std_logic_vector(n-1 downto 0);
begin
	-- Mux
	output <= input0  when sel='0' else
				 input1  when sel='1' else
				 (others=>'Z');
end rtl;