----Branch CondGen  Unit-----
library IEEE;
use IEEE.std_logic_1164.all;
use ieee.numeric_std.all;
ENTITY Branch_CondGen IS
	port (
    rs1_Data_in   :  in  std_logic_vector(31 downto 0);
    rs2_Data_in   :  in  std_logic_vector(31 downto 0);
		br_lt        :  out  std_logic;
		br_eq         :  out std_logic);
END Branch_CondGen;

ARCHITECTURE Branch_CondGen_Brain of Branch_CondGen is

Begin
    br_eq  <= '1' when signed(rs1_Data_in) = signed(rs2_Data_in) else '0';
    br_lt  <= '1' when signed(rs1_Data_in) < signed(rs2_Data_in) else '0';

END Branch_CondGen_Brain;
