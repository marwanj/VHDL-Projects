--8 Bit  left_LSB shift
-- 8
--8
library ieee;
use ieee.std_logic_1164.all;


entity lef_LSB_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end lef_LSB_8Bit;


architecture left_LSB_Struc_8Bit of lef_LSB_8Bit is
begin
  outt(0)<=inputt(0);
g1: for b in 1 to 8 generate
  outt(b)<= inputt(b-1);
  end generate;
g2: for b in 9 to 15 generate
outt(b)<= '0';
end generate;


end left_LSB_Struc_8Bit;
