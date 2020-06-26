--shift circular left

library ieee ;
use ieee.std_logic_1164.all;
entity shift_left_16Bit_test is
end shift_left_16Bit_test;

architecture shift_left_16Bitarti_test of shift_left_16Bit_test is
component lef_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end component;
signal XT: STD_LOGIC_VECTOR(7 downto 0);
signal outT: STD_LOGIC_VECTOR(15 downto 0);
begin
U1: lef_8Bit port map(XT,outT);
process
begin
XT <= "00000000";  wait for 10 ns;
XT <= "00010000";  wait for 10 ns;
XT <= "01000000";  wait for 10 ns;
XT <= "01010101";  wait for 10 ns;
XT <= "00011111";  wait for 10 ns;
XT <= "00111101";  wait for 10 ns;
XT <= "11111111";  wait for 10 ns;
end process;
end shift_left_16Bitarti_test;
