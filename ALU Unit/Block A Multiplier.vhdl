--Building block A of multiplier
library ieee;
use ieee.std_logic_1164.all;

entity block_a is
  port(inputt:in std_logic_vector (7 downto 0);
inbit: in std_logic;
outtti:out std_logic_vector (7 downto 0)
  );
end block_a;

architecture block_a_logic of block_a is

begin
g1: for b in 0 to 7 generate
  outtti(b)<= (inputt(b) and inbit );
  end generate;
end block_a_logic;
