--Full Design
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
ENTITY mux4in18b IS
PORT( S: IN STD_LOGIC_VECTOR (3 DOWNTO 0); ------- ABACADAB
A, B, C, D,E,F,G,H,I,J,K,L,M: IN STD_LOGIC_VECTOR (15 downto 0);
Y: OUT STD_LOGIC_VECTOR (15 downto 0) );
END mux4in18b;
ARCHITECTURE mux4in18b OF mux4in18b IS
BEGIN
PROCESS (S, A, B, C, D,E,F,G,H,I,J,K,L,M)
BEGIN
CASE S IS
WHEN "0000" => Y <= A;
WHEN "0001" => Y <= B;
WHEN "0010" => Y <= C;
WHEN "0011" => Y <= D;
WHEN "0100" => Y <= E;
WHEN "0101" => Y <= F;
WHEN "0110" => Y <= G;
WHEN "1000" => Y <= H;
WHEN "1001" => Y <= I;
WHEN "1010" => Y <= J;
WHEN "1011" => Y <= K;
WHEN "1110" => Y <= L;
WHEN "1101" => Y <= M;
WHEN OTHERS => Y <= (OTHERS =>'U');
END CASE;
END PROCESS;
END mux4in18b;
