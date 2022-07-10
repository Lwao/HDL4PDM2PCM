library ieee;
use ieee.std_logic_1164.all;

entity integratorn is
	generic (n : integer := 32);
	port (
		input: in std_logic_vector(n-1 downto 0);
		stages: in std_logic_vector(1 downto 0);
		en, clk, rst : in std_logic;
		output : out std_logic_vector(n-1 downto 0)
	);
end integratorn;

architecture rtl of integratorn is
	signal output0, output1, output2, output3: std_logic_vector(n-1 downto 0) := (others => '0');
	signal input0, input1, input2, input3: std_logic_vector(n-1 downto 0) := (others => '0');
	signal sel1, sel2, sel3: std_logic := '0';
	
	component integrator is
		generic (n : integer := 32);
		port(
			clk, en, rst: in std_logic;
			input: in std_logic_vector (n-1 downto 0);
			output: buffer std_logic_vector (n-1 downto 0)
			);
	end component;
	component mux2 is
		generic (n : integer := 32);
		port (
			input0, input1: in std_logic_vector(n-1 downto 0);
			sel: in std_logic;
			output: out std_logic_vector(n-1 downto 0)
		);
	end component;
	
begin

sel1 <= '1' when (stages(1)='1' and stages(0)='0') else '0';
sel2 <= '1' when (stages(1)='0' and stages(0)='1') else '0';
sel3 <= '1' when (stages(1)='0' and stages(0)='0') else '0';

input0 <= input;

MUX_1 : mux2 generic map (n => n) port map (output0, input, sel1, input1);
MUX_2 : mux2 generic map (n => n) port map (output1, input, sel2, input2);
MUX_3 : mux2 generic map (n => n) port map (output2, input, sel3, input3);

ACC_0 : integrator generic map (n => n) port map (clk, en, rst, input0, output0);
ACC_1 : integrator generic map (n => n) port map (clk, en, rst, input1, output1);
ACC_2 : integrator generic map (n => n) port map (clk, en, rst, input2, output2);
ACC_3 : integrator generic map (n => n) port map (clk, en, rst, input3, output3);

output <= output3;
	
end rtl;