library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity single_cycle_controller is
port
( br_eq:in std_logic;
  br_lt:in std_logic;
  instruction : in std_logic_vector(31 downto 0);
  pc_sel :out std_logic_vector (1 downto 0);
  val:out std_logic;
  Op1Sel:out std_logic;
  Op2Sel :out std_logic_vector (1 downto 0);
  AluFun : out std_logic_vector(3 downto 0);
  mem_val:out std_logic;
  mem_rw:out std_logic;
	wb_sel : out  std_logic_vector(2 downto 0);
  wa_sel:out std_logic;
  rf_wen:out std_logic
);
end single_cycle_controller;


architecture arch of single_cycle_controller is

signal func7 : std_logic_vector(6 downto 0);
signal func3 : std_logic_vector(2 downto 0);
signal opcode : std_logic_vector(6 downto 0);
begin

  process(opcode,func7,func3)
  begin
    val     <= '1';
    case opcode is

    when "000011" =>
    Op1Sel  <= '0';
    Op2Sel  <= "00";
    AluFun  <= "0000";
    mem_val <= '1' ;
    mem_rw  <= '1';
    wb_sel  <= "11" ;
    wa_sel  <= '1';
    rf_wen  <= '1';

    when "0100011" =>
    pc_sel  <= "00" ;
    Op1Sel  <= '0';
    Op2Sel  <= "00";
    AluFun  <= "0000";
    mem_rw  <= '0';
    mem_val <= '1' ;
    wb_sel  <= "11" ;
    wa_sel  <= '0';
    rf_wen  <= '0';

    when "0010011" =>
    case func3 is
          when "001" =>   -----SLLI
          pc_sel  <= "00" ;
          Op1Sel  <=  '0';
          Op2Sel  <=  "11";
          AluFun  <=  "0110";
          mem_rw  <=  '0';
          mem_val <=  '0';
          wb_sel  <=  "10";
          wa_sel  <=  '1';
          rf_wen  <=  '1';

          when "101" =>
            case func7 is
                when "0000000" =>     -------SRL
                pc_sel  <= "00" ;
                Op1Sel  <=  '0';
                Op2Sel  <=  "11";
                AluFun  <=  "0111";
                mem_rw  <=  '0';
                mem_val <=  '0';
                wb_sel  <=  "10";
                wa_sel  <=  '1';
                rf_wen  <=  '1';
                when "0100000" => -------SRA
                pc_sel  <= "00" ;
                Op1Sel  <=  '0';
                Op2Sel  <=  "11";
                AluFun  <=  "1000";
                mem_rw  <=  '0';
                mem_val <=  '0';
                wb_sel  <=  "10";
                wa_sel  <=  '1';
                rf_wen  <=  '1';
                when others => null;
                end case;
          when "000" =>   -----ADDI
            pc_sel  <= "00" ;
            Op1Sel  <=  '0';
            Op2Sel  <=  "00";
            AluFun  <=  "0000";
            mem_rw  <=  '0';
            mem_val <=  '0';
            wb_sel  <=  "10";
            wa_sel  <=  '1';
            rf_wen  <=  '1';
          when "010" =>   ------NOT DONE !!!! YET SLTI
          pc_sel  <= "00" ;
          Op1Sel  <=  '0';
          Op2Sel  <=  "11";
          AluFun  <=  "1000";
          mem_rw  <=  '0';
          mem_val <=  '0';
          wb_sel  <=  "10";
          wa_sel  <=  '1';
          rf_wen  <=  '1';

    when others =>
      null;
    end case;




    when "0110011" =>
    case func3 is
          when "000" =>   -----ADD
          case func7 is
              when "0000000" =>
                pc_sel  <= "00" ;
                Op1Sel  <=  '0';
                Op2Sel  <=  "11";
                AluFun  <=  "0000";
                mem_rw  <=  '0';
                mem_val <=  '0';
                wb_sel  <=  "10";
                wa_sel  <=  '1';
                rf_wen  <=  '1';
              when "0100000" => -------SRA
                pc_sel  <= "00" ;
                Op1Sel  <=  '0';
                Op2Sel  <=  "11";
                AluFun  <=  "0001";
                mem_rw  <=  '0';
                mem_val <=  '0';
                wb_sel  <=  "10";
                wa_sel  <=  '1';
                rf_wen  <=  '1';
              when "0000001" => -------MULTIPLY_Low
                pc_sel  <= "00" ;
                Op1Sel  <=  '0';
                Op2Sel  <=  "11";
                AluFun  <=  "0010";
                mem_rw  <=  '0';
                mem_val <=  '0';
                wb_sel  <=  "10";
                wa_sel  <=  '1';
                rf_wen  <=  '1';
              when others => null;
              end case;
         when "001" =>       -----Multiply High
            pc_sel  <= "00" ;
            Op1Sel  <=  '0';
            Op2Sel  <=  "11";
            AluFun  <=  "1001";
            mem_rw  <=  '0';
            mem_val <=  '0';
            wb_sel  <=  "10";
            wa_sel  <=  '1';
            rf_wen  <=  '1';
         when "010" =>
            pc_sel  <= "00" ;
            Op1Sel  <=  '0';
            Op2Sel  <=  "00";
            AluFun  <=  "0000";
            mem_rw  <=  '0';
            mem_val <=  '0';
            wb_sel  <=  "10";
            wa_sel  <=  '1';
            rf_wen  <=  '1';
         when "010" =>   ------NOT DONE !!!! YET STL
            if (beq_lt='1')
              pc_sel  <= "00" ;
              Op1Sel  <=  '0';
              Op2Sel  <=  "11";
              AluFun  <=  "1000";
              mem_rw  <=  '0';
              mem_val <=  '0';
              wb_sel  <=  "10";
              wa_sel  <=  '1';
              rf_wen  <=  '1';

        when others =>  null;
        end case;














    when "000100" => --beq
      ALUop <= "001"; --subtract
      Branch <= '1'; --branch if z is true, no need to not z
      RegWr <= '0'; --do not write back value

    when "000101" => --bne
      ALUop <= "001"; --subtract
      Branch <= '1'; --branch if z is false
      z_controller <= not z; --if z is false we'll branch
      RegWr <= '0'; --do not write back value

    when "000010" => --jump
      Jump <= '1';
      RegWr <= '0'; --do not write back value

    when "000011" => --jal
      Jump <= '1';
      JAL <= '1';

    when "100100" => --load byte unsigned
      ALUop <= "000"; --add to get address offset
      byteena <= "0001"; --only enable one byte from memory
      MemtoReg <= '1'; --result from memory not ALU
      ExtOp <= '1'; --signed extension on immediate value
      ALUsrc <= '1'; --immediate operand
      RegDst <= '0'; --t is destination for loads

    when "100101" => --load halfword unsigned
      ALUop <= "000"; --add to get address offset
      byteena <= "0001"; --only enable 2 bytes from memory
      MemtoReg <= '1'; --result from memory not ALU
      ExtOp <= '1'; --signed extension on immediate value
      ALUsrc <= '1'; --immediate operand
      RegDst <= '0'; --t is destination for loads

    when "001111" => --lui
      LUI <= '1'; --select immediate value to be written back with padded 16 lower half zeros, before sign extender
      RegDst <= '0'; --t is destination for loads

    when "100011" => --load word
      ALUop <= "000"; --add to get address offset, default byteena of 1111 is good
      MemtoReg <= '1'; --result from memory not ALU
      ExtOp <= '1'; --signed extension on immediate value
      ALUsrc <= '1'; --immediate operand
      RegDst <= '0'; --t is destination for loads

    when "001101" => --or immediate
      ALUop <= "100"; --or
      ExtOp <= '0'; --zero extension
      ALUsrc <= '1'; --immediate value is second operand
      RegDst <= '0'; --t is destination for immediates

    when "001010" => --slti
      ALUop <= "101"; --slt
      ExtOp <= '1'; --signed comparison
      ALUsrc <= '1'; --immediate operand
      RegDst <= '0'; --t is destination for immediates

    when "001011" => --sltiu
      ALUop <= "110"; --sltu
      ExtOp <= '0'; --unsigned comparison
      ALUsrc <= '1'; --immediate operand
      RegDst <= '0'; --t is destination for immediates

    when "101000" => --store byte
      ALUop <= "000"; --add to get address offset
      byteena <= "0001"; --only enable one byte to memory
      MemWr <= '1'; --write operation
      RegWr <= '0'; --do not writeback reg
      ExtOp <= '1'; --signed extension on immediate value

    when "101001" => --store halfword
      ALUop <= "000"; --add to get address offset
      byteena <= "0011"; --only enable 2 bytes to memory
      MemWr <= '1'; --write operation
      RegWr <= '0'; --do not writeback reg
      ExtOp <= '1'; --signed extension on immediate value

    when "101011" => --store word
      ALUop <= "000"; --add to get address offset, all bytes enabled
      MemWr <= '1'; --write operation
      RegWr <= '0'; --do not writeback reg
      ExtOp <= '1'; --signed extension on immediate value

    when others =>
      null;
    end case;
  end process;




end architecture arch;
