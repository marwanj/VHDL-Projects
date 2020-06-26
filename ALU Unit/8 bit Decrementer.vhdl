--8 bit decrementer
library ieee;
use ieee.std_logic_1164.all;


entity Decrementer_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end Decrementer_8Bit;



architecture Decrement_Struc_8Bit of Decrementer_8Bit is
component onebitdecrementerr
port (inputt:in std_logic;
  bin:in std_logic;
   outt :out std_logic;
   bout :out std_logic );
end component;
signal boutt : STD_LOGIC_VECTOR(0 to 8);
begin
boutt(0)<= '1';
g1: for b in 0 to 7 generate
U1: onebitdecrementerr port map(inputt(b),boutt(b),outt(b),boutt(b+1));
end generate;

g2: for b in 8 to 15 generate
outt(b)<= boutt(8);
end generate;


end Decrement_Struc_8Bit;
