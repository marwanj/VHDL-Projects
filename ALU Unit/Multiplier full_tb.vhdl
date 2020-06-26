--tb for multiplier
library ieee ;
use ieee.std_logic_1164.all;
entity multiplier_16Bit_test is
end multiplier_16Bit_test;



architecture multiplier_16Bit_test of multiplier_16Bit_test is
  component block_full is
    port(inputt1:in std_logic_vector (7 downto 0);
  inputt2: in std_logic_vector (7 downto 0);
  outtt:out std_logic_vector (15 downto 0)
    );
  end component;
signal XT, YT: STD_LOGIC_VECTOR(7 downto 0);
signal ST: std_logic_vector (15 downto 0);
begin
U1: block_full port map(XT, YT,  ST);
process
begin
XT <= "00000000"; YT <= "00000000"; wait for 10 ns;
XT <= "01010101"; YT <= "00011011"; wait for 10 ns;
XT <= "11111111"; YT <= "11111111"; wait for 10 ns;
XT <= "00011101"; YT <= "10101110"; wait for 10 ns;
end process;
end multiplier_16Bit_test;
