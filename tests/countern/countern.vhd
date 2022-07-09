library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity countern is
	generic(n : integer := 4);
	port (
		Clear, Clock, Dir : in std_logic;
		Q : out std_logic_vector(n-1 downto 0)
	);
end countern;

architecture rtl of countern is
	signal Count : std_logic_vector(n-1 downto 0);

begin
	process (Clock)
	begin
		if (Clock'event AND Clock = '1') then
			if Clear = '1' then
				Count <= (others => '0');
			else
				if Dir='1' then
					Count <= Count + 1;
				elsif Dir='0' then
					Count <=Count - 1;
				end if;
			end if;
		end if;
	end process;
	Q <= Count;
end rtl;