/*Logic for 2x4 decoder*/

library ieee;
use ieee.std_logic_1164.all;


entity decoder is
port( I:  in std_logic_vector(1 downto 0);
	  O:  out std_logic_vector(3 downto 0)
	 );
end decoder;


architecture beh of decoder is
begin


process(I)
begin

	case I is 
			when "00"=>O<="0001";
			when "01"=>O<="0010";
			when "10"=>O<="0100";
			when "11"=>O<="1000";
			when others=>O<="XXXX";
	end case;
end process;
end beh;	