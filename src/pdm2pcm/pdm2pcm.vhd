library ieee;
use ieee.std_logic_1164.all;

entity pdm2pcm is
	generic (n : integer := 32);
	port (
		en, clk, rst : in std_logic;
		config_register: inout std_logic_vector(31 downto 0);
		
		-- mic interface
		pdm_clock  : buffer std_logic;
		pdm_stream : in std_logic;
		
		-- cpu interface
		pcm_output : buffer std_logic_vector(n-1 downto 0)
	);
end pdm2pcm;

architecture rtl of pdm2pcm is
	-- configuration register
	alias R: std_logic_vector(2 downto 0) is config_register(31 downto 29);
	alias M: std_logic_vector(1 downto 0) is config_register(28 downto 27);
	alias N: std_logic_vector(1 downto 0) is config_register(26 downto 25);
	alias out_empty_flag: std_logic is config_register(24);
	alias out_full_flag: std_logic is config_register(23);
	alias out_hfull_flag: std_logic is config_register(22);
	alias out_rdreq: std_logic is config_register(21);
	alias temp_div: std_logic_vector(15 downto 0) is config_register(15 downto 0);
	signal div: std_logic_vector(31 downto 0): (others => '0');
	
	signal cic_input, cic_output: std_logic_vector(n-1 downto 0) : (others => '0');
	
	component input_interface is
		generic(n : integer := 32);
		port(
			-- interaction with mic
			input: in std_logic;
			clk_mic: buffer std_logic;
			-- comes from top level
			div: std_logic_vector(n-1 downto 0);
			read_request, clk_sys, rst: in std_logic;
			-- send to top level
			output: buffer std_logic_vector(n-1 downto 0);
			empty_flag, full_flag: buffer std_logic
			);
	end component;

	component output_interface is
		generic(n : integer := 32);
		port(
			clk, rdreq, wrreq: in std_logic;
			input: in std_logic_vector(n-1 downto 0);
			output: buffer std_logic_vector(n-1 downto 0);
			hfull_flag, empty_flag, full_flag: buffer std_logic
			);
	end component;
	
	entity cic is
		generic (word_width : integer := 32);
		port (
			en, clk, rst : in     std_logic;
			input        : in     std_logic_vector(word_width-1 downto 0);
			R            : in     std_logic_vector(2            downto 0); -- OSR=R
			M, N         : in     std_logic_vector(1            downto 0); -- diff_delay=M, stages=N
			output       : buffer std_logic_vector(word_width-1 downto 0)
		);
	end component;

	
begin

div(15 downto 0) <= temp_div;

ININTER   : input_interface  generic map (n => n) port map (
				input=>pdm_stream,
				clk_mic=>pdm_clock,
				div=>div,
				read_request=>,---------------------------------
				clk_sys=>clk,
				rst=>rst,
				output=>cic_input,
				empty_flag=>,-----------------------------------
				full_flag=>,------------------------------------
);
OUTINTER  : output_interface generic map (n => n) port map (
				clk=>clk,
				rdreq=>out_rdreq,
				wrreq=>en,
				input=>cic_output,
				output=>pcm_output,
				hfull_flag=>out_hfull_flag,
				empty_flag=>out_empty_flag,
				full_flag=>out_full_flag,
);				
CICFILTER : cic 	           generic map (n => n) port map (
				en=>,------------------------------------------- depend on ininter flags
				clk=>clk,
				rst=>rst,
				input=>cic_input,
				R=>R,
				M=>M,
				N=>N,
				output=>cic_output,
);
end rtl;