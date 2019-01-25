package Byte_strings is

   type Byte is ( 
      NUL,SOH,STX,ETX,EOT,ENQ,ACK,BEL,BS, HT, LF, VT, FF, CR, SO, SI,
      DLE,DC1,DC2,DC3,DC4,NAK,SYN,ETB,CAN,EM, SUB,ESC,FS, GS, RS, US,
      ' ','!','"','#','$','%','&',''','(',')','*','+',',','-','.','/',
      '0','1','2','3','4','5','6','7','8','9',':',';','<','=','>','?',
      '@','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O',
      'P','Q','R','S','T','U','V','W','X','Y','Z','[','\',']','^','_',
      '`','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o',
      'p','q','r','s','t','u','v','w','x','y','z','{','|','}','~',DEL,
      X80,X81,X82,X83,X84,X85,X86,X87,X88,X89,X8A,X8B,X8C,X8D,X8E,X8F,
      X90,X91,X92,X93,X94,X95,X96,X97,X98,X99,X9A,X9B,X9C,X9D,X9E,X9F,
      XA0,XA1,XA2,XA3,XA4,XA5,XA6,XA7,XA8,XA9,XAA,XAB,XAC,XAD,XAE,XAF,
      XB0,XB1,XB2,XB3,XB4,XB5,XB6,XB7,XB8,XB9,XBA,XBB,XBC,XBD,XBE,XBF,
      XC0,XC1,XC2,XC3,XC4,XC5,XC6,XC7,XC8,XC9,XCA,XCB,XCC,XCD,XCE,XCF,
      XD0,XD1,XD2,XD3,XD4,XD5,XD6,XD7,XD8,XD9,XDA,XDB,XDC,XDD,XDE,XDF,
      XE0,XE1,XE2,XE3,XE4,XE5,XE6,XE7,XE8,XE9,XEA,XEB,XEC,XED,XEE,XEF,
      XF0,XF1,XF2,XF3,XF4,XF5,XF6,XF7,XF8,XF9,XFA,XFB,XFC,XFD,XFE,XFF );
   for Byte'size use 8;
 
   type Byte_array is array( positive range <> ) of Byte;
   pragma pack( Byte_array );

   function Hex_image( a_Byte : Byte ) return string;

end Byte_strings;
package body Byte_strings is

   function Hex_image( a_Byte : Byte ) return string is
      Hex : constant array( 0 .. 15 ) of character := "0123456789ABCDEF";
      Pos : constant integer := Byte'pos( a_Byte );
   begin
      return Hex( Pos / 16 ) & Hex( Pos mod 16 );
   end Hex_image;

end Byte_strings;

with System_Parameters;   use System_Parameters;
with Text_IO;             use Text_IO;
with Integer_Text_IO;     use Integer_Text_IO;
with Byte_strings;        use Byte_strings;
with Sequential_Mixed_IO; use Sequential_Mixed_IO;
procedure Byte_Dump is

   procedure get_line is 
      new Sequential_Mixed_IO.Get_array( Byte, positive, Byte_array );

   procedure get is
      new Sequential_Mixed_IO.Get_item( Byte );

   procedure Dump_line( Buffer : Byte_array;
                        Length : natural ) is
      Slide : Byte_array( 1 .. Buffer'length ) := Buffer;
   begin
      for index in reverse 1 .. Length loop
         if index < Length and then index mod 4 = 0 then
            put( ' ' );
         end if;
         if index > Slide'last then
            put( string'( 1..2=> ' ' ));
         else
            put( Hex_image( Slide( index )));
         end if;
      end loop;
      put( ' ' );
      for index in Slide'range loop
         if Slide( index ) in ' '..'~' then
            put( character'val( Byte'pos( Slide( index ))));
         else
            put( '.' );
         end if;
      end loop;
      new_line;
   end Dump_line;

   procedure Message( Error: string; 
                      Quote: string := "";
                      Suffix: string := "" ) is
   begin
      put( Error );
      if Quote'length > 0 then
         put( " """ & Quote & '"' );
      end if;
      if Suffix'length > 0 then
         put( ", " & Suffix );
      end if;
      new_line;
   end Message;

   procedure Dump_file( File_name : string; Bytes_per_line : positive ) is

      Buffer        : Byte_array( 1 .. Bytes_per_line );
      Last          : integer;
      Input_file    : Sequential_Mixed_IO.File_type;

   begin

      begin
         open( Input_file, mode=> in_file, name=> File_name );
      exception
         when Sequential_Mixed_IO.Name_error=>
            Message( "Name_error raised from opening file", File_name );
            return;
         when Sequential_Mixed_IO.Use_error=>
            Message( "Use_error raised from opening file", File_name );
            return;
      end;

      Message( "Dump of file", name( Input_file ));
      put( "Max_element_size =" );
      put( integer( Max_element_size( Input_file )), width=> 5 );
      put( " bytes." );
      new_line;

      for Record_number in positive loop
         read( Input_file );
         new_line;
         put( "Record" ); 
         put( Record_number, width=> 6 ); 
         put( ", Element_size =" );
         put( integer( Element_size( Input_file )), width=> 5 );
         put( " bytes." );
         new_line;
         while not end_of_buffer( Input_file ) loop
            get_line( Input_file, Buffer, Last );
            Dump_line( Buffer( Buffer'first .. Last ), Buffer'length );
         end loop;
      end loop;

   exception
      when Sequential_Mixed_IO.End_error=> 
         new_line;
         Message( "End of file", name( Input_file ));
         close( Input_file );
   end Dump_file;

begin
   declare
      Parameters     : constant Sysparams := Get_sysparams;
      Bytes_per_line : positive := 24;
   begin
      for index in Parameters'range loop
         put( "Param(" );
         put( index, width=> 2 );
         put( ") = """ );
         put( Parameters( index ).all );
         put( '"' );
         new_line;
      end loop;
      if Parameters'last < 1 then
         Message( "Usage: dump file_name [bytes_per_line]" );
      else
         if Parameters'last >= 2 then
            begin
               Bytes_per_line := positive'value( Parameters( 2 ).all );
            exception
               when constraint_error=>
                  Message( "Error: Invalid bytes_per_line:", 
                        Parameters( 2 ).all, 
                        "using " & positive'image( Bytes_per_line ));
            end;
         end if;
         Dump_file( Parameters( 1 ).all, Bytes_per_line );
      end if;
   end;
end Byte_Dump;

with Byte_strings, Sequential_Mixed_IO;
use  Byte_strings, Sequential_Mixed_IO;
procedure Make_256dat is
   File256 : File_type;
   procedure put is new Sequential_Mixed_IO.Put_item( Byte );
begin
   Create( File256, mode=> out_file, name=> "256.dat" );
   for index in Byte loop
      put( File256, index );
      if Byte'pos( index ) mod 64 = 63 then
         write( File256 );
      end if;
   end loop;
   Close( File256 );
end Make_256dat;
