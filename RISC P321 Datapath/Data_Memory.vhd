library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

ENTITY Memory IS
	port (clk     : in  std_logic;
		addr     : in  std_logic_vector(31 downto 0); 	-- the address from alu
		wdata : in  std_logic_vector(31 downto 0); 			-- the data from 2nd register
		mem_val  : in  std_logic;                   	  -- to enable memeory
		mem_rw   : in  std_logic;                   	  -- 0 to write 1 to read
		rdata    : out std_logic_vector(31 downto 0)		-- the output if is a read operation
		);
END Memory;

ARCHITECTURE Memory_1 of Memory is

	type Data_Memory_type is array (natural range <>) of std_logic_vector(31 downto 0);
	signal Data_Memory:     Data_Memory_type(0 to 1023) := (others=> (others => '0'));
	signal Address: integer := 0;

BEGIN
--
process(clk)
begin
	Address <= to_integer(unsigned(addr)) ; ----We're changing the adress to an integer
if (clk'event and clk='1'and mem_val='1'and mem_rw ='0' and to_integer(unsigned(addr)) <= 1023) then---were writing to memory
	Data_Memory(Address) <=  wdata;
end if;

if (clk'event and clk='0'and mem_val='1'and mem_rw ='1'and to_integer(unsigned(addr)) <= 1023) then
		rdata <=	Data_Memory(Address);
	end if;
end process;
----
END Memory_1;
