library ieee;
use ieee.std_logic_1164.all;

entity config_regn is
	port (
		input: in std_logic_vector(23 downto 0);
		en, en_in_conf, en_out_flag, clk, rst : in std_logic;
		output : buffer std_logic_vector(23 downto 0)
	);
end config_regn;

architecture rtl of config_regn is
	constant zero_const: std_logic_vector(23 downto 0) := (others => '0');
begin
	process (clk)
	begin
		if clk'event and clk = '1' then
			if en = '1' then
				if rst = '0' then
					--- update register
					if en_in_conf='1' then
						output(21 downto 15) <= input(21 downto 15); -- R, M, N fields
						output(11 downto 0) <= input(11 downto 0); -- div field
					end if;
					if en_out_flag='1' then
						output(14 downto 12) <= input(14 downto 12); -- flags (empty, full, hfull)
					end if;
				elsif rst = '1' then
					output <= zero_const;
				end if;
			end if;
		end if;
	end process;
end rtl;