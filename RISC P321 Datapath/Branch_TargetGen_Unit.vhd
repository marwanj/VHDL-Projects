library IEEE;
use IEEE.std_logic_1164.all;

ENTITY Branch_target_gen IS
	port (

		B_In1  :  in  std_logic_vector(11 downto 7);
    B_In2  :  in  std_logic_vector(31 downto 25);
		PC_In_j  :  in  std_logic_vector(31 downto 0);
		BGenOut :  out std_logic_vector(31 downto 0));
END Branch_target_gen;

ARCHITECTURE Branch_target_gen_brain of Branch_target_gen is
--
	Component FullAdder_32Bit is
		port(X, Y : IN STD_LOGIC_VECTOR(31 downto 0);
			S : OUT STD_LOGIC_VECTOR(31 downto 0));
		end Component;

  Component SignExtend_B IS
    port (
    	SignExIn1  :  in  std_logic_vector(11 downto 7);
    	SignExIn2  :  in std_logic_vector(31 downto 25);
      SignExOut  :  out std_logic_vector(31 downto 0));
  END Component;

  signal concat_33 :	std_logic_vector(32 downto 0);
  signal concat_32 :	std_logic_vector(31 downto 0);
	signal tempb :	std_logic_vector(31 downto 0);
--
BEGIN
signextendb_out:  SignExtend_B port map (B_In1,B_In2,tempb);
	concat_33   <=  tempb & '0' ;
  concat_32<= concat_33 (31 downto 0);
jadd:		FullAdder_32Bit port map(concat_32,PC_In_j,BGenOut);
END Branch_target_gen_brain;
