
--------------------------------------------------------------------------------
-- Generic_Bubble_Sort_.ADA -- Generic bubble sorting procedure.
--------------------------------------------------------------------------------

generic
  -- This sort procedure is an external generic procedure not within
  -- any package and can sort an array of any type when properly
  -- instantiated.
  type Element  is limited private;      -- Type of the element to be sorted.
  type Index    is (<>);                 -- Arbitrary index type of array.
  type Sequence is array( Index range <> -- Array type must correspond to
                   ) of Element;         -- other two types.
  with function  ">" ( Left, Right: in     Element ) return boolean;
  -- This function compares two elements and returns true if they are out
  -- of order and false if they are in the correct order; they are ordered
  -- if Left should precede Right in the array.
  with procedure Copy( into: out Element; from: in Element );
  -- Copy must be provided so that the sorter can exchange elements.
  -- Limited private types cannot be copied with ":=".
procedure Generic_Bubble_Sort( an_Array: in out Sequence );

--------------------------------------------------------------------------------
-- Generic_Bubble_Sort_B.ADA -- Body of generic bubble sorting procedure.
--------------------------------------------------------------------------------

procedure Generic_Bubble_Sort( an_Array: in out Sequence ) is
  -- Uses bubble sort to sort the array.  Note that there are absolutely
  -- no assumptions about the bounds of an array and attributes are used
  -- exclusively for enquiry of the upper and lower bounds.  Also, since
  -- the index value is discrete but not necessarily integral, +1 and -1
  -- can not be used to increment or decrement indexes.
begin
  for Outer_index in reverse an_Array'range loop
    declare
      Sorted: boolean := true;
    begin
      for Inner_index in an_Array'first .. Index'pred( Outer_index ) loop
        declare
          Left      : Element renames an_Array( Inner_index );
          Right     : Element renames an_Array( Index'succ( Inner_index ));
          Temporary : Element;
        begin
          if Left > Right then
            Sorted := false;
            Copy( from=> Left     , into=> Temporary );
            Copy( from=> Right    , into=> Left      );
            Copy( from=> Temporary, into=> Right     );
          end if;
        end;
      end loop;
      if Sorted then return; end if;
    end;
  end loop;
end Generic_Bubble_Sort;

--------------------------------------------------------------------------------
-- Bubble_Main.ADA -- Example of reading in data, sorting, and printing out.
--------------------------------------------------------------------------------

with TEXT_IO, SHORT_INTEGER_TEXT_IO, INTEGER_TEXT_IO, Generic_Bubble_Sort;
use  TEXT_IO, SHORT_INTEGER_TEXT_IO, INTEGER_TEXT_IO;
procedure Bubble_Main is

  type Array_type is array( short_integer range <> ) of integer;

  procedure Copy( into: out integer; from: in integer ) is
  begin
    into := from;
  end Copy;

  procedure Bubble_Sort is
    new Generic_Bubble_Sort( integer, short_integer, Array_type, ">", Copy );

  procedure Dump_array( Label: string; an_Array: Array_type ) is
  begin
    put_line( "INPUT DATA: " & Label );
    for Index in an_Array'range loop
      put( index ); put( "=>" );
      put( an_Array( index )); new_line;
    end loop;
  end Dump_array;

begin
  declare
    the_Array: Array_type( 1..10 );
    the_Size : short_integer := short_integer'pred( the_array'first );

  begin
    begin
      loop
        get( the_Array( short_integer'succ( the_Size ) ));
        the_Size := short_integer'succ( the_Size );
      end loop;
    exception
      when Constraint_error=> 
        put_line( "Too much input data: ignoring further input." );
      when Data_error=>
        put_line( "Input contained non-integer: ingoring further input." );
      when End_error=>
        put_line( "End of file encountered." );
    end;
  
    Dump_array( "UNSORTED", the_Array( 1..the_Size ));
    Bubble_Sort( the_Array( 1..the_Size ));
    Dump_array( "SORTED",   the_Array( 1..the_Size ));

  end;
end Bubble_Main;
