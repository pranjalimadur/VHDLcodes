---1 bit adder

library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;


entity adder is

port(	A: in std_logic;
		B: in std_logic;
		carry: out std_logic;
		sum: out std_logic);
		
end adder;

architecture behav of adder is
signal result: std_logic_vector(1 downto 0);

begin

result<=('0'& A)+('0'& B);
sum<=result(0 downto 0);
carry<=result(1);

end behav;
