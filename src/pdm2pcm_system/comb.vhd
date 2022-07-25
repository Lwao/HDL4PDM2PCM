library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity comb is
	generic (n : integer := 32);
	port(
		clk, en, rst: in std_logic;
	   input: in std_logic_vector (n-1 downto 0);
		diff_delay: in std_logic_vector (1 downto 0);
		output: buffer std_logic_vector (n-1 downto 0)
		);
end comb;

architecture rtl of comb is
	constant zero_const: std_logic_vector(n-1 downto 0) := (others => '0');
	
	alias actual : std_logic_vector (n-1 downto 0) is input(n-1 downto 0);
	alias diff: std_logic_vector (n-1 downto 0) is output(n-1 downto 0);
	signal temp_diff, previous: std_logic_vector (n-1 downto 0):= zero_const;
	
	signal C, V: std_logic := '0'; -- carry & overflow
	
	component subn is
		generic (n : integer := 32);
		port(
			 X, Y: in std_logic_vector (n-1 downto 0);
			 Z: out std_logic_vector (n-1 downto 0);
			 C, V: out std_logic
			);
	end component;
	
	component regn is
	generic (n : integer := 32);
	port (
		input: in std_logic_vector(n-1 downto 0);
		en, clk, rst: in std_logic;
		output : buffer std_logic_vector(n-1 downto 0)
	);
	end component;
	
	component shift_regn is
		generic (n : integer := 32);
		port (
			input: in std_logic_vector(n-1 downto 0);
			sel: in std_logic_vector(1 downto 0);
			en, clk, rst : in std_logic;
			output : out std_logic_vector(n-1 downto 0)
		);
	end component;
	
begin
	
	SUB_OP    : subn       generic map (n => 32) port map (actual, previous, temp_diff, C, V);
	SHIFT_REG : shift_regn generic map (n => 32) port map (actual, diff_delay, en, clk, rst, previous);
	DIFF_REG  : regn       generic map (n => 32) port map (temp_diff, en, clk, rst, diff);
	
end rtl;