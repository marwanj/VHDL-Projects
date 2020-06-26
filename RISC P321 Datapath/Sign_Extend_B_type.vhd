-- Sign extend B
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY SignExtend_B IS
	port (
		SignExIn1  :  in  std_logic_vector(11 downto 7);
		SignExIn2  :  in std_logic_vector(31 downto 25);
    SignExOut  :  out std_logic_vector(31 downto 0));
END SignExtend_B;

ARCHITECTURE SignExtend_B_behaviour of SignExtend_B is
--

  signal concat :std_logic_vector(11 downto 0);
	signal ones   : std_logic_vector(19 downto 0) := (others=>'1');
	signal zeros  : std_logic_vector(19 downto 0) := (others=>'0');
--
BEGIN

  concat    <= SignExIn2  & SignExIn1 ;
	SignExOut <= ones  & concat  when concat(11)='1' else
	             zeros & concat  when concat(11)='0';
END SignExtend_B_behaviour;
