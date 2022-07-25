library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity clkdiv_wrapper is
	generic(n : integer := 32);
	port(
	   clk_in: in std_logic;
		clk_out: buffer std_logic
		);
end clkdiv_wrapper;

architecture rtl of clkdiv_wrapper is
	signal rst: std_logic := '0';
	signal div: std_logic_vector(n-1 downto 0) := "00000000000000000000100111000100"; -- 2500 = 10kHz
	
	component clkdiv is
		generic(n : integer := 32);
		port(
			clk_in, rst: in std_logic;
			div: std_logic_vector(n-1 downto 0); -- "000" div by 2, ..., "111" div by 256
			clk_out: buffer std_logic
			);
	end component;
	
begin

divider: clkdiv port map (clk_in, rst, div, clk_out);

end rtl;