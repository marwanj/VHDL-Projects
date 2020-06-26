--8 Bit circular left shift
-- 8 Circular
--8 Circular
library ieee;
use ieee.std_logic_1164.all;


entity circularlef_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end circularlef_8Bit;


architecture circularleft_Struc_8Bit of circularlef_8Bit is
begin
  outt(0)<=inputt(7);
g1: for b in 1 to 7 generate
  outt(b)<= inputt(b-1);
  end generate;
g2: for b in 8 to 15 generate
outt(b)<= '0';
end generate;


end circularleft_Struc_8Bit;
