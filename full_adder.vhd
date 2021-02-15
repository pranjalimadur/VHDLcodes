library ieee;
use ieee.std_logic_1164.all;

entity full_adder is
port	( X,Y,Cin : in std_logic;
		  S,Cout : out std_logic);
end full_adder;

architecture behav of full_adder is
begin
S<=X xor Y xor Cin;
C<=(X and Y) or (Y and Cin) or (Cin and X);
end behav;