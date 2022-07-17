library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity clkdiv is
	generic(n : integer := 32);
	port(
	   clk_in, rst: in std_logic;
		div: std_logic_vector(n-1 downto 0); -- "000" div by 2, ..., "111" div by 256
		clk_out: buffer std_logic
		);
end clkdiv;

architecture rtl of clkdiv is
	signal clk_tmp: std_logic := '0';
	signal cnt: std_logic_vector(n-1 downto 0) := (others => '0');
	
begin

process (clk_in, rst)
begin
	if rst='1' then
		cnt <= (others => '0');
		clk_tmp <= '0';
	elsif (clk_in'event and clk_in= '1') then
		cnt <= cnt + 1;
		if cnt=div then
			clk_tmp <= not clk_tmp;
			cnt <= (others => '0');
		end if;
	end if;
	clk_out <= clk_tmp;
end process;

end rtl;