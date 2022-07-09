library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity fifo is
	generic(
		word_width : integer := 32;
		fifo_depth : integer := 5
		);

	port(
		clk, rst: in std_logic;
		wr_en, rd_en: in std_logic;
		flag_full, flag_empty: buffer std_logic;
		wr_data: in std_logic_vector (word_width-1 downto 0);
		rd_data: out std_logic_vector (word_width-1 downto 0)
		);
end fifo;

architecture rtl of fifo is
	constant zero_const: std_logic_vector(word_width-1 downto 0) := (others => '0');
	constant wr_ptr_dir, rd_ptr_dir: std_logic := '1'; -- always count up
	
	alias full: std_logic is flag_full;
	alias empty: std_logic is flag_empty;
	
	signal len_ptr, wr_ptr, rd_ptr: std_logic_vector(word_width-1 downto 0) := (others => '0');
	signal len_ptr_dir: std_logic := '0';
	signal len_ptr_en, wr_ptr_en, rd_ptr_en: std_logic := '0';
	signal len_ptr_rst, wr_ptr_rst, rd_ptr_rst: std_logic := '0';
	signal wr_en_end: std_logic := '0';
	
	component simple_dual_port_ram_single_clock is
		generic 
		(
			DATA_WIDTH : natural := 32;
			ADDR_NUMBER : natural := 32
		);

		port 
		(
			clk		: in std_logic;
			raddr	: in natural range 0 to ADDR_NUMBER-1;
			waddr	: in natural range 0 to ADDR_NUMBER-1;
			data	: in std_logic_vector((DATA_WIDTH-1) downto 0);
			we		: in std_logic := '1';
			q		: out std_logic_vector((DATA_WIDTH -1) downto 0)
		);
	end component;
	
	component countern is
		generic(n : integer := 32);
		port (
			Clock, Clear, En, Dir : in std_logic;
			Q : out std_logic_vector(n-1 downto 0)
		);
	end component;
	
begin

-- Manage FIFO's total number of words
len_ptr_dir <= '1' when (wr_en='1' and rd_en='0') else      -- count up if write enable (read disabled)
					'0' when (wr_en='0' and rd_en='1') else 'X'; -- count down if readenable (write disabled)
len_ptr_en <= '1' when (rd_en='0' and wr_en='1' and full='0') else  -- count if is writing but not full
				  '1' when (rd_en='1' and wr_en='0' and empty='0') else -- count if is reading but not empty
				  '0';  -- if any does not count
len_ptr_rst <= rst;

-- Manage FIFO's writing
wr_ptr_en <= '1' when (wr_en='1' and full='0') else '0'; -- increment write ptr if enabled and not full
wr_ptr_rst <=  '1' when (wr_ptr_en='1' and wr_ptr=std_logic_vector(to_unsigned(fifo_depth-1, word_width))) or rst='1' else '0';
wr_en_end <= wr_en and not full;

-- Manage FIFO's reading
rd_ptr_en <= '1' when (rd_en='1' and empty='0') else '0'; -- increment read ptr if enabled and not empty
rd_ptr_rst <=  '1' when (wr_ptr_en='1' and wr_ptr=std_logic_vector(to_unsigned(fifo_depth-1, word_width))) or rst='1' else '0';
				 
-- FIFO's flags
full  <= '1' when len_ptr = std_logic_vector(to_unsigned(fifo_depth, word_width)) else '0';
empty <= '1' when len_ptr = zero_const else '0';

FIFO_LEN: countern generic map (n => word_width) port map (clk, len_ptr_rst, len_ptr_en, len_ptr_dir, len_ptr);
FIFO_WR:  countern generic map (n => word_width) port map (clk, wr_ptr_rst,  wr_ptr_en,  wr_ptr_dir,  wr_ptr);
FIFO_RD:  countern generic map (n => word_width) port map (clk, rd_ptr_rst,  rd_ptr_en,  rd_ptr_dir,  rd_ptr);

RAM : simple_dual_port_ram_single_clock generic map (DATA_WIDTH => word_width, ADDR_NUMBER => fifo_depth) 
													 port map (clk, to_integer(unsigned(rd_ptr)), to_integer(unsigned(wr_ptr)), wr_data, wr_en_end, rd_data);
end rtl;