--
-- Ada solution to the viii queens problem, translated from C.
--
-- /*
-- * C solution to the viii queens problem.
-- */
--
-- #define __USE_FIXED_PROTOTYPES__
-- #include <stdio.h>
--
-- enum { size = 8 };
-- enum { board_dim = size + 1 };
-- char board[ board_dim ];
--
-- void queens( int col, int row_set, int pos_set, int neg_set )
-- {
--    int row, row_bit, pos_bit, neg_bit;
--    if( col >= size ){
--       board[ col ] = '\0';
--       printf( "%s\n", board );
--       return;
--    };
--    for( row = 0; row < size; row++ ){
--       if( !( row_set & ( row_bit = 1 << ( row                  ))
--           || pos_set & ( pos_bit = 1 << ( row + col            ))
--           || neg_set & ( neg_bit = 1 << ( row - col + size - 1 ))
--       )){
--          board[ col ] = row + '1';
--          queens( col + 1,
--                  row_set | row_bit,
--                  pos_set | pos_bit,
--                  neg_set | neg_bit );
--       };
--    };
-- }
--
-- int main( void )
-- {
--    queens( 0, 0, 0, 0 );
--    return 0;
-- }
--

with Text_IO;
procedure viiiqueens is

   size : constant := 8;

   subtype row_range is integer range 1 .. size;
   subtype col_range is integer range 1 .. size;
   subtype pos_range is integer range row_range'first + col_range'first
                                   .. row_range'last  + col_range'last;
   subtype neg_range is integer range row_range'first - col_range'last
                                   .. row_range'last  - col_range'first;

   type bitset is array( integer range <> ) of boolean;
   pragma pack( bitset );
   subtype row_bitset is bitset( row_range );
   subtype pos_bitset is bitset( pos_range );
   subtype neg_bitset is bitset( neg_range );

   row_bitset_empty : row_bitset := row_bitset'( others => false );
   pos_bitset_empty : pos_bitset := pos_bitset'( others => false );
   neg_bitset_empty : neg_bitset := neg_bitset'( others => false );

   function none_of( set : in bitset ) return boolean is
      some : boolean := false;
   begin
      for index in set'range loop
         some := some or set( index );
      end loop;
      return not some;
   end none_of;

   procedure queens( board   : in string;
                     col     : in integer;
                     row_set : in row_bitset;
                     pos_set : in pos_bitset;
                     neg_set : in neg_bitset ) is
   begin
      if col > col_range'last then
         Text_IO.put( board );
         Text_IO.new_line;
      else
         for row in row_range loop
            declare
               row_bit : row_bitset := row_bitset_empty;
               pos_bit : pos_bitset := pos_bitset_empty;
               neg_bit : neg_bitset := neg_bitset_empty;
            begin
               row_bit( row       ) := true;
               pos_bit( row + col ) := true;
               neg_bit( row - col ) := true;
               if          none_of( row_set and row_bit )
                  and then none_of( pos_set and pos_bit )
                  and then none_of( neg_set and neg_bit )
               then
                  queens( board & integer'image( row ),
                          col + 1,
                          row_set or row_bit,
                          pos_set or pos_bit,
                          neg_set or neg_bit );
               end if;
            end;
         end loop;
      end if;
   end queens;
begin
   queens( "",
           col_range'first,
           row_bitset_empty,
           pos_bitset_empty,
           neg_bitset_empty );
end viiiqueens;
