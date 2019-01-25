--
-- VMS RTL_Routines LIB$ LIB$DO_COMMAND
--
-- The Execute Command routine stops program execution and directs  the
-- Command  Language  Interpreter to execute a command which you supply
-- as the argument.  If  successful,  LIB$DO_COMMAND  does  not  return
-- control  to  the  calling  program.   Instead, LIB$DO_COMMAND begins
-- execution of the specified command.
--
-- If you want control to return to the caller, use LIB$SPAWN instead.
--
--    Format:
--
--      LIB$DO_COMMAND  command-string
--
--    Argument
--
-- command-string
--
-- VMS usage: char_string
-- type: character string
-- access: read only
-- mechanism: by descriptor
--
-- Text  of   the   command   which   LIB$DO_COMMAND   executes.    The
-- command-string  argument  is the address of a descriptor pointing to
-- the command  text.   The  maximum  length  of  the  command  is  255
-- characters.
--
package VMS_Do_command is

   procedure Do_command(
      Condition      : out integer;
      Command_string : in string );
   pragma interface( system, Do_command );
   pragma import_valued_procedure( Do_command, "LIB$DO_COMMAND",
          ( integer, string ), ( value, descriptor ));

end VMS_Do_command;

with VMS_Do_command, Text_IO, Integer_Text_IO;
procedure Do_command is
   Command : string( 1 .. 256 );
   Last    : integer;
   Result  : integer;
begin
   Text_IO.put_line( "Enter any VMS command:" );
   Text_IO.get_line( Command, Last );
   Text_IO.put_line( "The command was:" );
   Text_IO.put_line( '[' & Command( Command'first .. Last ) & ']' );
   Text_IO.put_line( "Now we will do it ..." );
   VMS_Do_command.Do_command( Result, Command( Command'first .. Last ));
   Text_IO.put( "ERROR, Do_command failed with code " );
   Integer_Text_IO.put( Result, base=> 16 );
   Text_IO.new_line;
end Do_command;
