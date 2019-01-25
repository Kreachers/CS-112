--------------------------------------------------------------------------------
--
-- The following display commands are available to control a VT display.
-- Notation:  Pi, where i is a letter means numeric parameter Pi.  Put in
-- digits without leading zeros or leading spaces.  Usually a 0 parameter
-- may be omitted.
-- 
-- Part A.  Display commands.
-- 
-- 1. Cursor positioning
--    ESC [ Pn A         - cursor up
--    ESC [ Pn B         - cursor down
--    ESC [ Pn D         - cursor backward
--    ESC [ Pn C         - cursor forward
--    ESC [ Pl ; Pc H    - cursor position
--    ESC D              - cursor down one line; scroll up if at bottom
--    ESC M              - cursor up one line; scroll down if at top
--    ESC E              - cursor to 1st position next line; scroll up if 
--                         at bottom
--    ESC 7              - save cursor: position, rendition, shift state,
--                         wrap flag, origin mode, selective erase
--    ESC 8              - restore cursor since last ESC 7
-- 
-- 2. Tab stops
--    ESC H              - set tab stop at cursor position
--    ESC [ g            - clear tab stop at cursor position
--    ESC [ 3 g          - clear all tab stops
-- 
-- 3. Character rendition
--    ESC [ Ps ; Ps m    - select one or more graphic renditions:
--                         Ps =  0    - all attributes off
--                               1    - display bold
--                               4    - display underlined
--                               5    - display blinking
--                               7    - display reverse
--                              22    - display normal intensity (yes, 22)
--                              24    - display not underlined
--                              25    - display not blinking
--                              27    - display normal character
-- 
-- 4. Line attributes
--    ESC # 3            - top half of double height line
--    ESC # 4            - bottom half of double height line
--    ESC # 5            - single width line
--    ESC # 6            - double width line
-- 
-- 5. Editing
--    ESC [ Pn L         - insert Pn lines at cursor position; scroll down 
--                         at and below cursor in scrolling region
--    ESC [ Pn M         - delete Pn lines starting at cursor position; 
--                         scroll up lines below cursor
--    ESC [ Pn @         - insert Pn blanks at cursor position; shift other 
--                         characters right
--    ESC [ Pn P         - delete Pn characters; move other characters left
-- 
-- 6. Erasing
--    ESC [ Pn X         - erase Pn characters; replace with blanks
--    ESC [ 0 J          - erase from cursor to end of screen
--    ESC [ 1 J          - erase from start of screen to cursor position
--    ESC [ 2 J          - erase entire display; do not move cursor
--    ESC [ 0 K          - erase from cursor to end of line
--    ESC [ 1 K          - erase from start of line to cursor
--    ESC [ 2 K          - erase whole line
-- 
-- 7. Scrolling margins
--    ESC [ Pt ; Pb r    - set scrolling region to only lines Pt thru Pb.
--    ESC [ r            - set scrolling region to whole screen
-- 
-- Part B.  Miscellaneous
-- 
-- 1. Character set selection
--    ESC ( B            - select ASCII set into G0 set.
--    ESC ) 0            - select line drawing graphics into G1 set.
--    SI                 - set default set to G0.
--    SO                 - set default set to G1.
-- 
-- 2. Keyboard control
--    ESC =              - set keyboard to yapplication keypad mode
--    ESC >              - set keyboard to numeric keypad mode
-- 
-- 3. Suggested terminal reset sequence, use all of the below:
--    ESC ( B ESC ) 0 SI ESC = ESC [ m ESC [ r ESC [ H ESC [ 2 J 
-- 
--------------------------------------------------------------------------------

--------------------------------------------------------------------------------
-- BYTE_STRINGS_.ADA -- Specification for 8-bit character set.
--------------------------------------------------------------------------------

package Byte_strings is

   -- Define the full 8-bit byte to get around the 7-bit ASCII character
   -- set wired into Ada.

   type Byte is ( 
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
   for Byte'size use 8;
 
   type Byte_string is array( positive range <> ) of Byte;
   pragma pack( Byte_string );

   function to_Byte( Item: character ) return Byte;

   function to_Byte_string( Item: string ) return Byte_string;

   function to_character( Item: Byte ) return character;
      -- raise constraint_error when Item > character'last;

   procedure to_character( Item     : in Byte;
                           the_char : out character;
                           high_bit : out boolean );

   function to_string( Item: Byte_string ) return string;
      -- raise constraint_error when any Item(*) > character'last;

end Byte_strings;

--------------------------------------------------------------------------------
-- BYTE_STRINGS_BODY.ADA -- Implementation of 8-bit character set operations.
--------------------------------------------------------------------------------

package body Byte_strings is

   function to_Byte( Item: character ) return Byte is 
   begin
      return Byte'val( character'pos( Item ));
   end to_Byte;

   function to_Byte_string( Item: string ) return Byte_string is 
      Result: Byte_string( Item'range );
   begin
      for index in Item'range loop
         Result( index ) := to_Byte( Item( index ));
      end loop;
      return Result;
   end to_Byte_string;

   function to_character( Item: Byte ) return character is
   begin
      return character'val( Byte'pos( Item ));
   end to_character;

   procedure to_character( Item     : in Byte;
                           the_char : out character;
                           high_bit : out boolean ) is
      ord_Item : constant integer := Byte'pos( Item );
   begin
      the_char := character'val( ord_Item mod 128 );
      high_bit := boolean'val( ord_Item / 128 );
   end to_character;

   function to_string( Item: Byte_string ) return string is
      Result: string( Item'range );
   begin
      for index in Item'range loop
         Result( index ) := to_character( Item( index ));
      end loop;
      return Result;
   end to_string;

end Byte_strings;

--------------------------------------------------------------------------------
-- TERMINAL_IO_.ADA -- Specification for Terminal I/O package.
--------------------------------------------------------------------------------

with Byte_strings, CONDITION_HANDLING;
use  Byte_strings;
package TERMINAL_IO is

   -- Object:  Terminal I/O handler.
   --
   -- This package provides direct acctss to a VMS terminal without the need
   -- to have carriage returns and/or line feeds delimit packets of information.
   -- All input/output is pushed directly to the terminal.  Input from the
   -- keyboard waits for a Byte and returns it immediately.
   --
   -- WARNING:  Any program which uses these operations to access a terminal
   -- should not access the same terminal or keyboard using the operations
   -- provided in standard package TEXT_IO.  Doing so may result in 
   -- unpredictable events happening.

   subtype Maximum_interrupts_ignored_type is integer range 0 .. 32;
   Maximum_interrupts_ignored : Maximum_interrupts_ignored_type
                              := Maximum_interrupts_ignored_type'first;
      -- DANGER: The get procedure below generally uses a TTY_read_all
      -- operation which ignores Ctrl/C and Ctrl/Y characters when this
      -- variable is > 0.  The number is decremented every time a Ctrl/C
      -- or Ctrl/Y is received.  Buggy programs going into loops may not
      -- respond to a Ctrl/C or Ctrl/Y.

   TERMINAL_IO_error: exception;  -- Raised when VMS returns an error code.

   function Last_status return CONDITION_HANDLING.Cond_value_type;
      -- Returns the VMS condition code indicating the detailed status of the
      -- previous screen operation.  Most users will simply assume that any 
      -- status which raises TERMINAL_IO_error is non-recoverable, and any 
      -- status which does not is irrelevant.

   procedure Byte_get( Item              : out Byte_strings.Byte; 
                       Flush_input_buffer: boolean := false );
      -- Wait for a single Byte to be struck at the keyboard and then 
      -- return it.  The usual terminal driver editing operations are 
      -- suppressed and Bytes like Delete, Ctrl/U, etc. are returned 
      -- to the program.  Possibly raises TERMINAL_IO_error.  If the second 
      -- parameter is true, Bytes waiting in the terminal's keyboard 
      -- buffer are flushed before doing the read.

   procedure get( Item              : out character; 
                  Flush_input_buffer: boolean := false );
   procedure get( Item              : out character; 
                  Flush_input_buffer: boolean := false;
                  High_bit_set      : out boolean );
      -- Character version, with high-bit returned as a flag.

   procedure Byte_put( Item: in Byte_strings.Byte );
   procedure Byte_put( Item: in Byte_strings.Byte_string );
      -- Display a Byte or Byte_string on the terminal without any trailing
      -- carriage return or line feed.  Possibly raise TERMINAL_IO_error.
   procedure put( Item: in character );
   procedure put( Item: in string );
      -- Character version for output; simpler.

end TERMINAL_IO;

--------------------------------------------------------------------------------
-- TERMINAL_IO_BODY.ADA -- Implementation for Terminal I/O, VMS dependent.
--------------------------------------------------------------------------------

with SYSTEM, STARLET;
use  SYSTEM;
package body TERMINAL_IO is

   -- The following two identifiers are used as operators passed to the VMS
   -- QIOW system service.
   Function_ZERO      : constant STARLET.Function_Code_type := 0;
   TTY_read_all       : constant STARLET.Function_Code_type := Function_ZERO
         or STARLET.IO_ttyreadall   -- Read all, ignoring Ctrl/C, Ctrl/Y.
         or STARLET.IO_M_noecho     -- Don't echo keystrokes automatically.
         or STARLET.IO_M_nofiltr;   -- Don't edit input; get raw keystroks 
                                    -- and control chars.
   Read_virtual_block : constant STARLET.Function_Code_type := Function_ZERO
         or STARLET.IO_readvblk     -- Read virtual block from terminal.
         or STARLET.IO_M_noecho     -- Don't echo keystrokes automatically.
         or STARLET.IO_M_nofiltr;   -- Don't edit input; get raw keystroks 
                                    -- and control chars.
   Write_virtual_block: constant STARLET.Function_Code_type := Function_ZERO
         or STARLET.IO_writevblk    -- Write virtual block to terminal.
         or STARLET.IO_M_canctrlo   -- Turn on output to suspend a VMS 
                                    -- Ctrl/O operation.
         or STARLET.IO_M_noformat   -- Prevent terminal driver from formatting
                                    -- output.
         or STARLET.IO_M_breakthru; -- IO_M_breakthru -- Don't wait for user 
                                    -- to finish entering input.  

   -- Internal subsidiary procedures to aid the operation procedures in
   -- doing their job.

   procedure Verify_success( 
         Return_status : CONDITION_HANDLING.Cond_value_type ) is
      -- Verify the success of other procedures and bomb out on failure.
   begin
      if not CONDITION_HANDLING.Success( Return_status ) then
         raise TERMINAL_IO_error;
      end if;
   end Verify_success;

   package TERMINAL_IO_OBJECT is
      -- Abstract Machine.  
      -- Following are the local static variables maintained by the 
      --   operations on this package.

      Return_status   : CONDITION_HANDLING.Cond_value_type; 
                        -- VMS status of last I/O operation.
      Input_channel   : STARLET.Channel_type;               
                        -- Channel for input from the terminal.
      Output_channel  : STARLET.Channel_type;
                        -- Channel for output to the terminal.
  end TERMINAL_IO_OBJECT;

pragma page;
   -- Operations on the Abstract Machine.

   function Last_status return CONDITION_HANDLING.Cond_value_type is
   begin
      return TERMINAL_IO_OBJECT.Return_status;
   end Last_status;
  
   procedure Byte_get( Item: out Byte_strings.Byte; 
                       Flush_input_buffer: boolean := false ) is
      input_function: STARLET.Function_Code_type;
   begin
      if Maximum_interrupts_ignored > Maximum_interrupts_ignored_type'first then
         input_function := TTY_read_all;
         Maximum_interrupts_ignored := Maximum_interrupts_ignored - 1;
      else
         input_function := Read_virtual_block;
      end if;
      if Flush_input_buffer then
         -- Purge any Bytes waiting before the I/O operation.
         input_function := input_function or STARLET.IO_M_purge;
      end if;
      STARLET.qiow( status=> TERMINAL_IO_OBJECT.Return_status,
                    chan  => TERMINAL_IO_OBJECT.Input_channel,
                    func  => input_function,
                    P1    => SYSTEM.To_unsigned_longword( Item'address ),
                    P2    => 1 );
      Verify_success( TERMINAL_IO_OBJECT.Return_status );
   end Byte_get;

   procedure Byte_put( Item: in Byte_strings.Byte ) is
   begin
      Byte_put( Byte_string'( 1..1 => Item ));
   end Byte_put;

   procedure Byte_put( Item: in Byte_strings.Byte_string ) is
   begin
      STARLET.qiow( status=> TERMINAL_IO_OBJECT.Return_status,
                    chan  => TERMINAL_IO_OBJECT.Output_channel,
                    func  => Write_virtual_block,
                    P1    => SYSTEM.To_unsigned_longword( Item'address ),
                    P2    => SYSTEM.Unsigned_longword( Item'length ));
      Verify_success( TERMINAL_IO_OBJECT.Return_status );
   end Byte_put;

pragma page;
   procedure get( Item              : out character; 
                  Flush_input_buffer: boolean := false ) is
      Ignore_high_bit: boolean;
   begin
      get( Item, Flush_input_buffer, Ignore_high_bit );
   end get;

   procedure get( Item              : out character; 
                  Flush_input_buffer: boolean := false;
                  High_bit_set      : out boolean ) is
      the_Byte : Byte;
   begin
      Byte_get( the_Byte, Flush_input_buffer );
      to_character( the_Byte, Item, High_bit_set );
   end get;

   procedure put( Item: in character ) is
   begin
      Byte_put( to_Byte( Item ));
   end put;

   procedure put( Item: in string ) is
   begin
      Byte_put( to_Byte_string( Item ));
   end put;

begin

   -- Assign the terminal to channel numbers for I/O operations.

   STARLET.Assign( status=> TERMINAL_IO_OBJECT.Return_status,
                   devnam=> "SYS$INPUT",
                   chan  => TERMINAL_IO_OBJECT.Input_channel );
   Verify_success( TERMINAL_IO_OBJECT.Return_status );

   STARLET.Assign( status=> TERMINAL_IO_OBJECT.Return_status,
                   devnam=> "SYS$OUTPUT",
                   chan  => TERMINAL_IO_OBJECT.Output_channel );
   Verify_success( TERMINAL_IO_OBJECT.Return_status );

end TERMINAL_IO;

--------------------------------------------------------------------------------
-- Program Terminal_Echo.
--
-- This program illustrates the use of the TERMINAL_IO package by doing
-- some clever things on the screen.  First it displays some information
-- on the screen in the first loop.  Then it reads characters and echos
-- them to the screen immediately, in hex if they are not printable.
-- Either Ctrl/C or Ctrl/Z will stop the program.  Try it and see.
--------------------------------------------------------------------------------

with Terminal_IO;
use  Terminal_IO;
procedure Terminal_Echo is
   use Standard.ASCII;

   type Cursor_movement is( Cursor_up, Cursor_Down, Cursor_Left, Cursor_Right,
                           Cursor_position );

   Hex                : constant array( 0..15 ) of character 
                      := "0123456789ABCDEF";

   Control_C          : constant character := ETX;
   Control_D          : constant character := EOT;
   Control_Y          : constant character := EM;
   Control_Z          : constant character := SUB;

   Clear_to_bottom    : constant string    := ESC & "[0J";
   Clear_to_top       : constant string    := ESC & "[1J";
   Clear_screen       : constant string    := ESC & "[2J";
   Clear_to_right     : constant string    := ESC & "[0K";
   Clear_to_left      : constant string    := ESC & "[1K";
   Clear_line         : constant string    := ESC & "[2K";

   Cursor_Home        : constant string    := ESC & "[H";
   Cursor_up_1        : constant string    := ESC & "[A";
   Cursor_down_1      : constant string    := ESC & "[B";
   Cursor_left_1      : constant string    := ESC & "[D";
   Cursor_right_1     : constant string    := ESC & "[C";

   Cursor_top_edge    : constant string    := ESC & "[4095A";
   Cursor_bottom_edge : constant string    := ESC & "[4095B";
   Cursor_left_edge   : constant string    := ESC & "[4095D";
   Cursor_right_edge  : constant string    := ESC & "[4095C";

   Normal_video       : constant string    := ESC & "[0m";
   Bold_video         : constant string    := ESC & "[1m";
   Underline_video    : constant string    := ESC & "[4m";
   Blinking_video     : constant string    := ESC & "[5m";
   Reverse_video      : constant string    := ESC & "[7m";

   Double_high_top    : constant string    := ESC & "#3";
   Double_high_bot    : constant string    := ESC & "#4";
   Double_wide        : constant string    := ESC & "#6";
   Single_wide        : constant string    := ESC & "#5";

   New_line           : constant string    := CR & LF;
   Save_cursor        : constant string    := ESC & "7";
   Restore_cursor     : constant string    := ESC & "8";

   Autowrap_mode_on   : constant string    := ESC & "[?7h";
   Application_Keypad : constant string    := ESC & "=";
   Edit_insert_off    : constant string    := ESC & "[4l";
   Reset_scroll       : constant string    := ESC & "[r";
   Enable_ASCII       : constant string    := ESC & "(B";
   Enable_linedraw    : constant string    := ESC & ")0";
   Shift_out          : constant character := SO;
   Shift_in           : constant character := SI;
  
   function trim( Item : string ) return string is
      First : integer := Item'first;
      Last  : integer := Item'last;
   begin
      while First <= Item'last and then Item( First ) = ' ' loop
         First := First + 1;
      end loop;
      while Last >= Item'first and then Item( Last ) = ' ' loop
         Last := Last - 1;
      end loop;
      return Item( First .. Last );
   end trim;

   procedure Move( Direction : Cursor_movement; P1, P2 : natural := 1 ) is
      P1_string   : constant string := trim( integer'image( P1 ));
      P2_string   : constant string := trim( integer'image( P2 ));
      Cursor_code : constant array( Cursor_movement ) of character
                  := ( Cursor_up=> 'A', Cursor_down=> 'B', Cursor_left=> 'D',
                       Cursor_right=> 'C', Cursor_position=> 'H' );
   begin
      put( ESC & "[" & P1_string );
      if Direction = Cursor_position then
         put( ';' & P2_string );
      end if;
      put( Cursor_code( Direction ));
   end Move;

   procedure Splurge is
   begin
      put( Cursor_Home & Clear_screen );
      put( Enable_linedraw & Shift_out ); -- Enable line drawing character set.
      put( "lq" ); 
      for Index in character range '`' .. '~' loop 
         put( 'q' ); 
      end loop; 
      put( "qk" );
      put( New_line );
      put( "x " ); 
      for Index in character range '`' .. '~' loop 
         put( Index ); 
      end loop; 
      put( " x" );
      put( New_line );
      put( "x " ); 
      Move( Cursor_position, 3, 34 );                    
      put( " x" );
      put( New_line );
      put( "mq" ); 
      for Index in character range '`' .. '~' loop 
         put( 'q' ); 
      end loop; 
      put( "qj" );

      Move( Cursor_position, 1, 50 ); put( "lqwqk" );
      Move( Cursor_position, 2, 50 ); put( "x`x`x" );
      Move( Cursor_position, 3, 50 ); put( "tqnqu" );
      Move( Cursor_position, 4, 50 ); put( "x`x`x" );
      Move( Cursor_position, 5, 50 ); put( "mqvqj" );

      Move( Cursor_position, 4, 60 ); put( "aaaaaaaaaa" );
      put( Shift_in ); -- Disable line drawing character set.
      Move( Cursor_position, 3, 3 );
      for Index in character range '`' .. '~' loop 
         put( Index ); 
      end loop;

      -- Display some debug output to show cursor positioning.
      for Row_Index in 5..10 loop
         for Horizontal in 1..2 loop
            Move( Cursor_position, Row_Index, Horizontal * 15 );
            put( Reverse_video & "[[" & integer'image( Row_Index )
                           & ";"  & integer'image( Horizontal * 15 ) & "]]" );
         end loop;
      end loop;
      put( Normal_video );
      put( New_line & Reverse_video   & "This is written in Reverse_video  ." );
      put( Normal_video );
      put( New_line & Underline_video & "This is written in Underline_video." );
      put( Normal_video );
      put( New_line & Bold_video      & "This is written in bold_video     ." );
      put( New_line & Normal_video    & "This is written in Normal_video   ." );
      put( New_line & Double_high_top & "This is written in Double_High    ." );
      put( New_line & Double_high_bot & "This is written in Double_High    ." );
      put( New_line & Double_wide     & "This is written in Double_Wide    ." );
      put( New_line & Single_wide     & "This is written in Single_High    ." );
      Move( Cursor_position, 3, 60 );
      put( Shift_out & "{|3" & Shift_in );
   end Splurge;

   procedure Clean_up_screen is
   begin
      put( Normal_video & Enable_ASCII & Application_Keypad 
         & Shift_in & Reset_scroll & Cursor_Bottom_edge & Cursor_up_1 );
   end Clean_up_screen;

   package VT_keys is
      procedure show( One_char : character );
   end VT_keys;

   package body VT_keys is

      subtype Match_range is natural range 1 .. 3;
      subtype Show_range  is natural range 1 .. 5;
      Buffer: string( Match_range );

      type Key_entry is record 
              Match      : string( Match_range );
              Show       : string( Show_range );
                        end record;
      type Key_table is array( Positive range <> ) of Key_entry;
      Key_list : constant Key_table := (
                 ( ESC & "[A", "up   " ),
                 ( ESC & "[B", "down " ),
                 ( ESC & "[C", "right" ),
                 ( ESC & "[D", "left " ),
                 ( ESC & "OM", "Enter" ),
                 ( ESC & "OP", "PF1  " ),
                 ( ESC & "OQ", "PF2  " ),
                 ( ESC & "OR", "PF3  " ),
                 ( ESC & "OS", "PF4  " ),
                 ( ESC & "Ol", "KP,  " ),
                 ( ESC & "Om", "KP-  " ),
                 ( ESC & "On", "KP.  " ),
                 ( ESC & "Op", "KP0  " ),
                 ( ESC & "Oq", "KP1  " ),
                 ( ESC & "Or", "KP2  " ),
                 ( ESC & "Os", "KP3  " ),
                 ( ESC & "Ot", "KP4  " ),
                 ( ESC & "Ou", "KP5  " ),
                 ( ESC & "Ov", "KP6  " ),
                 ( ESC & "Ow", "KP7  " ),
                 ( ESC & "Ox", "KP8  " ),
                 ( ESC & "Oy", "KP9  " ));

      procedure show( One_char : character ) is
      begin
         Buffer := Buffer( 2..3 ) & One_char;
         for index in Key_list'range loop
            if Key_list( index ).Match = Buffer then
               put( " """ & trim( Key_list( index ).Show ) & '"' );
               return;
            end if;
         end loop;
      end show;
   end VT_keys;

begin

   Splurge;

   declare
      One_char   : character;
      High_bit   : boolean;
      One_byte   : integer;
      Char_count : natural := natural'last;
      flag_char  : constant array( boolean ) of character := ( ' ', '*' );

      procedure Moan( Message: string ) is
      begin
         Char_count := 0;
         put( New_line & BEL & Message & New_line );
      end Moan;         
   begin
      -- Now echo keystrokes until a Ctrl/Z is entered.
      Move( Cursor_position, 19, 10 );
      put( BEL & "Now enter keystrokes, Ctrl/Z to quit:" & New_line );
      Maximum_interrupts_ignored := Maximum_interrupts_ignored_type'last;
      loop
         get( One_char, High_bit );
         if Char_count >= 8 or One_char = ESC or 
                  One_char = CR or One_char = LF or One_char = FF then
            put( New_line );
            Char_count := 0;
         end if;
         Char_count := Char_count + 1;
         One_Byte := character'pos( one_char ) 
                   + 128 * boolean'pos( high_bit );
         put( " [" & Hex( One_byte / 16 ) & Hex( One_byte rem 16 )
             & ']' & character'image( One_char )
             & flag_char( high_bit ));
         VT_keys.show( One_char );
         case One_char is
            when Control_C | Control_Y=>
               put( Save_Cursor );
               Move( Cursor_position, 8, 60 );
               One_char := character'val( character'pos( One_char ) 
                           + character'pos( '@' ));
               put( integer'image( Maximum_interrupts_ignored ) 
                    & " ^" & One_char & " left." );
               put( Restore_Cursor );
               Moan( "Ctrl/" & One_char & " ignored.  Use Ctrl/Z." );
            when Control_D=> 
               Moan( "This isn't Unix, dummy!" );
            when Control_Z=> 
               Moan( "END_OF_FILE" ); 
               exit;
            when others   => null;
         end case;
      end loop;
   end;
   Move( Cursor_down, 2 ); put( New_line );
   Clean_up_screen;
exception
   when others=> Clean_up_screen;
                 put( New_line & "You just raised an exception." );
                 put( BEL & New_line );
end Terminal_Echo;
