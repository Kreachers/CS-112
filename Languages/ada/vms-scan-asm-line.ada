package Scan_Asm_Line is

   -- Simple assembly language input line scanner which takes one line
   -- of input and breaks it up into label, opcode, and operand.  It is not
   -- very sophisticated, and truncates long identifiers without any
   -- error messages.

   -- Copyright (c) 1990, by Wesley F. Mackey.  All rights reserved.
   -- Permission is granted to F.I.U. students to use this code in their
   -- CDA-4101 assignments, provided that this notice of copyright is
   -- not removed.

   subtype Identifier   is string( 1 .. 8 );
   subtype Word         is integer range 16#0000# .. 16#FFFF#;
   type    Operand_kind is ( Absent, Ident, Number );
   type    Operand_type( Operand_case : Operand_kind := Absent ) is record
              case Operand_case is
                 when Absent=> null;
                 when Ident => Ident_value : Identifier;
                 when Number=> Number_value: integer;
              end case;
           end record;

   Spaces             : constant Identifier := Identifier'( others=> ' ' );
   Syntax_error       : exception;

   procedure Scan_line (               -- Simple scanning procedure.
         Line    : in string;          -- Line to be scanned.
         Label   : out Identifier;     -- Label on the line, if any.
         Opcode  : out Identifier;     -- Opcode on the line, if any.
         Operand : out Operand_type ); -- Operand on line, if any.
   --| raises Syntax_error
   --|    when any field is longer than Identifier;

   function Trim( Text : in string ) return string;

   function "+"( Text : in string ) return Identifier;

   function "+"( Text : in string ) return integer;
   --| raises Constraint_error
   --|    when Text is not a constant of the form #xxxx, dddd, +dddd, -dddd,
   --|       where xxxx are hex digits and dddd are decimal digits;

end Scan_Asm_line;
package body Scan_Asm_Line is

   type Character_set is array( character ) of boolean;
   pragma pack( Character_set );

   is_space  : constant Character_set 
             := Character_set'( ' '| ASCII.HT=> true, others=> false );

   function "+"( Text : in string ) return Identifier is
      Result : Identifier := Spaces;
   begin
      if Text'length < Identifier'length then
         Result( Result'first .. Result'first + Text'length - 1 ) := Text;
      else
         Result := Text( Text'first .. Text'first + Identifier'length - 1 );
      end if;
      return Result;
   end "+";

   function Trim( Text : in string ) return string is
      First : integer := Text'first;
      Last  : integer := Text'last;
   begin
      while First <= Last and then is_space( Text( First )) loop
         First := First + 1;
      end loop;
      while First <= Last and then is_space( Text( Last )) loop
         Last := Last - 1;
      end loop;
      return Text( First .. Last );
   end Trim;

   function "+"( Text : in string ) return integer is
      Trimmed_text : constant string := Trim( Text );

      function Normalize( Number : integer ) return integer is
      begin
         return Number mod ( Word'last + 1 );
      end Normalize;
   begin
      if Trimmed_text( Trimmed_text'first ) = '#' then
         return Normalize( integer'value( "16" & Trimmed_text & "#" ));
      else
         return Normalize( integer'value( Trimmed_text ));
      end if;
   end "+";

pragma page;
   procedure Skip_spaces( Line  : in string;
                          First : in out integer;
                          Last  : in integer ) is
   begin
      while First <= Last and then is_space( Line( First )) loop
         First := First + 1;
      end loop;
   end Skip_spaces;

   procedure Scan_spaces( Line  : in string;
                          First : in integer;
                          Break : in out integer;
                          Last  : in integer ) is
   begin
      Break := First;
      loop
         if Break >= Last then Break := Last; return; end if;
         if is_space( Line( Break + 1 )) then return; end if;
         Break := Break + 1;
      end loop;
   end Scan_spaces;

pragma page;
   procedure Scan_line( Line    : in string;
                        Label   : out Identifier;
                        Opcode  : out Identifier;
                        Operand : out Operand_type ) is
      First : integer := Line'first;
      Break : integer;
      Last  : integer := Line'last;
   begin
      Label := Spaces;
      Opcode := Spaces;
      Operand := Operand_type'( Operand_case=> Absent );
      for index in reverse First .. Last loop
         -- Set Last before the first semicolon, if any.
         if Line( index ) = ';' then Last := index - 1; end if;
      end loop;

      skip_spaces( Line, First, Last );
      scan_spaces( Line, First, Break, Last );
      if First < Break and then Line( Break ) = ':' then -- got a label.
         Label := + Line( First .. Break - 1 );
         First := Break + 1;
         skip_spaces( Line, First, Last ); 
         scan_spaces( Line, First, Break, Last );
      end if;

      if First <= Break then -- got the opcode.
         Opcode := + Line( First .. Break );
         First := Break + 1;

         skip_spaces( Line, First, Last ); 
         scan_spaces( Line, First, Break, Last );
         if First <= Break then -- got the operand.
            begin
               Operand := Operand_type'( Number, + Line( First .. Break ));
            exception
               when Constraint_error=>
                  Operand := Operand_type'( Ident, + Line( First .. Break ));
            end;
         end if;
      end if;
---   exception
---      when Constraint_error=>
---         raise Syntax_error;
   end Scan_line;

end Scan_Asm_Line;
with Text_IO, Integer_Text_IO, Scan_Asm_Line;
use  Text_IO, Integer_Text_IO, Scan_Asm_Line;
procedure Scan_Asm_Line_Test is
   line    : string( 1 .. 80 );
   length  : integer;
   label   : Identifier;
   opcode  : Identifier;
   operand : operand_type;
begin
   loop
      get_line( line, Length );
      scan_line( line( 1 .. length ), label, opcode, operand );
      put_line( "<" & line( 1 .. Length ) & ">" );
      put( "[" & label & "] [" & opcode & "] "
         & operand_kind'image( Operand.operand_case ) & "=>" );
      case Operand.operand_case is
         when Absent => new_line;
         when Ident  => put_line( " [" & Operand.Ident_value & "]" );
         when Number => put( Operand.Number_value );
                        put( Operand.Number_value, base=> 16 );
                        new_line;
      end case;
   end loop;
exception
   when end_error => null;
end Scan_Asm_Line_Test;
