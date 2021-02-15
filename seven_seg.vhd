/*Logic for 3 bit decoder or 7 segment decoder*/

library ieee;
use ieee.std_logic_1164.all;
---library UNISIM;
----use UNISIM.VComponents.all;


entity seven_seg is
port( sw:  in std_logic_vector(2 downto 0);
	  led:  out std_logic_vector(7 downto 0)
	 );
end seven_seg;


architecture behv of seven_seg is
begin

led <= "00000001" when sw ="000" else
"00000010" when sw="001" else
"00000100" when sw="010" else
"00001000" when sw="011" else
"00010000" when sw="100" else
"00100000" when sw="101" else
"01000000" when sw="110" else
"10000000" when sw="111";	

end beh;	