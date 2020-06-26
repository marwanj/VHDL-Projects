library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY ALU IS
	port (
		in1    : in  std_logic_vector(31 downto 0); ---rs1 19->15
		in2    : in  std_logic_vector(31 downto 0);
		AluFun     : in  std_logic_vector(3 downto 0);
    shamt_alu:in  std_logic_vector(4 downto 0); ----changed
		outALU : out std_logic_vector(31 downto 0));
End Entity;


ARCHITECTURE ALU_1 of ALU is
  signal Multiplication_64:std_logic_vector (63 downto 0);
  signal addition:std_logic_vector (31 downto 0);
  signal subtract:std_logic_vector (31 downto 0);
  signal shiftleftlog:std_logic_vector (31 downto 0);
  signal shiftrightlog:std_logic_vector (31 downto 0);
  signal shiftrightar:std_logic_vector (31 downto 0);
  signal output_temp:std_logic_vector (31 downto 0);
BEGIN

subtract<=std_logic_vector(to_signed (to_integer(signed(in1)) + to_integer(signed (in2)),32));
addition<=std_logic_vector(to_signed(to_integer(signed(in1)) - to_integer(signed (in2)),32));
Multiplication_64 <= std_logic_vector(to_signed(to_integer(signed(in1))*to_integer(signed(in2)),64));
shiftleftlog <= std_logic_vector(unsigned(in1) sll to_integer(unsigned(shamt_alu)));
shiftrightlog <= std_logic_vector(unsigned(in1) srl to_integer(unsigned(shamt_alu)));
shiftrightar <=std_logic_vector(SHIFT_RIGHT(signed(in1),to_integer(unsigned(shamt_alu))));
with AluFun select
  output_temp <=
    -- sum:
    addition when "0000",
    -- Subtract :
    subtract when "0001",
    --Multiplication-Lower:
    Multiplication_64 (31 downto 0) when "0010",
    -- and:
    in1 and in2 when "0101",
    -- or:
    in1 or in2 when "0100",
    -- xor:
    in1 xor in2 when "0011",
    -- shift left logical :
    shiftleftlog   when "0110",
    -- shift right logical:
		shiftrightlog  when "0111",
    --  shift right arithematic:
    shiftrightar  when "1000",
    --Multiplication:Higher
    Multiplication_64 (63 downto 32) when "1001",

    "00000000000000000000000000000000" when others;
    outALU  <=output_temp;


  End ALU_1;
