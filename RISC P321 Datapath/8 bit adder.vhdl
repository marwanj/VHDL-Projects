library ieee;
use ieee.std_logic_1164.all;



entity FullAdder_32Bit is
port(X, Y : IN STD_LOGIC_VECTOR(31 downto 0);
    S : OUT STD_LOGIC_VECTOR(31 downto 0));
end FullAdder_32Bit;

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
architecture FA_Struc_32Bit of FullAdder_32Bit is

component FullAdder_1Bit port(X, Y, CIN: IN STD_LOGIC;S, COUT: OUT STD_LOGIC);
end component;

signal TEMP : STD_LOGIC_VECTOR(0 to 32);

begin
g1: for b in 0 to 31 generate
U1: FullAdder_1Bit port map(X=>X(b),Y=>Y(b),CIN=>TEMP(b),S=>S(b), COUT=>TEMP(b+1));
end generate;
TEMP(0) <= '0';
S <= TEMP(0 TO 31);


end FA_Struc_32Bit;
