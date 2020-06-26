---JumpReg  TargetGen Unit-----
library IEEE;
use IEEE.std_logic_1164.all;

ENTITY JumpReg_target_gen IS
	port (

		J_Reg_In_1  :  in  std_logic_vector(31 downto 20);
		RS1_Data_In_j  :  in  std_logic_vector(31 downto 0);
		J_Reg_GenOut :  out std_logic_vector(31 downto 0));
END JumpReg_target_gen;

ARCHITECTURE JumpReg_target_gen_brain of JumpReg_target_gen is
--
	Component FullAdder_32Bit is
		port(X, Y : IN STD_LOGIC_VECTOR(31 downto 0);
			S : OUT STD_LOGIC_VECTOR(31 downto 0));
	   end Component;

  Component SignExtend_I IS
    	port (
    		SignExIn  :  in  std_logic_vector(31 downto 20);
    		SignExOut :  out std_logic_vector(31 downto 0));
      end Component;

  signal concat_33 :	std_logic_vector(32 downto 0);
  signal concat_32 :	std_logic_vector(31 downto 0);
	signal tempb :	std_logic_vector(31 downto 0);
--
BEGIN
signextendi_out:  SignExtend_I port map (J_Reg_In_1,tempb);
	concat_33   <=  tempb & '0' ;
  concat_32<= concat_33 (31 downto 0);
jadd:		FullAdder_32Bit port map(concat_32,RS1_Data_In_j,J_Reg_GenOut);
END JumpReg_target_gen_brain;
