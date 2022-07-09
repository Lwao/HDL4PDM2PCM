library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity integrator is
	generic (n : integer := 32);
	port(
		clk, en, rst: in std_logic;
	    input: in std_logic_vector (n-1 downto 0);
		output: buffer std_logic_vector (n-1 downto 0)
		);
end integrator;

architecture rtl of integrator is
	constant zero_const: std_logic_vector(n-1 downto 0) := (others => '0');
	
	alias actual : std_logic_vector (n-1 downto 0) is input(n-1 downto 0);
	alias acc: std_logic_vector (n-1 downto 0) is output(n-1 downto 0);
	signal temp_acc, previous: std_logic_vector (n-1 downto 0):= zero_const;
	
	signal C, V: std_logic := '0'; -- carry & overflow
	
	component regn is
	generic (n : integer := 32);
	port (
		input: in std_logic_vector(n-1 downto 0);
		en, clk, rst: in std_logic;
		output : buffer std_logic_vector(n-1 downto 0)
	);
	end component;
	
	component sumn is
		generic (n : INTEGER := 32);
		port(
			 X, Y: in std_logic_vector (n-1 downto 0);
			 Z: out std_logic_vector (n-1 downto 0);
			 C, V: out std_logic
		);
	end component;
	
begin
	SUM_OP    : sumn generic map (n => 32) port map (actual, previous, temp_acc, C, V);
	DELAY_REG : regn generic map (n => 32) port map (temp_acc, en, clk, rst, previous);
	ACC_REG   : regn generic map (n => 32) port map (temp_acc, en, clk, rst, acc);
end rtl;