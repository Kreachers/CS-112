--
-- This is possibly the most perverted Ada program ever written.
-- It creates a machine code program in an array of bytes then calls
-- it as a function in order to get the machine's FP.  Then it
-- proceeds to dump its own hardware stack frame in hex by snarfing
-- through the procedure call stack, treating pointers as integers
-- and doing other tsargn ehtnisg .
--

package Get_FP_register is
   function Get_FP return integer;
private
   pragma interface( Machine_code, Get_FP );
   pragma import_function( Get_FP, "Get_FP_code" );
end Get_FP_register;

package body Get_FP_register is
   type Byte is range 16#00# .. 16#FF#;
   for Byte'size use 8;
   type Byte_string is array( natural range <> ) of Byte;
   pragma pack( Byte_string );

   Get_FP_code : Byte_string( 0 .. 6 ) := Byte_string'(
      16#00#, 16#00#,                 --        0000  0000  .entry get_fp,^m<>
      16#D0#, 16#AD#, 16#0C#, 16#50#, -- 50 0C AD D0  0002  movl 12(FP),R0
      16#04#                          --          04  0006  ret
      );                              --              0007  .end
   pragma export_object( Get_FP_code, "Get_FP_code" );
end Get_FP_register;

with Get_FP_register, Text_IO, Unchecked_Conversion;
procedure VAX_Frame_Dump is
   package GFP renames Get_FP_register;
   package TIO renames Text_IO;

   type Saved_Regs_type is array( 0 .. 11 ) of integer;
   type Stack_Frame     is record
           Condition_Handler : integer;
           Frame_Control     : integer;
           Saved_AP          : integer;
           Saved_FP          : integer;
           Saved_PC          : integer;
           Saved_registers   : Saved_Regs_type;
        end record;
   type Stack_Frame_ptr is access Stack_Frame;

   type Bitstring32 is array( 0 .. 31 ) of boolean;
   pragma pack( Bitstring32 );
   for Bitstring32'size use 32;

   type integer_ptr is access integer;

   type Nybble is range 16#0# .. 16#F#;
   for Nybble'size use 4;
   type Nybbles_8 is array( 0 .. 7 ) of Nybble;
   pragma pack( Nybbles_8 );
   for Nybbles_8'size use 32;
   Hex : array( Nybble ) of character := "0123456789ABCDEF";

   function unspec is new Unchecked_Conversion( Stack_Frame_ptr, integer );
   function unspec is new Unchecked_Conversion( integer, Stack_Frame_ptr );
   function unspec is new Unchecked_Conversion( Bitstring32, integer );
   function unspec is new Unchecked_Conversion( integer, Bitstring32 );
   function unspec is new Unchecked_Conversion( Nybbles_8, integer );
   function unspec is new Unchecked_Conversion( integer, Nybbles_8 );
   function unspec is new Unchecked_Conversion( integer_ptr, integer );
   function unspec is new Unchecked_Conversion( integer, integer_ptr );

   procedure put_hex( item : Nybbles_8 ) is
   begin
      TIO.put( "16#" );
      for index in reverse item'range loop
         TIO.put( Hex( item( index )));
      end loop;
      TIO.put( "#" );
   end put_hex;

   procedure dump( item : integer; label : string; NL : boolean := true ) is
   begin
      put_hex( unspec( item ));
      TIO.put( " = " );
      TIO.put( label );
      if NL then TIO.new_line; end if;
   end dump;

   function image( item : integer; width : natural ) return string is
      Result : constant string := integer'image( item );
   begin
      if width > Result'length then
         return string'( Result'length + 1 .. width=> ' ' ) & Result;
      elsif width = Result'length or Result( Result'first ) /= ' ' then
         return Result;
      else
         return Result( Result'first + 1 .. Result'last );
      end if;
   end image;

   procedure dump_Arguments( AP_register : integer_ptr ) is
      Argument_count   : integer;
      AP_register_copy : integer_ptr := AP_register;
   begin
      if AP_register = null then
         TIO.put( "= null" );
      else
         TIO.put( "->" );
         Argument_count := unspec( unspec( AP_register.all )
                               and unspec( 16#000000FF# ));
         for Counter in 1 .. 4 loop
            TIO.put( ' ' );
            put_hex( unspec( AP_register_copy.all ));
            Argument_count := Argument_count - 1;
            exit when Argument_count < 0;
            AP_register_copy := unspec( unspec( AP_register_copy ) + 4 );
         end loop;
      end if;
   end dump_Arguments;

   procedure dump_Stack_Frame( FP_register : Stack_Frame_ptr ) is
      Control_bits : Bitstring32;
      array_sub    : integer;
      Mask_offset  : constant := 16;
   begin
      TIO.new_line;
      TIO.put( "Dump of stack frame at " );
      dump( unspec( FP_register ), "FP" );
      TIO.new_line;
      dump( FP_register.Condition_Handler, "Condition_Handler" );
      Control_bits := unspec( FP_register.Frame_Control );
      dump( FP_register.Frame_Control, "Frame_Control", false );
      TIO.put( ", SPA=" & image( boolean'pos( Control_bits( 31 )) * 2 +
           boolean'pos( Control_bits( 30 )), 1 ));
      if Control_bits( 29 ) then TIO.put( ", callS" ); 
                            else TIO.put( ", callG" );
      end if;
      TIO.new_line;
      dump( FP_register.Saved_AP, "Saved_AP", false );
      dump_Arguments( unspec( FP_register.Saved_AP ));
      TIO.new_line;
      dump( FP_register.Saved_FP, "Saved_FP" );
      dump( FP_register.Saved_PC, "Saved_PC" );
      array_sub := 0;
      for index in 0 .. 11 loop
         if Control_bits( Mask_offset + index ) then
            dump( FP_register.Saved_registers( array_sub ),
                  "Saved_Registers(" & image( index, 2 ) & ")" );
            array_sub := array_sub + 1;
         end if;
      end loop;
   end dump_Stack_Frame;

begin
   declare
      FP_register  : Stack_Frame_ptr := unspec( GFP.Get_FP );
   begin
      while FP_register /= null loop
         dump_Stack_Frame( FP_register );
         FP_register := unspec( FP_register.Saved_FP );
      end loop;
   end;
end VAX_Frame_Dump;
