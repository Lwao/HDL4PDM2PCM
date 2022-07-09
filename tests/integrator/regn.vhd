library ieee;
use ieee.std_logic_1164.all;

entity regn is
	generic (n : integer := 32);
	port (
		input: in std_logic_vector(n-1 downto 0);
		en, clk, rst : in std_logic;
		output : buffer std_logic_vector(n-1 downto 0)
	);
end regn;

architecture rtl of regn is
	constant zero_const: std_logic_vector(n-1 downto 0) := "00000000000000000000000000000000";
begin
	process (clk)
	begin
		if clk'event and clk = '1' then
			if en = '1' then
				if rst = '0' then
					output <= input;
				elsif rst = '1' then
					output <= zero_const;
				end if;
			end if;
		end if;
	end process;
end rtl;