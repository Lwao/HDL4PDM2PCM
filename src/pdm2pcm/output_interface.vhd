library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_signed.all;

entity output_interface is
	generic(n : integer := 32);
	port(
		clk, rdreq, wrreq: in std_logic;
		input: in std_logic_vector(n-1 downto 0);
		output: buffer std_logic_vector(n-1 downto 0);
		hfull_flag, empty_flag, full_flag: buffer std_logic
		);
end output_interface;

architecture rtl of output_interface is

	COMPONENT output_interface_fifo IS
		PORT
		(
			clock		   : IN STD_LOGIC ;
			data		   : IN STD_LOGIC_VECTOR (31 DOWNTO 0);
			rdreq		   : IN STD_LOGIC ;
			wrreq		   : IN STD_LOGIC ;
			almost_full : OUT STD_LOGIC ;
			empty		   : OUT STD_LOGIC ;
			full		   : OUT STD_LOGIC ;
			q		      : OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
		);
	END COMPONENT;

begin

FIFOOP : output_interface_fifo port map (clk, input, rdreq, wrreq, hfull_flag, empty_flag, full_flag, output);
end rtl;