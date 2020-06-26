--block full
library ieee;
use ieee.std_logic_1164.all;

entity block_full is
  port(inputt1:in std_logic_vector (7 downto 0);
inputt2: in std_logic_vector (7 downto 0);
outtt:out std_logic_vector (15 downto 0)
  );
end block_full;

architecture block_full_logic of block_full is
  component block_a is
    port(inputt:in std_logic_vector (7 downto 0);
  inbit: in std_logic;
  outtti:out std_logic_vector (7 downto 0)
    );
  end component;
  component bit_16_adder is
    port(X:in std_logic_vector (15 downto 0);
  Y: in std_logic_vector (15 downto 0);
  S:out std_logic_vector (15 downto 0)
    );
  end component;

signal x0t,x1t,x2t,x3t,x4t,x5t,x6t,x7t:std_logic_vector (7 downto 0);
signal x0tt,x1tt,x2tt,x3tt,x4tt,x5tt,x6tt,x7tt:std_logic_vector (15 downto 0);
signal o0t,o1t,o2t,o3t,o4t,o5t,o6t,o7t : std_logic_vector (15 downto 0);
begin
  u0: block_a port map(inputt1,inputt2(0),x0t );
  u1: block_a port map(inputt1,inputt2(1),x1t );
  u2: block_a port map(inputt1,inputt2(2),x2t );
  u3: block_a port map(inputt1,inputt2(3),x3t );
  u4: block_a port map(inputt1,inputt2(4),x4t );
  u5: block_a port map(inputt1,inputt2(5),x5t );
  u6: block_a port map(inputt1,inputt2(6),x6t );
  u7: block_a port map(inputt1,inputt2(7),x7t );

  s10: for b in 0 to 7 generate
    o0t(b)<=x0t(b);
    end generate;
  s20: for c in 8 to 15 generate
    o0t(c)<='0';
    end generate;
  o1t(0)<='0';
  s11: for b in 0 to 7 generate
    o1t(b+1)<=x1t(b);
    end generate;
  s21: for c in 9 to 15 generate
  o1t(c)<='0';
  end generate;

  o2t(0)<='0';
  o2t(1)<='0';
  s12: for b in 0 to 7 generate
    o2t(b+2)<=x2t(b);
    end generate;
  s22: for c in 10 to 15 generate
  o2t(c)<='0';
  end generate;

  o3t(0)<='0';
  o3t(1)<='0';
  o3t(2)<='0';
  s13: for b in 0 to 7 generate
    o3t(b+3)<=x3t(b);
    end generate;
  s23: for c in 11 to 15 generate
  o3t(c)<='0';
  end generate;

  o4t(0)<='0';
  o4t(1)<='0';
  o4t(2)<='0';
  o4t(3)<='0';
  s14: for b in 0 to 7 generate
    o4t(b+4)<=x4t(b);
    end generate;
  s24: for c in 12 to 15 generate
  o4t(c)<='0';
  end generate;

  o5t(13)<='0';
  o5t(14)<='0';
  o5t(15)<='0';
  s15: for b in 0 to 7 generate
    o5t(b+5)<=x5t(b);
    end generate;
  s25: for c in 0 to 4 generate
  o5t(c)<='0';
  end generate;



  o6t(14)<='0';
  o6t(15)<='0';
  s16: for b in 0 to 7 generate
    o6t(b+6)<=x6t(b);
    end generate;
  s26: for c in 0 to 5 generate
  o6t(c)<='0';
  end generate;


  o7t(15)<='0';
  s17: for b in 0 to 7 generate
    o7t(b+7)<=x7t(b);
    end generate;
  s27: for c in 0 to 6 generate
  o7t(c)<='0';
  end generate;


  a0: bit_16_adder port map(o1t,o0t,x0tt);
  a1: bit_16_adder port map(x0tt,o2t,x1tt);
  a2: bit_16_adder port map(x1tt,o3t,x2tt);
  a3: bit_16_adder port map(x2tt,o4t,x3tt);
  a4: bit_16_adder port map(x3tt,o5t,x4tt);
  a5: bit_16_adder port map(x4tt,o6t,x5tt);
  a6: bit_16_adder port map(x5tt,o7t,x6tt);
  --a7: bit_16_adder port map(o6t,x7t,o7t);
  outtt<=x6tt;

end block_full_logic;
