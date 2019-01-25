--
-- Sample assembler for the Core War opcodes.
-- No modes are provided.
-- Note the hack:  one opcode is M0D, not MOD.
--

------------------------------------------------------------------------

with Text_IO, Integer_Text_IO;
procedure assembler is
   assembler_exit : exception;

------------------------------------------------------------------------

   type opcode_type is ( DAT, MOV, ADD, SUB, MUL, DIV, M0D, JMP,
                         JMZ, JMN, DJN, CMP, SPL );
   package Opcode_IO is new Text_IO.Enumeration_IO( opcode_type );
   package TIO renames Text_IO;
   package IIO renames Integer_Text_IO;
   package OIO renames Opcode_IO;

------------------------------------------------------------------------

   type instruction is record
           opcode : opcode_type;
           opnd1  : integer;
           opnd2  : integer;
        end record;
   type memory_array is array( 0..8 ) of instruction;
   type machine is record
           memory : memory_array;
           last   : integer := memory_array'first - 1;
        end record;

------------------------------------------------------------------------

   procedure read_memory( mars : in out machine ) is
      next_insn : instruction;
   begin
      loop
         OIO.get( next_insn.opcode );
         IIO.get( next_insn.opnd1 );
         IIO.get( next_insn.opnd2 );
         mars.last := mars.last + 1;
         mars.memory( mars.last ) := next_insn;
      end loop;
   exception
      when TIO.end_error => null;
      when TIO.data_error =>
           TIO.put_line( "Input data error, quitting." );
           raise assembler_exit;
      when constraint_error =>
           TIO.put_line( "Too many input insns, quitting." );
           raise assembler_exit;
   end read_memory;

------------------------------------------------------------------------

   procedure dump_memory( mars : in machine ) is
   begin
      for curr in mars.memory'range loop
         exit when curr > mars.last;
         declare
            curr_insn : instruction renames mars.memory( curr );
         begin
            IIO.put( curr, width => 4 );
            TIO.put( ": " );
            OIO.put( curr_insn.opcode, width => 5 );
            IIO.put( curr_insn.opnd1, width => 5 );
            IIO.put( curr_insn.opnd2, width => 5 );
            TIO.new_line;
         end;
      end loop;
   end dump_memory;

------------------------------------------------------------------------

begin
   declare
      mars : machine;
   begin
      read_memory( mars );
      dump_memory( mars );
   end;
exception
   when assembler_exit => null;
end assembler;

------------------------------------------------------------------------

