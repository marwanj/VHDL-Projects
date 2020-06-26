library ieee;
use ieee.std_logic_1164.all;



entity FullSubtractor_8Bit is
port(X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
    S : OUT STD_LOGIC_VECTOR(15 downto 0));
end FullSubtractor_8Bit;

library ieee;
use ieee.std_logic_1164.all;


entity FullSubtractor_1Bit is
  port(X, Y, CIN : IN STD_LOGIC ;S, COUT : OUT STD_LOGIC) ;
end FullSubtractor_1Bit;




-- Behavioral architecture
architecture FS_Behav_1Bit of FullSubtractor_1Bit is
begin
process(X,Y,CIN)
begin
S <= ((not CIN)and(not X)and(Y))or ((not CIN)and(X)and(not Y)) or ((CIN)and(not X)and(not Y)) or (CIN and X and Y);
COUT <= ((not X) and Y) or ((not X) and CIN) or (Y and CIN);
end process;
end FS_Behav_1Bit;
-- Structural architecture for 8-bit Subtractor
architecture FS_Struc_8Bit of FullSubtractor_8Bit is
component FullSubtractor_1Bit port(X, Y, CIN: IN STD_LOGIC;
S, COUT: OUT STD_LOGIC);
end component;
signal COUT : STD_LOGIC_VECTOR(0 to 8);
begin
g1:  for b in 0 to 7 generate
   U1: FullSubtractor_1Bit port map(X=>X(b),Y=>Y(b),CIN=>COUT(b),S=>S(b), COUT=>COUT(b+1));
 end generate;
 COUT(0) <= '0';
 S(8)<=Cout(8);
 g2: for a in 9 to 15 generate
   S(a)<=Cout(8);
 end generate;

end FS_Struc_8Bit;
