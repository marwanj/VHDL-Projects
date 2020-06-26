library ieee;
use ieee.std_logic_1164.all;


entity FullAdder_1Bits is
  port(X, Y, CIN : IN STD_LOGIC ;S, COUT : OUT STD_LOGIC) ;
end FullAdder_1Bits;




-- Behavioral architecture
architecture FA_Behav_1Bits of FullAdder_1Bits is
begin
process(X,Y,CIN)
begin
S <= X XOR Y XOR CIN;
COUT <= (X and Y) or (X and CIN) or (Y and CIN);
end process;
end FA_Behav_1Bits;

--block 16 bit adder for multiplier

library ieee;
use ieee.std_logic_1164.all;

entity bit_16_adder is
  port(X:in std_logic_vector (15 downto 0);
Y: in std_logic_vector (15 downto 0);
S:out std_logic_vector (15 downto 0)
  );
end bit_16_adder;

architecture block_adder_logic of bit_16_adder is
  component FullAdder_1Bits port(X, Y, CIN: IN STD_LOGIC;
  S, COUT: OUT STD_LOGIC);
  end component;

  signal COUT : STD_LOGIC_VECTOR(0 to 16);
  begin
  COUT(0)<='0';
  g8: for b in 0 to 15 generate
  U8: FullAdder_1Bits port map(X(b),Y(b),COUT(b),S(b),COUT(b+1));
  end generate;

end block_adder_logic;
