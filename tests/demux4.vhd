library ieee;
use ieee.std_logic_1164.all;

entity demux4 is
	generic (n : integer := 32);
	port (
		input: in std_logic_vector(n-1 downto 0);
		sel: in std_logic_vector(1 downto 0);
		output0, output1, output2, output3 : out std_logic_vector(n-1 downto 0)
	);
end demux4;

architecture rtl of demux4 is

begin
	process (sel)
	begin
		case sel is
			when "00" => output0 <= input;
			when "01" => output1 <= input;
			when "10" => output2 <= input;
			when "11" => output3 <= input;
		end case;
	end process;
end rtl;