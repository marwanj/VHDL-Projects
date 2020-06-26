library ieee;
use ieee.std_logic_1164.all;


entity dummyonebb is
end dummyonebb;



architecture mytest of dummyonebb is
  component onebitdecrementerr
  port (
    inputt,bin  : in  std_logic;
    outt,bout : out std_logic
  );
end component onebitdecrementerr;

  signal xt,yt,zt,kt:std_logic;
  begin
  U1:onebitdecrementerr port map(xt,yt,zt,kt);
process
begin
  xt <= '0';yt <= '0';
  wait for 10 ns;
  xt <= '0';yt <= '1';
  wait for 10 ns;
  xt <= '1';yt <= '0';
  wait for 10 ns;
  xt <= '1';yt <= '1';
  wait ;
end process;
end mytest ;
