-- Note: This requires package Task_Text_IO from file Access_Tasks.ada

generic
   type Element is private;
package Ring_Buffer_Manager is
   task type Ring_Buffer is
      entry Initialize( Max_Queue_Length : positive );
      entry Insert( Item : in Element );
      entry Remove( Item : out Element );
   end Ring_Buffer;
end Ring_Buffer_Manager;

package body Ring_Buffer_Manager is
   type Element_array is array( positive range <> ) of Element;
   type access_Element_array is access Element_array;
   task body Ring_Buffer is
      Queue_length : positive;
      Buffer       : access_Element_array;
      Front_item   : positive;
      Rear_slot    : positive;
      Count        : natural;

      procedure Increment( Index : in out positive ) is
      begin
         if Index < Buffer'last then Index := Index + 1;
                                else Index := Buffer'first;
         end if;
      end Increment;
      pragma inline( Increment );

   begin

      accept Initialize( Max_Queue_Length : positive ) do
         Queue_length := Max_Queue_Length;
      end Initialize;
      Buffer := new Element_array( 1 .. Queue_Length );
      Count := 0;
      Rear_slot := Buffer'first;
      Front_item := Rear_slot;

      loop
         select
            when Count < Buffer'length=>
               accept Insert( Item : in Element ) do
                  Buffer( Rear_slot ) := Item; 
               end Insert;
               Increment( Rear_slot );
               Count := Count + 1;
         or
            when Count > 0=>
               accept Remove( Item : out Element ) do
                  Item := Buffer( Front_item );
               end Remove;
               Increment( Front_item );
               Count := Count - 1;
         or
            terminate;
         end select;
      end loop;

   end Ring_Buffer;
end Ring_Buffer_Manager;

package Duration_Buffer_Data is
   type Duration_Data is record
           Time  : duration;
           Index : integer;
        end record;
end Duration_Buffer_Data;

with Duration_Buffer_Data, Ring_Buffer_Manager;
use  Duration_Buffer_Data;
package Duration_Buffer is new Ring_Buffer_Manager( Duration_Data );

with Calendar, Duration_Buffer_Data, Duration_Buffer, Task_Text_IO;
use  Calendar, Duration_Buffer_Data, Duration_Buffer, Task_Text_IO;
procedure Prod_Cons_Tasks is
   Buffer : Duration_Buffer.Ring_Buffer;
   task Producer;
   task Consumer;

   task body Producer is
      Now : Duration_Data;
   begin
      for index in 1 .. 15 loop
         delay 1.0; -- to fake delay in making data.
         Now := Duration_Data'( Time=> seconds( clock ), Index=> index );
         Buffer.Insert( Now );
         Task_put.put_line( "Producer #" & index & " is " & Now.Time );
      end loop;
      Buffer.Insert( Duration_Data'( duration'last, integer'last ));
      Task_put.put_line( "Producer done." );
   end Producer;

   task body Consumer is
      Val : Duration_Data;
   begin
      loop
         Buffer.Remove( Val );
         Task_put.put_line( "Consumer #" & Val.index & " is " & Val.Time );
         exit when Val.Index = integer'last;
         delay 2.5; -- to fake delay in using data.
      end loop;
      Task_put.put_line( "Consumer done." );
   end Consumer;

begin
   Task_put.put_line( "Main starting." );
   Buffer.Initialize( 5 );
   Task_put.put_line( "Main finished." );
end Prod_Cons_Tasks;
