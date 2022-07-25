library ieee;
use ieee.std_logic_1164.all;

entity pdm2pcm_system is
	port (
		clk: in std_logic;
		
		-- mic interface (conduit)
		pdm_clock  : buffer std_logic;
		pdm_stream : in std_logic
	);
end pdm2pcm_system;

architecture rtl of pdm2pcm_system is
	
	component nios_pdm2pcm is
		port (
			clk_clk            : in  std_logic := '0'; --         clk.clk
			pdm_conduit_stream : in  std_logic := '0'; -- pdm_conduit.stream
			pdm_conduit_clock  : out std_logic         --            .clock
		);
	end component;
		
begin

NIOS2_SYS : nios_pdm2pcm port map (
				clk_clk=>clk, 
				pdm_conduit_stream=>pdm_stream, 
				pdm_conduit_clock=>pdm_clock);
end rtl;