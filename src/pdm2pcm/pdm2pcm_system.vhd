library ieee;
use ieee.std_logic_1164.all;

entity pdm2pcm_system is
	generic (word_width : integer := 32);
	port (
		clk, rst : in std_logic;
		
		-- mic interface (conduit)
		pdm_clock  : buffer std_logic;
		pdm_stream : in std_logic
	);
end pdm2pcm_system;

architecture rtl of pdm2pcm_system is
	
	component nios2_pdm2pcm_vhd is
		port (
			clk_clk             : in  std_logic := '0'; --          clk.clk
			reset_reset_n       : in  std_logic := '0'; --        reset.reset_n
			pdm_interface_stream : in  std_logic := '0'; -- pdm_interfae.stream
			pdm_interface_clock  : out std_logic         --             .clock
		);
	end component;
		
begin


NIOS2_SYS : nios2_pdm2pcm_vhd port map (
				clk_clk=>clk, 
				reset_reset_n=>rst, 
				pdm_interface_stream=>pdm_stream, 
				pdm_interface_clock=>pdm_clock);
end rtl;