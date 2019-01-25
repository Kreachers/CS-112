--
-- Program: VT100_Clock.
--
-- Purpose: Display the current time on a VT100 screen.
--
-- Execution:
--          $ spawn /nowait /notify /input=NL: run VT100_clock
--

with System_Parameters, Terminal_IO, Calendar;

with Control_C_Interception; -- Ensure ^Y or ^C kills process.
pragma elaborate( Control_C_Interception );

procedure VT100_Clock is

   Move_cursor_to_position : constant string := ASCII.ESC & "[1;75H";
   Display_normal_video    : constant string := ASCII.ESC & "[0m";
   Display_reverse_blinking: constant string := ASCII.ESC & "[0;5;7m";
   Save_cursor_position    : constant string := ASCII.ESC & '7';
   Restore_cursor_position : constant string := ASCII.ESC & '8';  
   Terminal_new_line       : constant string := ASCII.CR & ASCII.LF;

   Seconds_per_minute      : constant := 60;
   Minutes_per_hour        : constant := 60;
   Max_minutes_to_display  : constant := 6 * Minutes_per_hour;
   subtype Digraph        is string(1..2);

   function Two_digits( Quantity : integer ) return Digraph is
      subtype Digit is integer range 0..9;
      First_digit   : constant Digit   := Quantity  /  10;
      Second_digit  : constant Digit   := Quantity rem 10;
      Zero          : constant integer := character'pos( '0' );
   begin
      return character'val( Zero + First_digit  )
           & character'val( Zero + Second_digit );
   end Two_digits;

   function Ring_Bell_if( Condition : boolean ) return character is
   begin
      if Condition then return ASCII.BEL;
                   else return ASCII.NUL;
      end if;
   end Ring_Bell_if;

begin
   Terminal_IO.put( Terminal_new_line & "Starting " 
      & System_Parameters.Get_Image_Name & Terminal_new_line );
   declare
      Current_clock_seconds : integer;
      Current_clock_minutes : integer;
   begin
      for Counter in 1 .. Max_minutes_to_display loop
         Current_clock_seconds := integer( Calendar.seconds( Calendar.clock ));
         Current_clock_minutes := Current_clock_seconds / Seconds_per_minute;
         Terminal_IO.put( Save_cursor_position 
            & Display_reverse_blinking & Move_cursor_to_position
            & Two_digits(   Current_clock_minutes  /  Minutes_per_hour ) & ':'
            & Two_digits(   Current_clock_minutes rem Minutes_per_hour )
            & Ring_bell_if( Current_clock_minutes rem Minutes_per_hour = 0 )
            & Display_normal_video & Restore_cursor_position );
         delay duration( Seconds_per_minute 
                       - Current_clock_seconds rem Seconds_per_minute );
      end loop;
   end;
end VT100_Clock;
