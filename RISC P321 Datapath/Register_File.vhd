library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity register_file is
  port(
    clk         : in  std_logic;
    ir1         : in  std_logic_vector(4 downto 0); ----shouf iza sah
    ir2         : in  std_logic_vector(4 downto 0);
    rf_wen      : in  std_logic;                    --enable
    wa          : in  std_logic_vector(4 downto 0);----register destination
    wd          : in  std_logic_vector(31 downto 0);---input from the source
    rs1        : out std_logic_vector(31 downto 0); ---out
    rs2        : out std_logic_vector(31 downto 0) ----out

    );
end register_file;


architecture register_file_brain of register_file is
  type registerFile is array(0 to 31) of std_logic_vector(31 downto 0);
  signal registers : registerFile;
begin
  registers(0) <= "00000000000000000000000000000000";
  regFile : process (clk) is
  begin
    if (clk'event and clk='0') then           ------Read the potatoe register file
      rs1 <= registers(to_integer(unsigned(ir1)));
      rs2 <= registers(to_integer(unsigned(ir2)));
    elsif (clk'event and clk='1' and rf_wen ='1' and to_integer(unsigned(ir1))/=0 and to_integer(unsigned(ir2))/=0) then    -------Write the potatoe register file
        registers(to_integer(unsigned(wa))) <= wd;  -- Write
    end if;
  end process;
end register_file_brain;
