library ieee ;
use ieee.std_logic_1164.all;
entity ALU_test is
end ALU_test;

architecture ALU_tester of ALU_test is
Component ALU IS
  	port (
  		in1    : in  std_logic_vector(31 downto 0); ---rs1 19->15
  		in2    : in  std_logic_vector(31 downto 0);
  		AluFun     : in  std_logic_vector(3 downto 0);
      shamt_alu:in  std_logic_vector(4 downto 0); ----changed
  		outALU : out std_logic_vector(31 downto 0));
  End Component;
signal XT, YT: STD_LOGIC_VECTOR(31 downto 0);
signal AluFun: STD_LOGIC_VECTOR(3 downto 0);
signal shamt_alu: std_logic_vector(4 downto 0);
signal out_alu: STD_LOGIC_vector(31 downto 0);
begin
U1: ALU port map(XT, YT, AluFun, shamt_alu, out_alu);
process
begin
-----ADD
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="0000";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="0000";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="0000";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="0000";shamt_alu<="10000";wait for 10 ns;
---Sub
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="0001";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="0001";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="0001";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="0001";shamt_alu<="10000";wait for 10 ns;
----Multlow
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="0010";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="0010";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="0010";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="0010";shamt_alu<="10000";wait for 10 ns;
------Mulhigh
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="1001";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="1001";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="1001";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="1001";shamt_alu<="10000";wait for 10 ns;
------xor
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="0011";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="0011";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="0011";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="0011";shamt_alu<="10000";wait for 10 ns;
--or
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="0100";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="0100";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="0100";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="0100";shamt_alu<="10000";wait for 10 ns;
----and
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="0101";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="0101";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="0101";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="0101";shamt_alu<="10000";wait for 10 ns;
--shift sll
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="0110";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="0110";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="0110";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="0110";shamt_alu<="10000";wait for 10 ns;
---srl
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="0111";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="0111";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="0111";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="0111";shamt_alu<="10000";wait for 10 ns;
---sra
XT <= "00000000000000000000000000000000"; YT <= "00000000000000000000000000000000"; AluFun <="1000";shamt_alu<="01010";wait for 10 ns;
XT <= "01000001100101011101010010101000"; YT <= "00000000000000000000000000000000"; AluFun <="1000";shamt_alu<="00001";wait for 10 ns;
XT <= "10010010101101010101010101000011"; YT <= "01000001100101011101010010101000"; AluFun <="1000";shamt_alu<="00010";wait for 10 ns;
XT <= "01011010101010110101000111000010"; YT <= "10100101001010100101100101010001"; AluFun <="1000";shamt_alu<="10000";wait for 10 ns;




end process;
end ;