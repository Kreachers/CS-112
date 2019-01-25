--
-- This program illustrates multiple tasks running in parallel,
-- each producing one line of information without synchronization.
--

with Text_IO, Long_float_Text_IO;
package Long_float_Formatting is
   procedure put( to   : out string;
                  item : in  long_float;
                  aft  : in  Text_IO.Field := Long_float_Text_IO.Default_aft;
                  exp  : in  Text_IO.Field := Long_float_Text_IO.Default_exp
                ) renames Long_float_Text_IO.put;
end Long_float_Formatting;

with Long_float_Formatting, Task_Text_IO, System;
use  Long_float_Formatting, Task_Text_IO;
with Control_C_Interception; -- Ensure ^Y or ^C kills process.
pragma elaborate( Control_C_Interception );
procedure Access_Tasks is
   pragma time_slice( System.Tick );
   Main_delay : constant := System.Tick * 2;
   Task_delay : constant := System.Tick * 4;

   task type Test is
      entry Identify( Identity: in integer );
   end Test;
   type access_Test is access Test;

   Block_Everybody : boolean := true;
   Tasks           : array( 1 .. 24 ) of access_Test;

   task body Test is
      My_identity : integer;
   begin
      accept Identify( Identity: in integer ) do
         My_Identity := Identity;
      end Identify;
      while Block_Everybody loop 
         delay Task_delay;
      end loop;
      Task_put.put_line( "My_identity = " & My_identity );
   end Test;

   function fmt( Item : long_float ) return string is
      Buffer : string( 1 .. duration'fore + 1 + duration'aft );
   begin
      Long_float_Formatting.put( Buffer, Item, duration'aft, 0 );
      return Buffer;
   end fmt;

begin

   Task_put.put_line( "System.Tick    =" & fmt( System.Tick ) 
              & " =" & System.Tick );
   Task_put.put_line( "duration'delta =" & fmt( long_float( duration'delta )) 
              & " =" & duration'delta );
   Task_put.put_line( "duration'first =" & fmt( long_float( duration'first )) 
              & " =" & duration'first );
   Task_put.put_line( "duration'last  =" & fmt( long_float( duration'last )) 
              & " =" & duration'last );

   for Index in Tasks'range loop
      Tasks( Index ) := new Test;
      Task_put.put_line( "Created Test task index " & Index );
   end loop;

   for Index in Tasks'range loop 
      Tasks( Index ).Identify( Index );
   end loop;

   Block_Everybody := false;
   delay Main_delay;
   Task_put.put_line( "Main program is done." );

end Access_Tasks;
