--Full Design


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY Joiningall IS
PORT( S: IN STD_LOGIC_VECTOR (3 DOWNTO 0); ------- ABACADAB
X:in STD_LOGIC_VECTOR(7 downto 0);
Y:in STD_LOGIC_VECTOR(7 downto 0);
OUTPUTEND: OUT STD_LOGIC_VECTOR (15 downto 0) );
END Joiningall;


ARCHITECTURE Joiningall_art OF Joiningall IS

component FullAdder_8Bit
port(X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
    S : OUT STD_LOGIC_VECTOR(15 downto 0));
end component;


component circularlef_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end component;

component circularrig_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end component;

component Decrementer_8Bit
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end component;

component incrementer_8Bit
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end component;

component lef_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end component;

component lef_LSB_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end component;



component Maximum_8Bit is
  port(X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
      S : OUT std_logic_VECTOR(15 downto 0));
  end component ;




  component Minimum_8Bit is
  port(X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
      S : OUT std_logic_VECTOR(15 downto 0));
  end component ;


component rig_MSB_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end component;

component rig_8Bit is
port(inputt:in std_logic_vector (7 downto 0);
   outt :OUT STD_LOGIC_VECTOR(15 downto 0));
end component;


component FullSubtractor_8Bit
port(X, Y : IN STD_LOGIC_VECTOR(7 downto 0);
    S : OUT STD_LOGIC_VECTOR(15 downto 0));
end component;


  component block_full is
    port(inputt1:in std_logic_vector (7 downto 0);
  inputt2: in std_logic_vector (7 downto 0);
  outtt:out std_logic_vector (15 downto 0)
    );
  end component;

  Component mux4in18b IS
  PORT( S: IN STD_LOGIC_VECTOR (3 DOWNTO 0); ------- ABACADAB
  A, B, C, D,E,F,G,H,I,J,K,L,M: IN STD_LOGIC_VECTOR (15 downto 0);
  Y: OUT STD_LOGIC_VECTOR (15 downto 0) );
  END component;

Signal At,Bt,Ct,Dt,Et,Ft,Gt,Ht,It,Jt,Kt,Lt,Mt:STD_LOGIC_VECTOR (15 downto 0);
BEGIN
  Umux: mux4in18b port map(S,At,Bt,Ct,Dt,Et,Ft,Gt,Ht,It,Jt,Kt,Lt,Mt,OUTPUTEND);
  U0000: FullAdder_8Bit port map(X,Y,At);
  U0001: incrementer_8Bit port map(X,Bt);
  U0010: FullSubtractor_8Bit port map(X,Y,Ct);
  U0011: Decrementer_8Bit port map(X,Dt);
  U0100: block_full port map(X,Y,Et);
  U0101: Minimum_8Bit port map(X,Y,Ft);
  U0110: Maximum_8Bit port map(X,Y,Gt);--working till here
  U1000: circularrig_8Bit port map(X,Ht);
  U1001: circularlef_8Bit port map(X,It);
  U1010: rig_8Bit port map(X,Jt);
  U1011: lef_8Bit port map(X,Kt);
  U1110:rig_MSB_8Bit port map(X,Lt);
  U1101:lef_LSB_8Bit port map(X,Mt);
END Joiningall_art;
