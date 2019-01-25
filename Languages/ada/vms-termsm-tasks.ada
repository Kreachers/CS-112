package Terminal_simulator is
   Default_Char_delay    : constant := 0.2; -- seconds
   Default_Line_delay    : constant := 2.0; -- seconds
   Default_Data_filename : constant string
         := "SYS$SERDAC:[COMPSCI.MACKEY.COP4610]COP4610_92A1_TERMSM.TXT";

   task type Terminal_task is
      entry put( Data : string; Char_delay, Line_delay : float );
      entry get( Key : out character );
   end Terminal_task;

   type Terminal_record;
   type Terminal_pointer is access Terminal_record;
   type Terminal_record is record
           Terminal        : Terminal_task;
           Link            : Terminal_pointer;
        end record;

   procedure Create( Terminal_List : out Terminal_pointer;
                     Data_filename : in string := Default_Data_filename;
                     Char_delay    : float := Default_Char_delay;
                     Line_delay    : float := Default_Line_delay );
end Terminal_simulator;

with Calendar, Random_Numbers, Task_Text_IO, Text_IO;
package body Terminal_simulator is
   procedure Task_put_line( item : in string ) renames
            Task_Text_IO.Task_put.put_line;

   task body Terminal_task is
      type access_string is access string;
      Local_Data      : access_string;
      Local_Char_mean : float;
      Local_Line_mean : float;
      Delay_factor    : float;
      next_Key        : character;
      Random_Number   : float;
      Random_Seed     : integer 
                    := integer( long_float( Calendar.seconds( Calendar.clock ))
                              * long_float( integer'last )
                              / long_float( Calendar.day_duration'last ));
   begin
      accept put( Data : string; Char_delay, Line_delay : float ) do
         Local_Data := new string'( Data );
         Local_Char_mean := Char_delay;
         Local_Line_mean := Line_delay;
      end put;
      for index in Local_Data'range loop
         next_Key := Local_Data( index );
      exit when next_Key = ASCII.EOT;
         Random_Numbers.Random_float( Random_Number, Random_Seed );
         if next_Key = ASCII.CR 
            then Delay_factor := Local_Line_mean;
            else Delay_factor := Local_Char_mean;
         end if;
         delay duration( Delay_factor * Random_Number );
         accept get( Key : out character ) do
            Key := next_Key;
         end get;
      end loop;
      accept get( Key : out character ) do
         Key := ASCII.EOT;
      end get;
   end Terminal_task;

   procedure Create( Terminal_List : out Terminal_pointer;
                     Data_filename : in string := Default_Data_filename;
                     Char_delay    : float := Default_Char_delay;
                     Line_delay    : float := Default_Line_delay ) is

      File        : Text_IO.file_type;
      Line        : string( 1 .. 1024 );
      Line_First  : integer;
      Line_Last   : integer;
      Buffer      : string( 1 .. 64 * 1024 );
      Buffer_Last : integer := Buffer'first - 1;
      End_node    : Terminal_pointer := null;

      procedure append_Buffer( one_Line : string ) is
      begin
         Buffer( Buffer_Last + 1 .. Buffer_Last + one_Line'length ) := one_line;
         Buffer_Last := Buffer_Last + one_Line'length;
      end append_Buffer;

      procedure Start_new_Terminal( Data : string ) is
      begin
         if End_Node = null then
            End_Node := new Terminal_record;
            Terminal_List := End_Node;
         else
            End_Node.Link := new Terminal_record;
            End_Node := End_Node.Link;
         end if;
         End_Node.Terminal.put( Data=> Data,
               Char_delay=> Char_delay, Line_delay=> Line_delay );
      end Start_new_Terminal;

      use Text_IO;
   begin
      open( File, mode=> in_file, name=> Data_filename );
      while not end_of_file( File ) loop
         get_line( File, Line, Line_Last );
         if Line_Last < Line'first or else Line( Line'first ) /= '*' then
            Line_first := Line'first;
         else
            Line_first := Line'first + 1;
            Start_new_Terminal( Buffer( Buffer'first .. Buffer_Last ));
            Buffer_Last := Buffer'first - 1;
         end if;
         append_Buffer( Line( Line_First .. Line_Last ) & ASCII.CR );
      end loop;
      Start_new_Terminal( Buffer( Buffer'first .. Buffer_Last ));
      close( File );

   exception
      when name_error=>
         Task_put_line( "name_error opening file " & Data_filename );
         raise;
      when use_error=>
         Task_put_line( "use_error opening file " & Data_filename );
         raise;
      when data_error=>
         Task_put_line( "data_error reading file " & name( File ));
         raise;
      when constraint_error=>
         Task_put_line( "Constraint_error using file " & name( File ));
         raise;
   end Create;

end Terminal_simulator;

with Calendar, Task_Text_IO, Terminal_simulator;
use  Calendar, Task_Text_IO, Terminal_simulator;
procedure TermSM_Tasks is
   Terminal_List : Terminal_pointer;
   Pointer       : Terminal_pointer;
   Index         : positive := 1;
   Keystroke     : character;
   Buffer        : string( 1 .. 60 );
   Last          : natural := 0;
   Start_time    : duration;
   Line_of_dots  : constant string := string'( 1..80=> '.' );
begin
   Start_time := seconds( clock );
   Create( Terminal_List );
   Pointer := Terminal_List;
   while Pointer /= null loop
      Task_put.put_line( Line_of_dots );
      Task_put.put_line( "........ Running terminal #" & Index & " ........" );
      Task_put.put_line( Line_of_dots );
      loop
         Pointer.Terminal.get( Keystroke );
         exit when Keystroke = ASCII.EOT;
         if Keystroke = ASCII.CR or else Last >= Buffer'last then
            Task_put.put_line( '|' & Buffer( Buffer'first .. Last ) & '|' );
            Last := Buffer'first - 1;
         else
            Last := Last + 1;
            Buffer( Last ) := Keystroke;
         end if;
      end loop;
      Index := Index + 1;
      Pointer := Pointer.Link;
   end loop;
   Task_put.put_line( Line_of_dots );
   Task_put.put_line( "Program's running time is " 
            & ( seconds( clock ) - Start_time ));
   Task_put.put_line( "If this is negative, you ran past midnight." );
end TermSM_Tasks;
