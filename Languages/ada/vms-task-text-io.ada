package Task_Text_IO is
   function "&"( Left: string; Right: integer ) return string;
   function "&"( Left: string; Right: duration ) return string;
   function "+"( Right: duration ) return string;
   task Task_put is
      entry put_line( item: in string );
   end Task_put;
end Task_Text_IO;

package Task_Unique_clock_seconds is
   function Unique_clock_seconds return duration;
end Task_Unique_clock_seconds;

with Task_Unique_clock_seconds, Text_IO, Integer_Text_IO, Long_Float_Text_IO;
use  Task_Unique_clock_seconds, Text_IO, Integer_Text_IO, Long_Float_Text_IO;
package body Task_Text_IO is

   function "&"( Left: string; Right: integer ) return string is
      Buffer : string( 1 .. integer'width );
   begin
      put( Buffer, Right );
      return Left & Buffer;
   end "&";

   function "&"( Left: string; Right: duration ) return string is
   begin
      return Left & string'(+ Right );
   end "&";

   function "+"( Right : duration ) return string is
      After       : constant := duration'aft + 1;
      Buffer      : string( 1 .. duration'fore + 1 + After );
      Seconds     : integer;
      Last        : integer;
      Time_Buffer : string( 1 .. 9 ) := " 99:59:59";
      Modulus     : integer;
   begin
      put( Buffer, long_float( Right ), aft=> After, exp=> 0 );
      get( Buffer, Seconds, Last );
      if Seconds < 0 then
         Seconds := - Seconds;
         Time_Buffer( Time_Buffer'first ) := '-';
      end if;
      for index in reverse Time_Buffer'range loop
         if Time_Buffer( index ) in '0' .. '9' then
            Modulus := character'pos( Time_Buffer( index )) 
                     - character'pos( '0' ) + 1;
            Time_Buffer( index ) := character'val( character'pos( '0' )
                           + Seconds mod Modulus );
            Seconds := Seconds / Modulus;
         end if;
      end loop;
      return Time_Buffer & Buffer( Last + 1 .. Buffer'last );
   end "+";

   task body Task_put is
   begin
      loop
         select
            accept put_line( item: in string ) do
               Text_IO.put_line( + Unique_clock_seconds & ": " & item );
            end put_line;
         or
            terminate;
         end select;
      end loop;
   end Task_put;

end Task_Text_IO;

with Calendar;
package body Task_Unique_clock_seconds is
   task Unique_clock is
      entry seconds( Result : out duration );
   end Unique_clock;

   task body Unique_clock is
      old_seconds  : duration;
      new_seconds  : duration;
      fudge_factor : duration := 0.0;
      next_day     : duration := 0.0;
      day_seconds  : constant duration := 24.0 * 60 * 60;
   begin
      old_seconds := Calendar.seconds( Calendar.clock );
      loop
         select
            accept seconds( Result : out duration ) do
               new_seconds := Calendar.seconds( Calendar.clock ) + next_day;
               if new_seconds > old_seconds + fudge_factor then
                  -- usually expected case
                  old_seconds := new_seconds;
                  fudge_factor := 0.0;
               elsif new_seconds = old_seconds then
                  -- if program runs faster than clock
                  fudge_factor := fudge_factor + duration'delta;
               else
                  -- Handle jump past midnite, just in case.
                  -- Warning: may bomb if next_day > duration'last
                  next_day := next_day + day_seconds;
                  old_seconds := new_seconds + next_day;
               end if;
               Result := old_seconds + fudge_factor;
            end seconds;
         or
            terminate;
         end select;
      end loop;
   end Unique_clock;

   function Unique_clock_seconds return duration is
      Result : duration;
   begin
      Unique_clock.seconds( Result );
      return Result;
   end Unique_clock_seconds;
end Task_Unique_clock_seconds;
