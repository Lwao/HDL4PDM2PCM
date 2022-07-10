library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity mux4 is
	generic (n : integer := 32);
	port (
		input0, input1, input2, input3: in std_logic_vector(n-1 downto 0);
		sel: in std_logic_vector(1 downto 0);
		output: out std_logic_vector(n-1 downto 0)
	);
end mux4;

architecture rtl OF mux4 is
begin
	-- Mux
	output <= input0 when sel="00" else
				 input1 when sel="01" else
				 input2 when sel="10" else
				 input3 when sel="11" else
				 (others=>'Z');
end rtl;