--1 bit incrementor
library ieee;
use ieee.std_logic_1164.all;
entity onebitincrementerr is
  port (inputt:in std_logic;
  bin:in std_logic;
   outt :out std_logic;
   bout :out std_logic );
end onebitincrementerr;

architecture behavin of onebitincrementerr is
begin
process (bin,inputt)
begin
  if ((inputt xor bin )='1')
  then outt<='1';
else outt <='0';
end if;
if (((inputt) and (bin))='1')  then bout <='1';
else bout <= '0';
end if;
  end process ;
end behavin;
