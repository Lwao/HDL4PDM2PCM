library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity osr_sel is
	generic(n : integer := 32);
	port(
		osr    : in std_logic_vector (2 downto 0);
		output : buffer std_logic_vector (n-1 downto 0)
		);
end osr_sel;

architecture rtl of osr_sel is
	signal output_int: integer := 0;
begin
	output_int <= 1   when osr="000" else -- osr=2
					  3   when osr="001" else -- osr=4
					  7   when osr="010" else -- osr=8
					  15  when osr="011" else -- osr=16
					  31  when osr="100" else -- osr=32
					  63  when osr="101" else -- osr=64
					  127 when osr="110" else -- osr=128
					  255 when osr="111" else -- osr=256
					  0;
					  
	output <= std_logic_vector(to_unsigned(output_int, output'length));
end rtl;