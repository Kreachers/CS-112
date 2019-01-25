with Condition_Handling;
package System_Parameters is
   -- Copyright (c) 1990, by Wesley F. Mackey.  All rights reserved.

   type Sysparam  is access string;
   type Sysparams is array( natural range <> ) of Sysparam;

   System_Parameters_Error : exception;

   type character_class_kind is ( space, switch, simple, quote, done );
   type character_class      is array( character ) of character_class_kind;
   pragma pack( character_class );

   which_class : constant character_class 
               := character_class'( ASCII.NUL => done,
                                    ASCII.SOH .. ' ' | ASCII.DEL => space,
                                    '=' | ',' | '+' | '/' => switch,
                                    '"' => quote,
                                    others => simple );

   type character_set is array( character ) of boolean;
   pragma pack( character_set );

   is_space  : character_set
             := character_set'( ASCII.NUL .. ' ' | ASCII.DEL => true,
                                '!' .. '~' => false );
   is_switch : character_set 
             := character_set'( '/' | ',' | '+' | '=' => true, 
                                others => false );
   is_quote  : character_set
             := character_set'( '"' => true, others => false );

   function Get_Sysparams( Min_Count : natural := 0;
                           Prompt    : string := "Parameters: " 
                         ) return Sysparams;

   function Get_Image_Name return string;

   function Last_status return Condition_Handling.Cond_value_type;

end System_Parameters;

with Unchecked_Conversion, STARLET, SYSTEM;
package body System_Parameters is
   -- Copyright (c) 1990, by Wesley F. Mackey.  All rights reserved.

   Last_status_returned : CONDITION_HANDLING.Cond_value_type;

   function Last_status return CONDITION_HANDLING.Cond_value_type is
   begin
      return Last_status_returned;
   end Last_status;

   procedure Get_Foreign(
      Condition      : out CONDITION_HANDLING.Cond_value_type;
      Command_Line   : out string;
      User_Prompt    : in  string;
      Command_Length : out short_integer;
      Force_Prompt   : in out integer );
   pragma interface( system, Get_Foreign );
   pragma import_valued_procedure( Get_Foreign, "LIB$get_foreign",
         ( CONDITION_HANDLING.Cond_value_type, string, string, short_integer,
           integer ),
         ( value, descriptor, descriptor, reference, reference ));

   function Get_Image_Name return string is
      Image_Name        : string( 1 .. 256 );
      Image_Name_Length : SYSTEM.Unsigned_word;
      -- The following code requires understanding of packages SYSTEM and
      -- STARLET as well as the standard VMS interfaces in order to be
      -- understood.  See the appropriate VMS reference manuals.
      -- It is, however, an example of how Ada can handle anything assembly
      -- language can handle.
      Single_Item_Rec : STARLET.Item_list_type( 1..2 )
              :=( 1=>( buf_len    => SYSTEM.Unsigned_word(
                                 Image_Name'size / SYSTEM.Storage_unit ),
                       item_code  => STARLET.JPI_IMAGNAME,
                       buf_address=> Image_Name'address,
                       ret_address=> Image_Name_Length'address ),
                  2=>( 0, 0, SYSTEM.To_address(0), SYSTEM.To_address(0) ));
   begin
      STARLET.GETJPIW( Last_status_returned, itmlst=> Single_Item_Rec );
      if not CONDITION_HANDLING.Success( Last_status_returned ) then
         raise System_Parameters_Error;
      end if;
      return Image_Name( 1 .. integer( Image_Name_Length ));
   end Get_Image_Name;

pragma page;
   function Get_Sysparams( Min_Count : natural := 0;
                           Prompt    : string := "Parameters: " 
                         ) return Sysparams is
      subtype Param_Range is integer range 1 .. 1024;
      type    Scan_state  is ( skipping, in_param, in_quote, stop );
      type    Scan_action is ( nothing, start, finish, change );
      type    Transition  is record
                 state       : Scan_state;
                 action      : Scan_action;
              end record;
      type    DFSM_type   is array( Scan_state, 
                                    character_class_kind ) of Transition;

      DFSM : DFSM_type := DFSM_type'(
         skipping => ( space  => ( action => nothing, state => skipping ),
                       switch => ( action => start  , state => in_param ),
                       simple => ( action => start  , state => in_param ),
                       quote  => ( action => start  , state => in_quote ),
                       done   => ( action => nothing, state => stop     )),
         in_param => ( space  => ( action => finish , state => skipping ), 
                       switch => ( action => change , state => in_param ),
                       simple => ( action => nothing, state => in_param ),
                       quote  => ( action => nothing, state => in_quote ),
                       done   => ( action => finish , state => stop     )),
         in_quote => ( space  => ( action => nothing, state => in_quote ), 
                       switch => ( action => nothing, state => in_quote ),
                       simple => ( action => nothing, state => in_quote ),
                       quote  => ( action => nothing, state => in_param ),
                       done   => ( action => finish , state => stop     )),
         stop     => ( others => ( action => nothing, state => stop     )));

      Param_Line    : string( Param_Range );
      Param_Length  : short_integer;
      Param_index   : integer := Param_line'first;

      Param_First   : array( Param_Range ) of integer;
      Param_Last    : array( Param_Range ) of integer;
      Param_count   : natural := Param_Range'first - 1;
      Param_max     : natural;

      Current_state : Scan_state := skipping;
      Current_Trans : Transition;

      Force_Prompt  : integer := 0;

   begin
      Get_Foreign( Last_status_returned, Param_Line, Prompt, 
                   Param_Length, Force_Prompt );
      if natural( Param_Length ) >= Param_line'last or else
            not CONDITION_HANDLING.Success( Last_status_returned ) then
         raise System_Parameters_Error;
      end if;
      Param_Line( natural( Param_Length ) + 1 ) := ASCII.NUL;

      while Current_state /= stop loop
         Current_Trans := DFSM( Current_state, 
                                which_class( Param_Line( Param_index )));
         case Current_trans.action is
            when nothing => null;
            when start   => Param_count := Param_count + 1;
                            Param_first( Param_count ) := Param_index;
            when finish  => Param_last( Param_count ) := Param_index - 1;
            when change  => Param_last( Param_count ) := Param_index - 1;
                            Param_count := Param_count + 1;
                            Param_first( Param_count ) := Param_index;
         end case;
         Param_index := Param_index + 1;
         Current_state := Current_Trans.state;
      end loop;

      if Param_count > Min_Count then Param_max := Param_count;
                                 else Param_max := Min_Count;
      end if;
      declare
         Result : Sysparams( Param_Range'first - 1 .. Param_max );
      begin
         Result( Result'first ) := new string'( Get_Image_Name );
         for index in Result'first + 1 .. Param_count loop
            Result( index ) := new string'( 
                  Param_Line( Param_first( index ) .. Param_last( index )));
         end loop;
         for index in Param_count + 1 .. Result'last loop
            Result( index ) := new string'( "" );
         end loop;
         return Result;
      end;
   end Get_Sysparams;

end System_Parameters;

with System_Parameters, Text_IO, Integer_Text_IO;
use  System_Parameters, Text_IO, Integer_Text_IO;
procedure sys_params is
   Parameters : constant Sysparams := Get_Sysparams;
begin
   for index in Parameters'range loop
      put( "Parameter(" );
      put( index, width=> 3 );
      put( " ) = ``" );
      put( Parameters( index ).all );
      put( "''" );
      new_line;
   end loop;
end sys_params;
