with Unchecked_conversion;
with Text_IO, Integer_Text_IO;
use  Text_IO, Integer_Text_IO;
procedure Funny_Munny is

   type Funny_Munny is delta 0.01 range -10_000_000.00 .. +10_000_000.00;
   type Exact_Money is delta 0.01 range -10_000_000.00 .. +10_000_000.00;
   for  Exact_Money'Small use 0.01;

   Funny_Amount   : Funny_Munny := 0.00;
   Exact_Amount   : Exact_Money := 0.00;

   One_Exact_Cent : constant Exact_Money := 0.01;
   One_Funny_Cent : constant Funny_Munny := 0.01;

   package Funny_Munny_IO is new Fixed_IO( Funny_Munny );
   package Exact_Money_IO is new Fixed_IO( Exact_Money );
   use Funny_Munny_IO;
   use Exact_Money_IO;

   function unspec is new Unchecked_conversion( Funny_Munny, integer );
   function unspec is new Unchecked_conversion( Exact_Money, integer );

   procedure Display( Exact_Value : Exact_Money; 
                      Funny_Value : Funny_Munny ) is
   begin
      put( "Exact$" );
      put( Exact_Value, 5, 7 );
      put( " is worth " );
      put( "Funny$" );
      put( Funny_Value, 5, 7 );
      put( "; (" );
      put( unspec( Exact_Value ), base=> 16, width=> 8 );
      put( "::" );
      put( unspec( Funny_Value ), base=> 16, width=> 8 );
      put( ")" );
      new_line;
   end Display;

begin
   put( "Funny_Munny'size = " ); put( Funny_Munny'size ); new_line;
   put( "Exact_Money'size = " ); put( Exact_Money'size ); new_line;
   put( "integer    'size = " ); put( integer    'size ); new_line;
   
   put_line( "Funny_Munny example." );
   new_line;

   for outer_loop_counter in 1 .. 5 loop
      for inner_loop_counter in 1 .. 20 loop
         Exact_Amount := Exact_Amount + One_Exact_Cent;
         Funny_Amount := Funny_Amount + One_Funny_Cent;
      end loop;
      Display( Exact_Amount, Funny_Amount );
   end loop;

   new_line;
   Display(   1 * One_Exact_Cent,   1 * One_Funny_Cent );
   Display( 100 * One_Exact_Cent, 100 * One_Funny_Cent );
   Display( 128 * One_Exact_Cent, 128 * One_Funny_Cent );

end Funny_Munny;
