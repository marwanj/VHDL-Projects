--Minimum block
library ieee;
use ieee.std_logic_1164.all;


entity block_Minimum is
  port (A:in std_logic;
  B:in std_logic;
  lessthanin:in std_logic;
  equalin: in std_logic;
  equal:out std_logic;
  lessthan:out std_logic;
  Mini :out std_logic);
end entity;

architecture block_Minimum_arti of block_Minimum is
begin
equal <=(((not lessthanin) and equalin)and ((A and B)or ((not A) and (not B))));
lessthan <= ((lessthanin) or (B and (not A)and ((not lessthanin) and equalin)));
Mini <= ((lessthanin and A)or (((not lessthanin) and equalin)and (A and B))or ((not equalin) and (not lessthanin) and B));
end architecture;
