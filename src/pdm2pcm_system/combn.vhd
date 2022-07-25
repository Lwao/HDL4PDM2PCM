library ieee;
use ieee.std_logic_1164.all;

entity combn is
	generic (n : integer := 32);
	port (
		input: in std_logic_vector(n-1 downto 0);
		stages, diff_delay: in std_logic_vector(1 downto 0);
		en, clk, rst : in std_logic;
		output : buffer std_logic_vector(n-1 downto 0)
	);
end combn;

architecture rtl of combn is
	signal output0, output1, output2, output3: std_logic_vector(n-1 downto 0) := (others => '0');
	
	component comb is
		generic (n : integer := 32);
		port(
			clk, en, rst: in std_logic;
			input: in std_logic_vector (n-1 downto 0);
			diff_delay: in std_logic_vector (1 downto 0);
			output: buffer std_logic_vector (n-1 downto 0)
			);
	end component;
	
	component mux4 is
		generic (n : integer := 32);
		port (
			input0, input1, input2, input3: in std_logic_vector(n-1 downto 0);
			sel: in std_logic_vector(1 downto 0);
			output: out std_logic_vector(n-1 downto 0)
		);
	end component;
	
begin

COMB_0 : comb generic map (n => n) port map (clk, en, rst, input, diff_delay, output0);
COMB_1 : comb generic map (n => n) port map (clk, en, rst, output0, diff_delay, output1);
COMB_2 : comb generic map (n => n) port map (clk, en, rst, output1, diff_delay, output2);
COMB_3 : comb generic map (n => n) port map (clk, en, rst, output2, diff_delay, output3);

MUX : mux4 generic map (n => n) port map (output3, output2, output1, output0, stages, output);
	
end rtl;