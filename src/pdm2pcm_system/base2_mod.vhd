library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity base2_mod is
	generic(n : integer := 32);
	port(
		input  : in std_logic_vector (n-1 downto 0);
		osr    : in std_logic_vector (2 downto 0);
		out_en : out std_logic
		);
end base2_mod;

architecture rtl of base2_mod is
	constant zeroval : std_logic_vector (n-1 downto 0) := (others => '0');
	signal osrn, modn : std_logic_vector (n-1 downto 0) := (others => '0');
	
	component osr_sel is
		generic(n : integer := 32);
		port(
			osr    : in std_logic_vector (2 downto 0);
			output : buffer std_logic_vector (n-1 downto 0)
			);
	end component;

begin

SEL_OSR : osr_sel generic map (n => n) port map (osr, osrn);

modn <= input and osrn; -- module operation in base 2
out_en <= '1' when modn = zeroval else '0'; -- activate flag if module result is zero
	
end rtl;