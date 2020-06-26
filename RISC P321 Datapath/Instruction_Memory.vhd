library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY I_Memory IS
	port (
		addr     : in  std_logic_vector(31 downto 0); 	-- the address from alu
		val  : in  std_logic;                   	  -- to enable memeory
		data    : out std_logic_vector(31 downto 0));		-- the output if is a read operation

END I_Memory;

ARCHITECTURE I_Memory_brain of I_Memory is

	type Instruction_Memory_type is array (natural range <>) of std_logic_vector(31 downto 0);
	signal Instruction_Memory:     Instruction_Memory_type(0 to 1023) := (others=> (others => '0'));
	signal Address: integer := 0;

BEGIN
--
Process(addr,val)
begin
if(to_integer(unsigned(addr)) <= 1023 and val='1') then
	data <=	Instruction_Memory(to_integer(unsigned(addr)));
end if;
end Process;
----
END I_Memory_brain;
