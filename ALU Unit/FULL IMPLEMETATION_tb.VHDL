library ieee ;
use ieee.std_logic_1164.all;
entity Fullimpelementation_test is
end Fullimpelementation_test;

architecture Fullimpelementation_test_art of Fullimpelementation_test is
  component Joiningall IS
  PORT( S: IN STD_LOGIC_VECTOR (3 DOWNTO 0); ------- ABACADAB
  X:in STD_LOGIC_VECTOR(7 downto 0);
  Y:in STD_LOGIC_VECTOR(7 downto 0);
  OUTPUTEND: OUT STD_LOGIC_VECTOR (15 downto 0) );
  end component ;
signal ST: STD_LOGIC_VECTOR(3 downto 0);
signal Outtt: STD_LOGIC_VECTOR(15 downto 0);
signal XT, YT: STD_LOGIC_VECTOR(7 downto 0);
begin
U1: Joiningall port map(ST,XT, YT, Outtt);
process
begin
XT <= "00000000"; YT <= "00000000";ST <= "0000";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "0000";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "0000";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "0000";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "0000";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "0000";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "0000";wait for 10 ns;
XT <= "00000000"; YT <= "00000000";ST <= "0001";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "0001";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "0001";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "0001";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "0001";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "0001";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "0001";wait for 10 ns;
XT <= "00000000"; YT <= "00000000";ST <= "0010";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "0010";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "0010";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "0010";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "0010";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "0010";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "0010";wait for 10 ns;
XT <= "00000000"; YT <= "00000000";ST <= "0011";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "0011";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "0011";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "0011";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "0011";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "0011";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "0011";wait for 10 ns;
XT <= "00000000"; YT <= "00000000";ST <= "0100";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "0100";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "0100";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "0100";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "0100";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "0100";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "0100";wait for 10 ns;
XT <= "00000000"; YT <= "00000000";ST <= "0101";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "0101";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "0101";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "0101";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "0101";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "0101";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "0101";wait for 10 ns;
XT <= "00000000"; YT <= "00000000";ST <= "0110";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "0110";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "0110";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "0110";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "0110";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "0110";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "0110";wait for 10 ns;
XT <= "00001000"; YT <= "00000000";ST <= "1000";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "1000";wait for 10 ns;
XT <= "01001001"; YT <= "00110010";ST <= "1000";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "1000";wait for 10 ns;
XT <= "00010111"; YT <= "00111110";ST <= "1000";wait for 10 ns;
XT <= "00101101"; YT <= "11110000";ST <= "1000";wait for 10 ns;
XT <= "11110111"; YT <= "11111111";ST <= "1000";wait for 10 ns;
XT <= "00000000"; YT <= "00000000";ST <= "1001";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "1001";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "1001";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "1001";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "1001";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "1001";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "1001";wait for 10 ns;

XT <= "00000000"; YT <= "00000000";ST <= "1001";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "1001";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "1001";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "1001";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "1001";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "1001";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "1001";wait for 10 ns;

XT <= "00000000"; YT <= "00000000";ST <= "1010";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "1010";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "1010";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "1010";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "1010";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "1010";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "1010";wait for 10 ns;

XT <= "00000000"; YT <= "00000000";ST <= "1011";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "1011";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "1011";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "1011";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "1011";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "1011";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "1011";wait for 10 ns;

XT <= "00000000"; YT <= "00000000";ST <= "1110";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "1110";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "1110";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "1110";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "1110";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "1110";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "1110";wait for 10 ns;


XT <= "00000000"; YT <= "00000000";ST <= "1101";wait for 10 ns;
XT <= "10010110"; YT <= "10011101";ST <= "1101";wait for 10 ns;
XT <= "01000001"; YT <= "00110010";ST <= "1101";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";ST <= "1101";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";ST <= "1101";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";ST <= "1101";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";ST <= "1101";wait for 10 ns;
wait;
end process;
end Fullimpelementation_test_art;
