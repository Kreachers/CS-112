package Semaphores is
   type Semaphore is limited private;
   procedure Initialize( the_Semaphore: Semaphore; Value: integer );
   procedure Proberen( the_Semaphore: Semaphore );
   procedure Verhogen( the_Semaphore: Semaphore );
private
   task type Semaphore is
      entry Initialize( Value: integer );
      entry Proberen;
      entry Verhogen;
   end Semaphore;
end Semaphores;

package body Semaphores is

   procedure Initialize( the_Semaphore: Semaphore; Value: integer ) is 
   begin 
      the_Semaphore.Initialize( Value ); 
   end Initialize;

   procedure Proberen( the_Semaphore: Semaphore ) is 
   begin 
      the_Semaphore.Proberen; 
   end Proberen;

   procedure Verhogen( the_Semaphore: Semaphore ) is 
   begin 
      the_Semaphore.Verhogen; 
   end Verhogen;

   task body Semaphore is
      Semaphore_Value: integer;
   begin
      accept Initialize( Value: integer ) do
         Semaphore_Value := Value;
      end Initialize;
      loop
         select
            when Semaphore_Value > 0 => accept Proberen;
            Semaphore_Value := Semaphore_Value - 1;
         or
            accept Verhogen;
            Semaphore_Value := Semaphore_Value + 1;
         or
            terminate;
         end select;
      end loop;
   end Semaphore;

end Semaphores;

with Task_Text_IO, Semaphores, System;
use  Task_Text_IO, Semaphores;
with Control_C_Interception; -- Ensure ^Y or ^C kills process.
pragma elaborate( Control_C_Interception );
procedure SEMAPHORE_TASKS is
   pragma time_slice( System.tick ); 

   Lock: Semaphore;

   task Proberen_loop;
   task Verhogen_loop;

   task body Proberen_loop is
   begin
      Task_put.put_line( "Begin Proberen_loop" );
      for Index in 1..10 loop
         Proberen( Lock );
         Task_put.put_line( "Proberen( Lock ); -- #" & integer'image( Index ));
      end loop;
      Task_put.put_line( "End Proberen_loop" );
   end Proberen_loop;

   task body Verhogen_loop is
   begin
      Task_put.put_line( "Begin Verhogen_loop" );
      for Index in 1..10 loop
         delay 5.0;
         Verhogen( Lock );
         Task_put.put_line( "Verhogen( Lock ); -- #" & integer'image( Index ));
      end loop;
      Task_put.put_line( "End Verhogen_loop" );
   end Verhogen_loop;

begin
   Task_put.put_line( "Begin Main" );
   Initialize( Lock, 2 );
   Task_put.put_line( "Initialize( Lock, 2 );" );
   Task_put.put_line( "End Main" );
end SEMAPHORE_TASKS;
