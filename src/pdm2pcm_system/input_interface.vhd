library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity input_interface is
	generic(n : integer := 32);
	port(
		-- interaction with mic
		input: in std_logic;
		clk_mic: buffer std_logic;
		-- comes from top level
		div: std_logic_vector(n-1 downto 0);
		read_request, write_request, clk_sys, rst: in std_logic;
		-- send to top level
		output: buffer std_logic_vector(n-1 downto 0);
		empty_flag, full_flag: buffer std_logic
		);
end input_interface;

architecture rtl of input_interface is
	constant one_vec: std_logic_vector(31 downto 0) := "00000000000000000000000000000001";
	
	signal fifo_in, fifo_out, temp_diff: std_logic_vector(31 downto 0) := (others => '0');
	signal C, V: std_logic := '0'; -- carry & overflow
	
	component subn is
		generic (n : integer := 32);
		port(
			 X, Y: in std_logic_vector (n-1 downto 0);
			 Z: out std_logic_vector (n-1 downto 0);
			 C, V: out std_logic
			);
	end component;
	
	COMPONENT input_interface_fifo IS
		PORT
		(
			data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			rdclk		: IN STD_LOGIC ;
			rdreq		: IN STD_LOGIC ;
			wrclk		: IN STD_LOGIC ;
			wrreq		: IN STD_LOGIC ;
			q			: OUT STD_LOGIC_VECTOR (31 DOWNTO 0);
			rdempty	: OUT STD_LOGIC ;
			rdfull	: OUT STD_LOGIC 
		);
	END COMPONENT;
	
	component clkdiv is
		generic(n : integer := 32);
		port(
			clk_in, rst: in std_logic;
			div: std_logic_vector(n-1 downto 0); -- "000" div by 2, ..., "111" div by 256
			clk_out: buffer std_logic
			);
	end component;

begin

temp_diff(1) <= input; -- already shift bit to left so can subtract to convert [0,1] to [-1,1]
output <= fifo_out;

CLKDIVOP : clkdiv generic map (n => 32) port map (clk_sys, rst, div, clk_mic);
SUBOP    : subn generic map (n => 32) port map (temp_diff, one_vec, fifo_in, C, V);
FIFOOP   : input_interface_fifo port map (fifo_in, clk_sys, read_request, clk_mic, write_request, fifo_out, empty_flag, full_flag);
end rtl;