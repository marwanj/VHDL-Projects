library IEEE;
use IEEE.std_logic_1164.all;

ENTITY Jump_target IS
	port (
		J_In  :  in  std_logic_vector(31 downto 12);
		PC_In_j  :  in  std_logic_vector(31 downto 0);
		JGenOut :  out std_logic_vector(31 downto 0));
END Jump_target;

ARCHITECTURE Jump_target_brain of Jump_target is
--
	Component FullAdder_32Bit is
		port(X, Y : IN STD_LOGIC_VECTOR(31 downto 0);
			S : OUT STD_LOGIC_VECTOR(31 downto 0));
		end Component;
  signal concat :	std_logic_vector(20 downto 0);
	signal ones   : std_logic_vector(11 downto 0) := (others=>'1');
	signal zeros  : std_logic_vector(11 downto 0) := (others=>'0');
	signal tempj :	std_logic_vector(31 downto 0);
--
BEGIN
	concat    <=  J_In & '0' ;
	tempj 		<= 	ones  & concat  when concat(20)='1' else
	             	zeros & concat  when concat(20)='0';
jadd:		FullAdder_32Bit port map(tempj,PC_In_j,JGenOut);
END Jump_target_brain;
