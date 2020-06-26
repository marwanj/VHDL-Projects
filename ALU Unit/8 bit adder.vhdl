library ieee;
use ieee.std_logic_1164.all;



entity FullAdder_8Bit is
port(X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
    S : OUT STD_LOGIC_VECTOR(15 downto 0));
end FullAdder_8Bit;

library ieee;
use ieee.std_logic_1164.all;


entity FullAdder_1Bit is
  port(X, Y, CIN : IN STD_LOGIC ;S, COUT : OUT STD_LOGIC) ;
end FullAdder_1Bit;




-- Behavioral architecture
architecture FA_Behav_1Bit of FullAdder_1Bit is
begin
process(X,Y,CIN)
begin
S <= X XOR Y XOR CIN;
COUT <= (X and Y) or (X and CIN) or (Y and CIN);
end process;
end FA_Behav_1Bit;
-- Structural architecture for 8-bit adder
architecture FA_Struc_8Bit of FullAdder_8Bit is
component FullAdder_1Bit port(X, Y, CIN: IN STD_LOGIC;
S, COUT: OUT STD_LOGIC);
end component;
signal COUT : STD_LOGIC_VECTOR(0 to 8);
begin
g1: for b in 0 to 7 generate
U1: FullAdder_1Bit port map(X=>X(b),Y=>Y(b),CIN=>COUT(b),S=>S(b), COUT=>COUT(b+1));
end generate;
COUT(0) <= '0';
S(8)<= COUT(8);

g2: for b in 9 to 15 generate
S(b)<= '0';
end generate;


end FA_Struc_8Bit;
