-- UNIT: procedure HELLO
-- FILES: hello.a
-- COMPILE: ada hello.a
-- LINK: a.ld hello -o hello
-- PURPOSE: typical first program; use of TEXT_IO package in STANDARD library.
-- DESCRIPTION: prints "Hello, world." message.
--              Usage: hello
-- .......................................................................... --

with TEXT_IO; use TEXT_IO;

procedure hello is

begin

      put ("Hello, world.");
      new_line;

end hello;

-- .......................................................................... --
--
-- DISTRIBUTION AND COPYRIGHT:
--
-- This software is released to the Public Domain (note:
--   software released to the Public Domain is not subject
--   to copyright protection).
-- Restrictions on use or distribution:  NONE
--
-- DISCLAIMER:
--
-- This software and its documentation are provided "AS IS" and
-- without any expressed or implied warranties whatsoever.
-- No warranties as to performance, merchantability, or fitness
-- for a particular purpose exist.
--
-- Because of the diversity of conditions and hardware under
-- which this software may be used, no warranty of fitness for
-- a particular purpose is offered.  The user is advised to
-- test the software thoroughly before relying on it.  The user
-- must assume the entire risk and liability of using this
-- software.
--
-- In no event shall any person or organization of people be
-- held responsible for any direct, indirect, consequential
-- or inconsequential damages or lost profits.
--
