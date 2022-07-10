library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity sumn is
	generic (n : integer := 32);
	port(
	    X, Y: in std_logic_vector (n-1 downto 0);
	    Z: out std_logic_vector (n-1 downto 0);
		 C, V: out std_logic
		);
end sumn;

architecture rtl of sumn is
	 signal TX, TY, TZ: std_logic_vector (n downto 0);
	 
begin

	TX(n-1 downto 0) <= X;
	TX(n) <= '0';
	
	TY(n-1 downto 0) <= Y;
	TY(n) <= '0';
	
	TZ <= std_logic_vector( unsigned(TX)+unsigned(TY) );
	Z <= TZ(n-1 downto 0);
	
	C <= TZ(n);
 	V <= '1' when (TZ(n-1)='1' and X(n-1)='0' and Y(n-1)='0') or (TZ(n-1)='0' and X(n-1)='1' and Y(n-1)='1') else '0';
				  
end rtl;