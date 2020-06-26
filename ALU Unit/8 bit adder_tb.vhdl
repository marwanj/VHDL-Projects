library ieee ;
use ieee.std_logic_1164.all;
entity FullAdder_16Bit_test is
end FullAdder_16Bit_test;

architecture FA_Struc_16Bit_test of FullAdder_16Bit_test is
component FullAdder_8Bit
port(X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
    CIN0 : IN STD_LOGIC;
    S : OUT STD_LOGIC_VECTOR(15 downto 0);
    COUT8: OUT STD_LOGIC);
end component;
signal XT, YT: STD_LOGIC_VECTOR(7 downto 0);
signal ST: STD_LOGIC_VECTOR(15 downto 0);
signal CINT, COUTT: STD_LOGIC;
begin
U1: FullAdder_8Bit port map(XT, YT, CINT, ST, COUTT);
process
begin
XT <= "00000000"; YT <= "00000000"; CINT <='0';wait for 10 ns;
XT <= "00010000"; YT <= "00010000"; CINT <='0';wait for 10 ns;
XT <= "01000000"; YT <= "00010000"; CINT <='0';wait for 10 ns;
XT <= "01010101"; YT <= "10101010"; CINT <='0';wait for 10 ns;
XT <= "00011111"; YT <= "00111110"; CINT <='0';wait for 10 ns;
XT <= "00111101"; YT <= "11110000"; CINT <='0';wait for 10 ns;
XT <= "11111111"; YT <= "11111111"; CINT <='0';wait for 10 ns;
end process;
end FA_Struc_16Bit_test;
