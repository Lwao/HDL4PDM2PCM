library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ALU is
	generic (n : integer := 32);
	port(
	   X, Y: in std_logic_vector (n-1 downto 0);
		MUX: in std_logic;
	   Z: out std_logic_vector (n-1 downto 0);
		C, V: out std_logic
		);
end ALU;

architecture rtl of ALU is
	signal ZSUM, ZSUB: std_logic_vector (n-1 downto 0);
	signal CSUM, CSUB, VSUM, VSUB: STD_LOGIC;
	
	component sumn is
		generic (n : INTEGER := 32);
		port(
			 X, Y: in std_logic_vector (n-1 downto 0);
			 Z: out std_logic_vector (n-1 downto 0);
			 C, V: out std_logic
		);
	end component;
	
	component subn is
		generic (n : INTEGER := 32);
		port(
			 X, Y: in std_logic_vector (n-1 downto 0);
			 Z: out std_logic_vector (n-1 downto 0);
			 C, V: out std_logic
		);
	end component;
	
begin
	SUM: sumn port map (X, Y, ZSUM, CSUM, VSUM);
	SUB: subn port map (X, Y, ZSUb, CSUB, VSUB);
	
	Z <= ZSUM when MUX='0' else -- 0 for sum
		  ZSUB when MUX='1' else -- 1 for sub
		  (others=>'Z');  
end rtl;