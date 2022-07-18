library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity downsampling is
	generic(n : integer := 32);
	port(
		clk, rst, en: in std_logic;
		osr: in std_logic_vector (2 downto 0);
		input: in std_logic_vector (n-1 downto 0);
		output: buffer std_logic_vector (n-1 downto 0);
		out_en: buffer std_logic
		);
end downsampling;

architecture rtl of downsampling is
	constant count_up: std_logic := '1';
	signal cnt: std_logic_vector (n-1 downto 0) := (others => '0');
	
	component countern is
		generic(n : integer := 32);
		port (
			Clock, Clear, En, Dir : in std_logic;
			Q : out std_logic_vector(n-1 downto 0)
		);
	end component;
	
	component base2_mod is
		generic(n : integer := 32);
		port(
			input  : in std_logic_vector (n-1 downto 0);
			osr    : in std_logic_vector (2 downto 0);
			out_en : out std_logic
			);
	end component;
	
	component regn is
		generic (n : integer := 32);
		port (
			input: in std_logic_vector(n-1 downto 0);
			en, clk, rst : in std_logic;
			output : buffer std_logic_vector(n-1 downto 0)
		);
	end component;
		
begin

COUNT0 : countern  generic map (n => n) port map (clk, rst, en, count_up, cnt); -- count up the number of samples
MOD0   : base2_mod generic map (n => n) port map (cnt, osr, out_en); -- apply downsampling to extract output enable flag
REG0   : regn 	    generic map (n => n) port map (input, out_en, clk, rst, output); -- register input only when downsampling is done
end rtl;