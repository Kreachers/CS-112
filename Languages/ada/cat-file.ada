
--
-- cat_file filename...
--
-- This program illustrates the use of argc and argv from
-- Ada, and assuming that the first argument is a filename,
-- cats the file to the standard output.
--

with Main_Program_Argument_List;
with Text_IO;
procedure cat_file is

   ---------------------------------------------------------------------
   procedure cat_one_file( filename : in string ) is
      file     : Text_IO.File_type;
      one_char : character;
      colons   : constant string
               := string'( 1 .. filename'length => ':' );

      ------------------------------------------------------------------
      procedure complain( exception_name : in string ) is
      begin
         Text_IO.put_line( filename
                         & ": "
                         & exception_name
                         & " copying file." );
         if Text_IO.is_open( file ) then
            Text_IO.close( file );
         end if;
      end complain;
      ------------------------------------------------------------------

   begin
      ------------------------------------------------------------------
      -- This procedure is probably overkill.  Page boundaries
      -- could likely be ignored and get_line could be used instead
      -- to copy the file a line at a time.
      ------------------------------------------------------------------
      Text_IO.put_line( colons );
      Text_IO.put_line( filename );
      Text_IO.put_line( colons );
      Text_IO.open( file => file,
                    mode => Text_IO.IN_FILE,
                    name => filename );
      while not Text_IO.end_of_file( file ) loop
         while not Text_IO.end_of_page( file ) loop
            while not Text_IO.end_of_line( file ) loop
               Text_IO.get( file, one_char );
               Text_IO.put( one_char );
            end loop;
            Text_IO.new_line;
            Text_IO.skip_line( file );
         end loop;
         Text_IO.new_page;
         Text_IO.skip_page( file );
      end loop;
      Text_IO.close( file );
      ------------------------------------------------------------------
   exception
      when Text_IO.STATUS_ERROR => complain( "STATUS_ERROR" );
      when Text_IO.MODE_ERROR   => complain( "MODE_ERROR"   );
      when Text_IO.NAME_ERROR   => complain( "NAME_ERROR"   );
      when Text_IO.USE_ERROR    => complain( "USE_ERROR"    );
      when Text_IO.DEVICE_ERROR => complain( "DEVICE_ERROR" );
      when Text_IO.END_ERROR    => complain( "END_ERROR"    );
      when Text_IO.DATA_ERROR   => complain( "DATA_ERROR"   );
      when Text_IO.LAYOUT_ERROR => complain( "LAYOUT_ERROR" );
   end cat_one_file;
   ---------------------------------------------------------------------

begin
   for arg_index in 1 .. Main_Program_Argument_List.argc - 1 loop
      cat_one_file( Main_Program_Argument_List.get_arg( arg_index ));
   end loop;
end cat_file;
