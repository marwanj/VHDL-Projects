-- 8
--8
library ieee;
use ieee.std_logic_1164.all;


entity rig_MSB_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end rig_MSB_8Bit;


architecture right_MSB_Struc_8Bit of rig_MSB_8Bit is
begin
  outt(7)<=inputt(7);
g1: for b in 0 to 6 generate
  outt(b)<= inputt(b+1);
  end generate;
g2: for b in 8 to 15 generate
outt(b)<= '0';
end generate;


end right_MSB_Struc_8Bit;
