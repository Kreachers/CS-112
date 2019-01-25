generic
   type Real is digits <>;
   with function sin( A: real ) return real is <>;
   with function cos( A: real ) return real is <>;
   with function atan2( A1, A2: real ) return real is <>;
   with function exp( A: real ) return real is <>;
   with function log( A: real ) return real is <>; -- natural log
   with function sqrt( A: real ) return real is <>;
package complex_lib is
   type complex is record 
           re : Real := 0.0;
           im : Real := 0.0; 
        end record;
   sqrt_neg_1 : constant complex := complex'( re=> 0.0, im=> 1.0 );
   complex_2  : constant complex := complex'( re=> 2.0, im=> 0.0 );

   function cis( Arg: Real ) return complex;

   function "abs"( Right: complex ) return Real;
   function theta( Arg: complex ) return Real;

   function "+"( Left, Right: complex ) return complex;
   function "-"( Left, Right: complex ) return complex;
   function "*"( Left, Right: complex ) return complex;
   function "/"( Left, Right: complex ) return complex;
   function "+"( Right: complex ) return complex;
   function "-"( Right: complex ) return complex;
   function "**"( Left, Right: complex ) return complex;
   function "abs"( Right: complex ) return complex;

   function sqrt( Arg: complex ) return complex;
   function exp( Arg: complex ) return complex;
   function log( Arg: complex ) return complex; -- natural log
   function sin( Arg: complex ) return complex;
   function cos( Arg: complex ) return complex;
   function tan( Arg: complex ) return complex;

end complex_lib;

package body complex_lib is
   pi: constant :=
         3.14159_26535_89793_23846_26433_83279_50288_41971_69399_37510;

   function cis( Arg: Real ) return complex is
   begin
      return complex'( re=> cos( Arg ), im=> sin( Arg ));
   end cis;

   function "+"( Left, Right: complex ) return complex is
   begin
      return complex'( re=> Left.re + Right.re,
                       im=> Left.im + Right.im );
   end "+";

   function "-"( Left, Right: complex ) return complex is
   begin
      return complex'( re=> Left.re - Right.re,
                       im=> Left.im - Right.im );
   end "-";

   function "*"( Left, Right: complex ) return complex is
   begin
      return complex'( re=> Left.re * Right.re - Left.im * Right.im,
                       im=> Left.re * Right.im + Left.im * Right.re );
   end "*";

   function "/"( Left, Right: complex ) return complex is
      Denom : constant Real := Right.re ** 2 + Right.im ** 2;
   begin
      return complex'( 
                re=>( Left.re * Right.re + Left.im * Right.im ) / Denom,
                im=>( Left.im * Right.re - Left.re * Right.im ) / Denom );
   end "/";

   function "+"( Right: complex ) return complex is
   begin
      return Right;
   end "+";

   function "-"( Right: complex ) return complex is
   begin
      return complex'( re=> - Right.re, im=> - Right.im );
   end "-";

   function "**"( Left, Right: complex ) return complex is
   begin
      return exp( log( Left ) * Right );
   end "**";

   function "abs"( Right: complex ) return Real is
   begin
      return sqrt( Right.re ** 2 + Right.im ** 2 );
   end "abs";

   function "abs"( Right: complex ) return complex is
   begin
      return complex'( re=> abs Right, im=> 0.0 );
   end "abs";

   function theta( Arg: complex ) return Real is
   begin
      if Arg.re /= 0.0 then
         return atan2( Arg.im, Arg.re );
      elsif Arg.im > 0.0 then
         return pi / 2.0;
      elsif Arg.im < 0.0 then
         return - pi / 2.0;
      else
         raise Numeric_error;
      end if;
   end theta;

   function sqrt( Arg: complex ) return complex is
   begin
      return sqrt( abs Arg ) * cis( theta( Arg ) / 2.0 );
   end sqrt;

   function exp( Arg: complex ) return complex is
   begin
      return complex'( re=> exp( Arg.re ), im=> 0.0 ) * cis( Arg.im );
   end exp;

   function log( Arg: complex ) return complex is
   begin
      return complex'( re=> log( abs Arg ), im=> theta( Arg ));
   end log;

   function sin( Arg: complex ) return complex is
   begin
      return ( exp( sqrt_neg_1 * Arg ) - exp( - sqrt_neg_1 * Arg ))
           / ( complex_2 * sqrt_neg_1 );
   end sin;

   function cos( Arg: complex ) return complex is
   begin
      return ( exp( sqrt_neg_1 * Arg ) - exp( - sqrt_neg_1 * Arg ))
           / complex_2;
   end cos;

   function tan( Arg: complex ) return complex is
   begin
      return sin( Arg ) / cos( Arg );
   end tan;

end complex_lib;

with float_math_lib, complex_lib;
use  float_math_lib;
package float_complex_lib is new complex_lib( float );

with long_float_math_lib, complex_lib;
use  long_float_math_lib;
package long_float_complex_lib is new complex_lib( long_float );

with long_long_float_math_lib, complex_lib;
use  long_long_float_math_lib;
package long_long_float_complex_lib is new complex_lib( long_long_float );
