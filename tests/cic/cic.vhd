library ieee;
use ieee.std_logic_1164.all;

entity cic is
	generic (word_width : integer := 32);
	port (
		en, clk, rst : in     std_logic;
		input        : in     std_logic_vector(word_width-1 downto 0);
		R            : in     std_logic_vector(2            downto 0); -- OSR=R
		M, N         : in     std_logic_vector(1            downto 0); -- diff_delay=M, stages=N
		output       : buffer std_logic_vector(word_width-1 downto 0)
	);
end cic;

architecture rtl of cic is
	signal integ_out, downsampling_out: std_logic_vector(word_width-1 downto 0) := (others => '0');
	signal out_en: std_logic := '0';
	
	component integratorn is
		generic (n : integer := 32);
		port (
			input: in std_logic_vector(n-1 downto 0);
			stages: in std_logic_vector(1 downto 0);
			en, clk, rst : in std_logic;
			output : out std_logic_vector(n-1 downto 0)
		);
	end component;
	
	component downsampling is
		generic(n : integer := 32);
		port(
			clk, rst, en: in std_logic;
			osr: in std_logic_vector (2 downto 0);
			input: in std_logic_vector (n-1 downto 0);
			output: buffer std_logic_vector (n-1 downto 0);
			out_en: buffer std_logic
			);
	end component;

	component combn is
		generic (n : integer := 32);
		port (
			input: in std_logic_vector(n-1 downto 0);
			stages, diff_delay: in std_logic_vector(1 downto 0);
			en, clk, rst : in std_logic;
			output : buffer std_logic_vector(n-1 downto 0)
		);
	end component;
begin

INTEG_GROUP        : integratorn  generic map (n => word_width) port map (input, N, en, clk, rst, integ_out);
DOWNSAMPLING_GROUP : downsampling generic map (n => word_width) port map (clk, rst, en, R, integ_out, downsampling_out, out_en);
COMB_GROUP         : combn        generic map (n => word_width) port map (downsampling_out, N, M, out_en, clk, rst, output);
end rtl;