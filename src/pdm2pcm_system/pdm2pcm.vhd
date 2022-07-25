library ieee;
use ieee.std_logic_1164.all;

entity pdm2pcm is
	generic (word_width : integer := 32);
	port (
		clk, rst : in std_logic;
		
		-- mic interface (conduit)
		pdm_clock  : buffer std_logic;
		pdm_stream : in std_logic;
		
		-- cpu interface (avalon)
		en_vec: in std_logic_vector(1 downto 0);
		config_reg_in: in std_logic_vector(23 downto 0);
		config_reg_out: out std_logic_vector(23 downto 0);
		pcm_output : buffer std_logic_vector(word_width-1 downto 0);
		rdreq: in std_logic -- read pcm data, write configs
	);
end pdm2pcm;

architecture rtl of pdm2pcm is
	alias wrreq: std_logic is en_vec(1);
	alias en: std_logic is en_vec(0);
	-- configuration register
	alias R: std_logic_vector(2 downto 0) is config_reg_in(21 downto 19);
	alias M: std_logic_vector(1 downto 0) is config_reg_in(18 downto 17);
	alias N: std_logic_vector(1 downto 0) is config_reg_in(16 downto 15);
	alias temp_div: std_logic_vector(11 downto 0) is config_reg_in(11 downto 0);
	
	signal div: std_logic_vector(31 downto 0):= (others => '0');
	
	signal cic_input, cic_output, data_output: std_logic_vector(word_width-1 downto 0) := (others => '0');
	signal ininter_empty, ininter_full, ininter_en, outinter_en, cic_enable: std_logic := '0';
	signal out_empty_flag, out_full_flag, out_hfull_flag: std_logic := '0';
	signal config_in: std_logic_vector(23 downto 0) := (others => '0');
	
	component input_interface is
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
	
	component cic is
		generic (word_width : integer := 32);
		port (
			en, clk, rst : in     std_logic;
			input        : in     std_logic_vector(word_width-1 downto 0);
			R            : in     std_logic_vector(2            downto 0); -- OSR=R
			M, N         : in     std_logic_vector(1            downto 0); -- diff_delay=M, stages=N
			output       : buffer std_logic_vector(word_width-1 downto 0)
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
	
	component config_regn is
		port (
			input: in std_logic_vector(23 downto 0);
			en, en_in_conf, en_out_flag, clk, rst : in std_logic;
			output : buffer std_logic_vector(23 downto 0)
		);
	end component;
begin

config_in(21 downto 15) <= config_reg_in(21 downto 15); -- R, M, N fields
config_in(11 downto 0) <= config_reg_in(11 downto 0); -- div field
config_in(14) <= out_empty_flag;
config_in(13) <= out_full_flag;
config_in(12) <= out_hfull_flag;

div(11 downto 0) <= temp_div;
cic_enable <= '0' when (ininter_empty='1' or out_full_flag='1') else '1';
ininter_en <= '0' when (ininter_full='1' and en='1') else '1';
outinter_en <= '0' when (out_full_flag='1' and cic_enable='1') else '1';


ININTER   : input_interface  generic map (n => word_width) port map (
				input=>pdm_stream,
				clk_mic=>pdm_clock,
				div=>div,
				read_request=>cic_enable,
				write_request=>ininter_en,
				clk_sys=>clk,
				rst=>rst,
				output=>cic_input,
				empty_flag=>ininter_empty,
				full_flag=>ininter_full);
OUTINTER  : output_interface generic map (n => word_width) port map (
				clk=>clk,
				rdreq=>rdreq,
				wrreq=>outinter_en,
				input=>cic_output,
				output=>data_output,
				hfull_flag=>out_hfull_flag,
				empty_flag=>out_empty_flag,
				full_flag=>out_full_flag);				 
CICFILTER : cic 	           generic map (word_width => word_width) port map (
				en=>cic_enable,
				clk=>clk,
				rst=>rst,
				input=>cic_input,
				R=>R,
				M=>M,
				N=>N,
				output=>cic_output);
				
DATA_REG  : regn 	           generic map (n => word_width) port map (
				input=>data_output,
				en=>en,
				clk=>clk,
				rst=>rst,
				output=>pcm_output);

CONF_REG  : config_regn      port map(
				input=>config_in,
				en=>en, 
				en_in_conf=>wrreq, 
				en_out_flag=>en, 
				clk=>clk, 
				rst=>rst,
				output=>config_reg_out);
				
end rtl;