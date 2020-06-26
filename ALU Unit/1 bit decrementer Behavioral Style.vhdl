library ieee;
use ieee.std_logic_1164.all;
entity onebitdecrementerr is
  port (inputt:in std_logic;
  bin:in std_logic;
   outt :out std_logic;
   bout :out std_logic );
end onebitdecrementerr;

architecture behavdere of onebitdecrementerr is
begin
process (bin,inputt)
begin
  if ((inputt xor bin )='1')
  then outt<='1';
else outt <='0';
end if;
if (((not inputt) and (bin))='1')  then bout <='1';
else bout <= '0';
end if;
  end process ;
end behavdere;
