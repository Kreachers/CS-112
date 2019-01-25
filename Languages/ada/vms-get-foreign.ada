--
-- VMS RTL_Routines LIB$ LIB$GET_FOREIGN
-- =====================================
--
-- LIB$GET_FOREIGN  requests  the  calling  image's  Command   Language
-- Interpreter  (CLI)  to  return the contents of the "foreign command"
-- line that activated the current image.
--
--    Format:
--
--      LIB$GET_FOREIGN  get-str [,user-prompt] [,out-len]
--                       [,force-prompt]
--
--    Arguments:
--
-- get-str
--
-- VMS usage: char_string
-- type: character string
-- access: write only
-- mechanism: by descriptor
--
-- String which LIB$GET_FOREIGN uses to  receive  the  foreign  command
-- line.   The get-str argument is the address of a descriptor pointing
-- to this string.  If the foreign command text returned  was  obtained
-- by prompting to SYS$INPUT (see the description of force-prompt), the
-- text is translated to uppercase so as to  be  more  consistent  with
-- text returned from the CLI.
--
-- user-prompt
--
-- VMS usage: char_string
-- type: character string
-- access: read only
-- mechanism: by descriptor
--
-- Optional user-supplied prompt for text which LIB$GET_FOREIGN uses if
-- no  command-line text is available.  The user-prompt argument is the
-- address of a descriptor pointing to the user prompt.  If omitted, no
-- prompting  is  performed.   It  is  recommended  that user-prompt be
-- specified.  If user-prompt is omitted and if no command-line text is
-- available, a zero-length string will be returned.
--
-- out-len
--
-- VMS usage: word_unsigned
-- type: word (unsigned)
-- access: write only
-- mechanism: by reference
--
-- Number  of  bytes  written  into  get-str  by  LIB$GET_FOREIGN,  not
-- counting padding in the case of a fixed-length get-str.  The out-len
-- argument  is  the  address  of   an   unsigned   word   into   which
-- LIB$GET_FOREIGN writes the number of bytes.
--
-- force-prompt
--
-- VMS usage: longword_signed
-- type: longword integer (signed)
-- access: modify
-- mechanism: by reference
--
-- Value which LIB$GET_FOREIGN uses to control whether or not prompting
-- is  to  be performed.  The force-prompt argument is the address of a
-- signed longword integer containing this value.  If the  low  bit  of
-- force-prompt  is  zero,  or if force-prompt is omitted, prompting is
-- done only if the CLI does not return a command line.  If the low bit
-- is 1, prompting is done unconditionally.  If specified, force-prompt
-- is set to 1 before returning to the caller.
--

package FOREIGN_COMMAND_LINE is

  procedure Get_Foreign(
      Condition      : out integer;
      Command_Line   : out string;
      User_Prompt    : in  string;
      Command_Length : out short_integer;
      Force_Prompt   : in out integer );
  pragma interface( system, Get_Foreign );
  pragma import_valued_procedure( Get_Foreign, "LIB$get_foreign",
         ( integer, string,     string,     short_integer, integer   ),
         ( value,   descriptor, descriptor, reference,     reference ));

  function Get_Foreign( Prompt : string := "Argument: " ) return string;
  -- This simplified form is normally easier to use.

  Foreign_Command_Line_Exception : exception;

end FOREIGN_COMMAND_LINE;

package body FOREIGN_COMMAND_LINE is

  function Get_Foreign( Prompt : string := "Argument: "
         ) return string is
    Argument_Line   : string(1..512);
    Argument_Length : short_integer;
    Condition       : integer;
    Force_Prompt    : integer := 0;
  begin
    Get_Foreign( Condition, Argument_Line, Prompt, 
                 Argument_Length, Force_Prompt );
    if Condition rem 2 = 0 then
      -- VMS success codes are always odd.
      -- So if the code is a failure, we must ...
      raise Foreign_Command_Line_Exception;
    end if;
    return Argument_Line( 1.. integer( Argument_Length ));
  end Get_Foreign;

end FOREIGN_COMMAND_LINE;

--
-- The following program is used to illustrate the use of the VMS
-- facility which accesses the command line parameters.  For proper
-- installation of this command, the following DCL command should be
-- used prior to running this program:
--         $ Get_Foreign :== $SYS$SERDAC:[COMPSCI.MACKEY]GET_FOREIGN
-- or whatever the complete path to the .EXE file actually is.  The
-- command is then used as follows, for example:
--         $ Get_Foreign /this is a parameter list.
-- If the run command is used to execute this program, a prompt will
-- always be given to request the command line.
--

with TEXT_IO, FOREIGN_COMMAND_LINE;
use  TEXT_IO, FOREIGN_COMMAND_LINE;
procedure Get_Foreign is
  Parameter : constant string := Get_Foreign( "Parameters: " );
begin
  put_line( "System_parameters: ``" & Parameter & "''" );
end Get_Foreign;
