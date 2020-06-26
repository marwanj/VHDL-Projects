library ieee ;
use ieee.std_logic_1164.all;
entity Minimum_test is
end Minimum_test;

architecture Minimum_test_art of Minimum_test is

  component Minimum_8Bit is
  port(X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
      S : OUT std_logic_VECTOR(15 downto 0));
  end component ;
signal ST: STD_LOGIC_VECTOR(15 downto 0);
signal XT, YT: STD_LOGIC_VECTOR(7 downto 0);
begin
U1: Minimum_8Bit port map(XT, YT, ST);
process
begin
XT <= "00000000"; YT <= "00000000";wait for 10 ns;
XT <= "00010000"; YT <= "00010000";wait for 10 ns;
XT <= "01000000"; YT <= "00010000";wait for 10 ns;
XT <= "01010101"; YT <= "10101010";wait for 10 ns;
XT <= "00011111"; YT <= "00111110";wait for 10 ns;
XT <= "00111101"; YT <= "11110000";wait for 10 ns;
XT <= "11111111"; YT <= "11111111";wait for 10 ns;
end process;
end Minimum_test_art;
