/*Logic for simple_combination gates*/

library ieee;
use ieee.std_logic_1164.all;


entity simple_gate is
port( A:  in std_logic;
	  B:  in std_logic;
	  F1,F2,F3,F4:  out std_logic
	 );
end simple_gate;


architecture behv of simple_gate is
begin


process(A,B)
begin
	F1<=A and B;
	F2<=A or B;
	F3<=A xor B;
	F4<=A xnor B;
	
end process;
end behv;	