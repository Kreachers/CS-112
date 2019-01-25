package Bitstrings is

   type Bitstring is array( positive range <> ) of boolean;
   pragma pack( Bitstring );

   Bits_per_block : constant := 512 * 8;
   subtype Bitblock is Bitstring( 1 .. Bits_per_block );

end Bitstrings;

with Sequential_IO, Bitstrings;
package Bitblock_IO is new Sequential_IO( Bitstrings.Bitblock );

with VMS_Do_command, System_Parameters, Text_IO, Bitstrings, Bitblock_IO;
procedure Bitblock_IO_Test is
   package BIO renames Bitblock_IO;
   package TIO renames Text_IO;

   type string_pointer is access string;

   Bitblock_file     : BIO.File_type;
   Bitblock_ones     : Bitstrings.Bitblock 
                     := Bitstrings.Bitblock'( others=> true );
   Bitblock_filename : string_pointer;

   Parameters        : constant System_Parameters.Sysparams 
                     := System_Parameters.Get_Sysparams;
   Condition         : integer;
   Dir_command       : constant string := "$ directory /full ";

begin
   TIO.put_line( "Parameter(1) = """ & Parameters(1).all & """" );

   BIO.create( file=> Bitblock_file, mode=> BIO.out_file, 
               name=> Parameters(1).all );
   Bitblock_filename := new string'( BIO.name( Bitblock_file ));
   TIO.put_line( "The file's name is: """ & Bitblock_filename.all & """" );

   for Counter in 1 .. 10 loop
      BIO.write( file=> Bitblock_file, item=> Bitblock_ones );
   end loop;

   BIO.close( file=> Bitblock_file );

   TIO.put_line( "The VMS command " );
   TIO.put_line( '<' & Dir_command & Bitblock_filename.all & '>' );
   TIO.put_line( "says:" );
   VMS_Do_command.Do_command( Condition, Dir_command & Bitblock_filename.all );
   TIO.put_line( "ERROR: Do_command failed: " & integer'image( Condition ));

exception
   when BIO.Status_error=> TIO.put_line( "Exception Bitblock_IO.Status_error" );
   when BIO.Mode_error  => TIO.put_line( "Exception Bitblock_IO.Mode_error  " );
   when BIO.Name_error  => TIO.put_line( "Exception Bitblock_IO.Name_error  " );
   when BIO.Use_error   => TIO.put_line( "Exception Bitblock_IO.Use_error   " );
   when BIO.Device_error=> TIO.put_line( "Exception Bitblock_IO.Device_error" );
   when BIO.End_error   => TIO.put_line( "Exception Bitblock_IO.End_error   " );
   when BIO.Data_error  => TIO.put_line( "Exception Bitblock_IO.Data_error  " );
end Bitblock_IO_Test;
