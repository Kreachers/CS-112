--------------------------------------------------------------------------------
-- Example of generic package to implement the abstract data type STACK.
-- This file contains five compilation units which really ought to be placed
-- in five separate files.  However, for convenience, they are all placed in
-- a single file.
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- STACKS_.ADA -- generic package specification.
--------------------------------------------------------------------------------
generic
  type Item_type is private;
package Stacks is
  type Stack is limited private;
  procedure push ( Item: in  Item_type; Onto: in out Stack );
  procedure pop  ( Item: out Item_type; From: in out Stack );
  function  empty( the_Stack: Stack ) return boolean;
  Overflow : exception;
  Underflow: exception;
private
  type Stack_Element;
  type Stack is access Stack_Element;
  type Stack_element is record
    Stack_Item : Item_type;
    Stack_Link : Stack;
  end record;
  pragma inline( empty );
end Stacks;

--------------------------------------------------------------------------------
-- STACKS_BODY.ADA -- generic package body.
--------------------------------------------------------------------------------
with UNCHECKED_DEALLOCATION;
package body Stacks is

  procedure UNCHECKED_DEALLOCATE is new
            UNCHECKED_DEALLOCATION( object=> Stack_Element,
                                    name  => Stack );

  procedure push( Item: in Item_type; Onto: in out Stack ) is
    New_Item : Stack;
  begin
    New_Item := new Stack_Element;
    New_Item.Stack_Link := Onto;
    Onto := New_Item;
    Onto.Stack_Item := Item;
  exception
    when storage_error=> raise Overflow;
  end push;

  procedure pop( Item: out Item_type; From: in out Stack ) is
    Old_Item : Stack;
  begin
    if empty( From ) then raise Underflow; end if;
    Item := From.Stack_Item;
    Old_Item := From;
    From := From.Stack_Link;
    UNCHECKED_DEALLOCATE( Old_Item ); -- **** DANGER !! ****
  end pop;

  function empty( the_Stack: Stack ) return boolean is begin
    return the_Stack = null;
  end empty;

end Stacks;

--------------------------------------------------------------------------------
-- STACKS_FLOAT.ADA -- instantiation of generic package.
--------------------------------------------------------------------------------
with STACKS;
package FLOAT_STACKS is new STACKS( float );

--------------------------------------------------------------------------------
-- STACKS_INTEGER.ADA -- instantiation of generic package.
--------------------------------------------------------------------------------
with STACKS;
package INTEGER_STACKS is new STACKS( integer );

--------------------------------------------------------------------------------
-- STACKS_TEST.ADA -- Main procedure which uses instantiated packages.
--------------------------------------------------------------------------------
with TEXT_IO, INTEGER_TEXT_IO, FLOAT_TEXT_IO, FLOAT_STACKS, INTEGER_STACKS;
use  TEXT_IO, INTEGER_TEXT_IO, FLOAT_TEXT_IO, FLOAT_STACKS, INTEGER_STACKS;
procedure Stacks_List is
  Stack_of_Integers: Integer_Stacks.Stack;
  Stack_of_Floats  :   Float_Stacks.Stack;
  a_Float: float := 2.0;
begin
  for Loop_counter in 1..5 loop
    a_Float := a_Float * a_Float;
    push( a_Float, onto => Stack_of_Floats );
  end loop;
  while not empty( Stack_of_Floats ) loop
    pop( a_Float, from => Stack_of_Floats ); 
    put( a_Float ); new_line;
  end loop;
  new_line;
  for Loop_counter in 1..50 loop
    push( Loop_counter, onto => Stack_of_Integers );
  end loop;
exception
  when Integer_Stacks.overflow  => put( "overflow"  );
  when Integer_Stacks.underflow => put( "underflow" );
end Stacks_List;

