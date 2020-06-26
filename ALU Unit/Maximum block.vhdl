--Maximum block
library ieee;
use ieee.std_logic_1164.all;


entity block_maximum is
  port (A:in std_logic;
  B:in std_logic;
  lessthanin:in std_logic;
  equalin: in std_logic;
  equal:out std_logic;
  lessthan:out std_logic;
  max :out std_logic);
end entity;

architecture block_maximum_arti of block_maximum is
begin
equal <=(((not lessthanin) and equalin)and ((A and B)or ((not A) and (not B))));
lessthan <= ((lessthanin) or (B and (not A)and ((not lessthanin) and equalin)));
max <= ((lessthanin and B)or (((not lessthanin) and equalin)and (A or B))or ((not equalin) and (not lessthanin) and A));
end architecture;
