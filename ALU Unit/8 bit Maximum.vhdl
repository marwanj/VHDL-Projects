library ieee;
use ieee.std_logic_1164.all;



entity Maximum_8Bit is
port(X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
    S : OUT std_logic_vector (15 downto 0));
end Maximum_8Bit ;


-- Structural architecture for 8-bit adder
architecture FM_Struc_8Bit of Maximum_8Bit is
  component block_maximum is
    port (A:in std_logic;
    B:in std_logic;
    lessthanin:in std_logic;
    equalin: in std_logic;
    equal:out std_logic;
    lessthan:out std_logic;
    max :out std_logic);
  end component;

signal lessthant : STD_LOGIC_VECTor (7 downto 0) ;
signal equalt : STD_LOGIC_VECTor (7 downto 0);
--signal maxt : STD_LOGIC_VECTOR(7 downto 0);

begin
  U122: block_maximum port map(X(7),Y(7),'0','1',equalt(7),lessthant(7),S(7));
g1: for b in 6 downto 0 generate
U122: block_maximum port map(X(b),Y(b),lessthant(b+1),equalt(b+1),equalt(b),lessthant(b),S(b));
end generate;
g2: for b in 8 to 15 generate
S(b)<='0';
end generate;
end FM_Struc_8Bit;
