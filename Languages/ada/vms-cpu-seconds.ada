--------------------------------------------------------------------------------
-- CPU_TIME_INFORMATION_.ADA -- Interface to VMS Get Job and Process Information Service.
--------------------------------------------------------------------------------
--
-- This package allows access to the VMS system call GETJPIW which returns
-- job and process information.  In this case, specifically, CPU time used.
-- A more user-friendly access method is also provided, which returns seconds
-- used as a real number.
--
-- In each case, the amount of CPU time used by the current process since it
-- started is reported.  For most users, this is the amount of CPU time used
-- since the user logged in.  In order to make this information meaningful,
-- two calls must be made, and the difference between the two calls taken.
--
with SYSTEM, CONDITION_HANDLING, STARLET;
package CPU_time_information is
  function Last_status                        -- Returns the last 32-bit VMS
    return CONDITION_HANDLING.Cond_value_type;-- status code from the most
                                              -- recent call to Last_status.

  function GETJPIW_CPUTIM_centiseconds        -- Returns the CPU time used,
    return integer;                           -- measured in 0.01 sec units.

  function CPU_time_seconds                   -- Returns the CPU time used,
    return long_float;                        -- measured in seconds.

  GETJPIW_error : exception;                  -- Raised when GETJPIW bombs.
end CPU_TIME_INFORMATION;

--------------------------------------------------------------------------------
-- CPU_TIME_INFORMATION_B.ADA -- Package body for above.
--------------------------------------------------------------------------------

package body CPU_TIME_INFORMATION is
  Last_status_returned : CONDITION_HANDLING.Cond_value_type;

  procedure Verify( Status: CONDITION_HANDLING.Cond_value_type ) is
  begin
    if not CONDITION_HANDLING.Success( Status ) then
      raise GETJPIW_error;
    end if;
  end Verify;

  function Last_status return CONDITION_HANDLING.Cond_value_type is
  begin
    return Last_status_returned;
  end Last_status;

  function GETJPIW_CPUTIM_centiseconds return integer is
    Cpu_time_integer: integer;
    Returned_length : SYSTEM.Unsigned_word;
    -- The following code requires understanding of packages SYSTEM and
    -- STARLET as well as the standard VMS interfaces in order to be
    -- understood.  See the appropriate VMS reference manuals.
    -- It is, however, an example of how Ada can handle anything assembly
    -- language can handle.
    Single_Item_Rec : STARLET.Item_list_type( 1..2 )
            :=( 1=>( buf_len    => SYSTEM.Unsigned_word(
                                      integer'size / SYSTEM.Storage_unit ),
                     item_code  => STARLET.JPI_CPUTIM,
                     buf_address=> Cpu_time_integer'address,
                     ret_address=> Returned_length'address ),
                2=>( 0, 0, SYSTEM.To_address(0), SYSTEM.To_address(0) ));
  begin
    STARLET.GETJPIW( Last_status_returned, itmlst=> Single_Item_Rec );
    Verify( Last_status_returned );
    return Cpu_time_integer;
  end GETJPIW_CPUTIM_centiseconds;

  function Cpu_time_seconds return long_float is
    Centiseconds_per_second: constant := 100.0;
  begin
    return long_float( GETJPIW_CPUTIM_centiseconds ) / Centiseconds_per_second;
  end Cpu_time_seconds;

end CPU_TIME_INFORMATION;

--------------------------------------------------------------------------------
-- CPU_SECONDS.ADA -- Sample main program which prints out CPU time used.
--------------------------------------------------------------------------------

with TEXT_IO, LONG_FLOAT_TEXT_IO, CPU_TIME_INFORMATION;
use  TEXT_IO, LONG_FLOAT_TEXT_IO, CPU_TIME_INFORMATION;
procedure CPU_SECONDS is
  type Counter_range is range 1..10;
  One_second         : constant duration := 1.0;
begin
  for Counter in Counter_range loop
    put( "The current process has used " );
    put( Cpu_time_seconds, fore=> 10, aft=>3, exp=>0 );
    put( " seconds." );
    new_line;
    delay One_second;
  end loop;
end CPU_SECONDS;
