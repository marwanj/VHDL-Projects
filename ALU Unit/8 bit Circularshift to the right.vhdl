-- 8 Circular
--8 Circular
library ieee;
use ieee.std_logic_1164.all;


entity circularrig_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end circularrig_8Bit;


architecture circularright_Struc_8Bit of circularrig_8Bit is
begin
  outt(7)<=inputt(0);
g1: for b in 0 to 6 generate
  outt(b)<= inputt(b+1);
  end generate;
g2: for b in 8 to 15 generate
outt(b)<= '0';
end generate;


end circularright_Struc_8Bit;
