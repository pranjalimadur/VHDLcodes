library ieee;
use ieee.std_logic_1164.all;
use work.all;

entity d_flipflop is
port	(data_in : in std_logic;
		 clock  : in std_logic;
		  data_out : out std_logic);
end d_flipflop;

architecture behav of d_flipflop is
begin

process(data_in,clock)
begin

	if(clock='1' and clock'event)then
		data_out<=data_in;
	end if;
end process;
end behav;