with Task_Text_IO;
use  Task_Text_IO;
with System, Control_C_Interception; 
pragma elaborate( Control_C_Interception );
procedure Array_Tasks is
   pragma time_slice( System.Tick );

   task type Serial_Numbers is
      entry get( Number: out integer );
   end Serial_Numbers;

   task type Element is
      entry subscript( Number: in integer );
   end Element;

   Serial_task  : Serial_Numbers;
   Element_task : array( 1 .. 15 ) of Element;

   task body Serial_Numbers is
      Counter : integer := 0;
   begin
      loop
         delay 0.2;
         Counter := Counter + 1;
         Task_put.put_line( "Serial_Number " & Counter
                          & " with " & get'count & " tasks waiting." );
         accept get( Number: out integer ) do
            Number := Counter;
         end get;
      end loop;
   end Serial_Numbers;

   task body Element is
      my_Subscript : integer;
      my_Serial    : integer;
   begin
      delay 1.0;
      Serial_task.get( my_Serial );
      accept subscript( Number: in integer ) do
         my_Subscript := Number;
      end subscript;
      delay 0.2;
      Task_put.put_line( "Element serial#" & my_Serial 
                       & ", subscript#" & my_Subscript );
   end Element;
begin
   for index in Element_task'range loop
      Element_task( index ).subscript( index );
   end loop;
   abort Serial_task;
end Array_Tasks;
