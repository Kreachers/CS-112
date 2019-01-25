--
-- Pipeline sort.
--
-- This sorting algorithm uses a pipeline of tasks in order to do a
-- comparison sort.  On a uniprocessor system, it is no beter than a
-- bubble sort and is O(n**2), but on a system with a large number
-- of CPU's it can do a comparison sort in O(n) time.
--
generic
   type Element is private;
   with function "<"( Left, Right: Element ) return boolean is <>;
package Pipeline_sort is
   Remove_error : exception;

   task type Pipeline_sort_task is
      entry Insert( Item: in Element );
      entry Remove( Item: out Element );
      entry has_Element( Flag: out boolean );
   end Pipeline_sort_task;

   function has_Element( Sorter: Pipeline_sort_task ) return boolean;
end Pipeline_sort;

package body Pipeline_sort is
   type access_Pipeline_sort_task is access Pipeline_sort_task;
   subtype Pipeline_sort_task_type is Pipeline_sort_task;

   task body Pipeline_sort_task is
      next_task      : access_Pipeline_sort_task := null;
      my_Element     : Element;
      I_have_Element : boolean := false;
      next_Element   : Element;
   begin
      loop
         select
            accept Insert( Item: in Element ) do
               next_Element := Item;
            end Insert;
            if not I_have_Element then
               I_have_Element := true;
               my_Element := next_Element;
            else
               if next_task = null then
                  next_task := new Pipeline_sort_task_type;
               end if;
               if next_Element < my_Element then
                  next_task.Insert( my_Element );
                  my_Element := next_Element;
               else
                  next_task.Insert( next_Element );
               end if;
            end if;
         or
            accept Remove( Item: out Element ) do
               if not I_have_Element then
                  raise Remove_error;
               else
                  Item := my_Element;
               end if;
            end Remove;
            if next_task = null then
               I_have_Element := false;
            else
               next_task.has_Element( I_have_Element );
            end if;
            if I_have_Element then
               next_task.Remove( my_Element );
            end if;
         or
            accept has_Element( Flag: out boolean ) do
               Flag := I_have_Element;
            end has_Element;
         or
            terminate;
         end select;
      end loop;
   end Pipeline_sort_task;

   function has_Element( Sorter: Pipeline_sort_task ) return boolean is
      Result: boolean;
   begin
      Sorter.has_Element( Result );
      return Result;
   end has_Element;
end Pipeline_sort;

with Pipeline_sort;
package Integer_Pipeline_sort is new Pipeline_sort( integer );

with Text_IO, Integer_Text_IO, System;
with Task_Text_IO, Integer_Pipeline_sort;
use  Task_Text_IO, Integer_Pipeline_sort;
procedure Sorting_Tasks is
   pragma Time_slice( System.tick );
   Number : integer;
   Sorter : Pipeline_sort_task;
begin
   Task_put.put_line( "Starting pipeline sort example." );

   begin
      loop
         Integer_Text_IO.get( Number );
         Task_put.put_line( "Unsorted input=>" & Number );
         Sorter.Insert( Number );
      end loop;
   exception
      when Text_IO.End_error => null;
      when Text_IO.Data_error=> Task_put.put_line( "Data_error: quitting." );
   end;

   while has_Element( Sorter ) loop
      Sorter.Remove( Number );
      Task_put.put_line( "Sorted output =>" & Number );
   end loop;
      
   Task_put.put_line( "Finished pipeline sort example." );
end Sorting_Tasks;
