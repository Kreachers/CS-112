-- Example of representation clauses to provide direct access
-- to the MS-DOS color text mode screen on a PC.  Some of the
-- information may be inaccurate, since I did not look up the
-- exact codes, and hence may need some modification in order
-- to work.  Also, look at how neatly this paragraph lines up
-- without any special effort to justify the lines other than
-- the usual English language rules about two spaces to end a
-- sentence.

with SYSTEM;
package MS_DOS_PC_color_text_screen_declarations is

   -- Define the full 8-bit byte to get around the 7-bit ASCII character
   -- set wired into Ada.
   type Text_Byte is (
      NUL,SOH,STX,ETX,EOT,ENQ,ACK,BEL,BS, HT, LF, VT, FF, CR, SO, SI,
      DLE,DC1,DC2,DC3,DC4,NAK,SYN,ETB,CAN,EM, SUB,ESC,FS, GS, RS, US,
      ' ','!','"','#','$','%','&',''','(',')','*','+',',','-','.','/',
      '0','1','2','3','4','5','6','7','8','9',':',';','<','=','>','?',
      '@','A','B','C','D','E','F','G','H','I','J','K','L','M','N','O',
      'P','Q','R','S','T','U','V','W','X','Y','Z','[','\',']','^','_',
      '`','a','b','c','d','e','f','g','h','i','j','k','l','m','n','o',
      'p','q','r','s','t','u','v','w','x','y','z','{','|','}','~',DEL,
      X80,X81,X82,X83,X84,X85,X86,X87,X88,X89,X8A,X8B,X8C,X8D,X8E,X8F,
      X90,X91,X92,X93,X94,X95,X96,X97,X98,X99,X9A,X9B,X9C,X9D,X9E,X9F,
      XA0,XA1,XA2,XA3,XA4,XA5,XA6,XA7,XA8,XA9,XAA,XAB,XAC,XAD,XAE,XAF,
      XB0,XB1,XB2,XB3,XB4,XB5,XB6,XB7,XB8,XB9,XBA,XBB,XBC,XBD,XBE,XBF,
      XC0,XC1,XC2,XC3,XC4,XC5,XC6,XC7,XC8,XC9,XCA,XCB,XCC,XCD,XCE,XCF,
      XD0,XD1,XD2,XD3,XD4,XD5,XD6,XD7,XD8,XD9,XDA,XDB,XDC,XDD,XDE,XDF,
      XE0,XE1,XE2,XE3,XE4,XE5,XE6,XE7,XE8,XE9,XEA,XEB,XEC,XED,XEE,XEF,
      XF0,XF1,XF2,XF3,XF4,XF5,XF6,XF7,XF8,XF9,XFA,XFB,XFC,XFD,XFE,XFF );
   for Text_Byte'size use 8;

   type Text_Byte_string is array( positive range <> ) of Text_Byte;
   pragma pack( Text_Byte_string );

   type Threebit_color is( 
         black,  blue,   green,  cyan,   red,   magenta, yellow, white );
   for Threebit_color use( 
         2#000#, 2#001#, 2#010#, 2#011#, 2#100#, 2#101#, 2#110#, 2#111# );

   type Screen_character is record
           Text_character   : Text_Byte;
           Foreground       : Threebit_color;
           Intensity        : boolean;
           Background       : Threebit_color;
           Blinking         : boolean;
        end record;
   -- Little endian declarations counting bits and bytes from right to left.
   for  Screen_character use record at mod 2;
           Text_character   at 0 range 0 .. 7;
           Foreground       at 1 range 0 .. 2;
           Intensity        at 1 range 3 .. 3;
           Background       at 1 range 4 .. 6;
           Blinking         at 1 range 7 .. 7;
        end record;

   -- Declare a string as a 1D array of a 1D array instead of as a 2D array
   -- so that: (a) we ensure rows are allocated contiguously, and (b) slicing
   -- of a row is possible.
   type Text_row    is array( 1 .. 80 ) of Screen_character;
   pragma pack( Text_row );
   type Text_screen is array( 1 .. 25 ) of Text_row;
   pragma pack( Text_screen );

   CGA_Text_screen : Text_screen;
   -- The following does compiles under DEC VAX/VMS Ada and not necessarily
   -- on a DOS PC Ada compiler.  See the specification for package SYSTEM
   -- in ADA$PREDEFINED:SYSTEM_.ADC on the VAX and in any DOS PC Ada LRM
   -- for details on such a machine.
   for CGA_Text_screen use at SYSTEM.TO_ADDRESS( 16#B8000# );

end MS_DOS_PC_color_text_screen_declarations;
