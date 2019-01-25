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
  type Stack( Maximum_Stack_Size: positive ) is private;
  procedure push ( Item: in  Item_type; Onto: in out Stack );
  procedure pop  ( Item: out Item_type; From: in out Stack );
  function  empty( the_Stack: Stack ) return boolean;
  function  full ( the_Stack: Stack ) return boolean;
  Overflow : exception;
  Underflow: exception;
private
  type Array_of_Item_type is array( positive range <>) of Item_type;
  type Stack( Maximum_Stack_Size: positive ) is record
    Stack_Size     : natural := 0;
    Stack_Elements : Array_of_Item_type( 1..Maximum_Stack_Size );
  end record;
  pragma inline( full, empty );
end Stacks;

--------------------------------------------------------------------------------
-- STACKS_BODY.ADA -- generic package body.
--------------------------------------------------------------------------------
package body Stacks is

  procedure push( Item: in Item_type; Onto: in out Stack ) is
  begin
    if full( Onto ) then raise Overflow; end if;
    Onto.Stack_Size := Onto.Stack_Size + 1;
    Onto.Stack_Elements( Onto.Stack_Size ) := Item;
  end push;

  procedure pop( Item: out Item_type; From: in out Stack ) is
  begin
    if empty( From ) then raise Underflow; end if;
    Item := From.Stack_Elements( From.Stack_Size );
    From.Stack_Size := From.Stack_Size - 1;
  end pop;

  function full( the_Stack: Stack ) return boolean is begin
    return the_Stack.Stack_Size = the_Stack.Stack_Elements'last;
  end full; 

  function empty( the_Stack: Stack ) return boolean is begin
    return the_Stack.Stack_Size = the_Stack.Stack_Elements'first - 1;
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
procedure Stacks_Array is
  Stack_of_Integers: Integer_Stacks.Stack( 10);
  Stack_of_Floats  :   Float_Stacks.Stack( 10);
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
end Stacks_Array;

