-- 8 bit incrementer
--8 bit incrementer
library ieee;
use ieee.std_logic_1164.all;


entity incrementer_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end incrementer_8Bit;


architecture Increment_Struc_8Bit of incrementer_8Bit is
component onebitincrementerr
port (inputt:in std_logic;
  bin:in std_logic;
   outt :out std_logic;
   bout :out std_logic );
end component;
signal boutt : STD_LOGIC_VECTOR(0 to 8);
begin
boutt(0)<= '1';
g1: for b in 0 to 7 generate
U1: onebitincrementerr port map(inputt(b),boutt(b),outt(b),boutt(b+1));
end generate;
--bout<= boutt(8);
outt(8)<= boutt(8);

g2: for b in 9 to 15 generate
outt(b)<= '0';
end generate;


end Increment_Struc_8Bit;
