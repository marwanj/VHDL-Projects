library ieee ;
use ieee.std_logic_1164.all;
entity Increment_16Bit_test is
end Increment_16Bit_test;

architecture FA_Struc_16Bit_test of Increment_16Bit_test is
component incrementer_8Bit
port(inputt:in std_logic_vector (7 downto 0);
  bin:in std_logic;
   outt :OUT STD_LOGIC_VECTOR(15 downto 0);
   bout :out std_logic);
end component;
signal XT: STD_LOGIC_VECTOR(7 downto 0);
signal outT: STD_LOGIC_VECTOR(15 downto 0);
signal binT, boutT: STD_LOGIC;
begin
U1: incrementer_8Bit port map(XT,  binT, outT, boutT);
process
begin
XT <= "00000000";  binT <='0';wait for 10 ns;
XT <= "00010000";  binT <='0';wait for 10 ns;
XT <= "01000000";  binT <='0';wait for 10 ns;
XT <= "01010101";  binT <='0';wait for 10 ns;
XT <= "00011111";  binT <='0';wait for 10 ns;
XT <= "00111101";  binT <='0';wait for 10 ns;
XT <= "11111111";  binT <='0';wait for 10 ns;
end process;
end FA_Struc_16Bit_test;
