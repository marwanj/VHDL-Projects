library IEEE;
use IEEE.std_logic_1164.all;

ENTITY SignExtend_I IS
	port (
		SignExIn  :  in  std_logic_vector(31 downto 20);
		SignExOut :  out std_logic_vector(31 downto 0));
END SignExtend_I;

ARCHITECTURE SignExtend_I_behaviour of SignExtend_I is
--
  signal concat :	std_logic_vector(11 downto 0);
	signal ones   : std_logic_vector(19 downto 0) := (others=>'1');
	signal zeros  : std_logic_vector(19 downto 0) := (others=>'0');
--
BEGIN
	concat    <= SignExIn ;
	SignExOut <= ones  & concat  when concat(11)='1' else
	             zeros & concat  when concat(11)='0';
END SignExtend_I_behaviour;
