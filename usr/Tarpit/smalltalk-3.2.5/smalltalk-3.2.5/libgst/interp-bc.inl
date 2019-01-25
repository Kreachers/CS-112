/******************************** -*- C -*- ****************************
 *
 *	Byte Code Interpreter Module.
 *	This interprets the compiled bytecodes of a method.
 *
 *
 ***********************************************************************/

/***********************************************************************
 *
 * Copyright 2001, 2002, 2003, 2006, 2007, 2008, 2009
 * Free Software Foundation, Inc.
 * Written by Steve Byrne.
 *
 * This file is part of GNU Smalltalk.
 *
 * GNU Smalltalk is free software; you can redistribute it and/or modify it
 * under the terms of the GNU General Public License as published by the Free
 * Software Foundation; either version 2, or (at your option) any later
 * version.
 *
 * Linking GNU Smalltalk statically or dynamically with other modules is
 * making a combined work based on GNU Smalltalk.  Thus, the terms and
 * conditions of the GNU General Public License cover the whole
 * combination.
 *
 * In addition, as a special exception, the Free Software Foundation
 * give you permission to combine GNU Smalltalk with free software
 * programs or libraries that are released under the GNU LGPL and with
 * independent programs running under the GNU Smalltalk virtual machine.
 *
 * You may copy and distribute such a system following the terms of the
 * GNU GPL for GNU Smalltalk and the licenses of the other code
 * concerned, provided that you include the source code of that other
 * code when and as the GNU GPL requires distribution of source code.
 *
 * Note that people who make modified versions of GNU Smalltalk are not
 * obligated to grant this special exception for their modified
 * versions; it is their choice whether to do so.  The GNU General
 * Public License gives permission to release a modified version without
 * this exception; this exception also makes it possible to release a
 * modified version which carries forward this exception.
 *
 * GNU Smalltalk is distributed in the hope that it will be useful, but WITHOUT
 * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
 * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
 * more details.
 *
 * You should have received a copy of the GNU General Public License along with
 * GNU Smalltalk; see the file COPYING.	 If not, write to the Free Software
 * Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.
 *
 ***********************************************************************/


/* This is basically how the interpreter works:
   
   The interpreter expects to be called in an environment where there
   already exists a well-defined method context.  The instruction
   pointer, stored in the global variable "ip", and the stack pointer,
   stored in the global variable "sp", should be set up to point into
   the current method and gst_method_context.  Other global variables,
   such as "_gst_this_method", "_gst_self", "_gst_temporaries",
   etc. should also be setup.  See the routine
   _gst_prepare_execution_environment for details.
   
   The interpreter checks to see if any change in its state is
   required, such as switching to a new process, dealing with an
   asynchronous signal and printing out the byte codes that are being
   executed, if that was requested by the user.
   
   After that, the byte code that ip points to is fetched and decoded.
   Some byte codes perform jumps, which are performed by merely
   adjusting the value of ip.  Some are message sends, which are
   described in more detail below.  Some instructions require more
   than one byte code to perform their work; ip is advanced as needed
   and the extension byte codes are fetched.  The code for the bytecode
   interpreter is automatically generated by the genvm program starting
   from the description in vm.def: since most bytecodes are actually
   combinations of other bytecodes, genvm avoids unnecessary stack
   pointer movement while synthesizing these bytecodes.
   
   After dispatching the byte code, the interpreter loops around to
   execute another byte code.  A particular bytecode signals that the
   execution of the method is over, and that the interpreter should
   return to its caller.  This bytecode is never generated by the
   compiler, it is only present in a private #'__terminate' method
   that is generated when bootstrapping.

   Note that the interpreter is not called recursively to implement
   message sends.  Rather the state of the interpreter is saved away
   in the currently executing context, and a new context is created
   and the global variables such as ip, sp, and _gst_temporaries are
   initialized accordingly.

   When a message send occurs, the _gst_send_message_internal routine
   is invoked.  It determines the class of the receiver, and checks to
   see if it already has cached the method definition for the given
   selector and receiver class.  If so, that method is used, and if
   not, the receiver's method dictionary is searched for a method with
   the proper selector.  If it's not found in that method dictionary,
   the method dictionary of the classes parent is examined, and on up
   the hierarchy, until a matching selector is found.

   If no selector is found, the receiver is sent a #doesNotUnderstand:
   message to indicate that a matching method could not be found.  The
   stack is modified, pushing a gst_message object that embeds
   information about the original selector and arguments, and
   _gst_send_message_internal calls itself recursively to look up
   #doesNotUnderstand:.  Note that if the object does not understand
   in turn the #doesNotUnderstand: message, a crash is extremely
   likely; things like this are however to be expected, since you're
   really playing a bad game and going against some logical things
   that the VM assumes for speed.

   If a method is found, it is examined for some special cases.  The
   special cases are primitive return of _gst_self, return of an
   instance variable, return of a literal object, or execution of a
   primitive method definition. This latter operation is performed by
   the execute_primitive_operation routine.  If the execution of
   this primitive interpreter fails, the normal message send operation
   is performed.

   If the found method is not one of the special cases, or if it is a
   primitive that failed to execute, a "normal" message send is
   performed.  This basically entails saving away what state the
   interpreter has, such as the values of ip, and sp, being careful to
   save their relative locations and not their physical addresses,
   because one or more garbage collections could occur before the
   method context is returned to, and the absolute pointers would be
   invalid.

   The SEND_MESSAGE routine then creates a new gst_method_context
   object, makes its parent be the currently executing
   gst_method_context, and sets up the interpreters global variables
   to reference the new method and new gst_method_context.  Once those
   variables are set, SEND_MESSAGE returns to the interpreter, which
   cheerfully begins executing the new method, totally unaware that
   the method that it was executing has changed.

   When a method returns, the context that called it is examined to
   restore the interpreter's global variables to the state that they
   were in before the callee was invoked.  The values of ip and sp are
   restored to their absolute address values, and the other global
   state variables are restored accordingly.  After the state has been
   restored, the interpreter continues execution, again totally
   oblivious to the fact that it's not running the same method it was
   on its previous byte code.

   Blocks are similarly implemented by send_block_value, which is
   simpler than _gst_send_message_internal however, because it
   contains no check for special cases, and no method lookup logic.
   Unlike the Blue Book, GNU Smalltalk stores bytecodes for blocks
   into separate CompiledBlock objects, not into the same
   CompiledMethods that holds the containing bytecodes.
   send_block_value expects to find a BlockClosure on the stack, and
   this BlockClosure object points to the CompiledBlock object to be
   activated.  */


#define GET_CONTEXT_IP(ctx) 	TO_INT((ctx)->ipOffset)

#define SET_THIS_METHOD(method, ipOffset) do {				\
  OOP old_method_oop = _gst_this_method;                                \
  gst_compiled_method _method = (gst_compiled_method)                   \
    OOP_TO_OBJ (_gst_this_method = (method));				\
									\
  method_base = _method->bytecodes;					\
  _gst_literals = OOP_TO_OBJ (_method->literals)->data;                 \
  ip = method_base + (ipOffset);					\
  if UNCOMMON (_gst_raw_profile)                                        \
    _gst_record_profile (old_method_oop, method, ipOffset);             \
} while(0)


void
_gst_send_message_internal (OOP sendSelector, 
			    int sendArgs, 
			    OOP receiver,
			    OOP method_class)
{
  int hashIndex;
  OOP methodOOP;
  method_cache_entry * methodData;
  gst_method_context newContext;
  method_header header;

  /* hash the selector and the class of the receiver together using
     XOR.  Since both are addresses in the object table, and since
     object table entries are 2 longs in size, shift over by 3 bits
     (4 on 64-bit architectures) to remove the useless low order
     zeros.  */

  _gst_sample_counter++;
  hashIndex = METHOD_CACHE_HASH (sendSelector, method_class);
  methodData = &method_cache[hashIndex];

  if UNCOMMON (methodData->selectorOOP != sendSelector
      || methodData->startingClassOOP != method_class)
    {
      /* :-( cache miss )-: */
      if (!lookup_method (sendSelector, methodData, sendArgs, method_class))
	{
	  _gst_send_message_internal (_gst_does_not_understand_symbol, 1,
				      receiver, method_class);
	  return;
	}

      if (!IS_OOP_VERIFIED (methodData->methodOOP))
        _gst_verify_sent_method (methodData->methodOOP);
    }

  /* Note that execute_primitive_operation might invoke a call-in, and
     which might in turn modify the method cache in general and
     corrupt methodData in particular.  So, load everything before
     this can happen.  */

  header = methodData->methodHeader;
  methodOOP = methodData->methodOOP;

#ifndef OPTIMIZE
#ifdef DEBUG_CODE_FLOW
  {
#else /* !DEBUG_CODE_FLOW */
  if (header.numArgs != (unsigned) sendArgs)
    {
#endif /* !DEBUG_CODE_FLOW */
      OOP receiverClass;
      receiverClass = OOP_INT_CLASS (receiver);

      if (methodData->methodClassOOP == receiverClass)
        printf ("%O>>%O\n", receiverClass, sendSelector);
      else
        printf ("%O(%O)>>%O\n", receiverClass, methodData->methodClassOOP, sendSelector);

      if (header.numArgs != (unsigned) sendArgs)
	{
	  _gst_errorf ("invalid number of arguments %d, expecting %d",
		       sendArgs, header.numArgs);

	  abort ();
	}
    }
#endif /* !OPTIMIZE */

  if UNCOMMON (header.headerFlag)
    {
      switch (header.headerFlag)
	{
	case MTH_RETURN_SELF:
	  /* 1, return the receiver - _gst_self is already on the stack...so we leave it */
	  _gst_self_returns++;
	  return;

	case MTH_RETURN_INSTVAR:
	  {
	    int primIndex = header.primitiveIndex;
	    /* 2, return instance variable */
	    /* replace receiver with the returned instance variable */
	    SET_STACKTOP (INSTANCE_VARIABLE (receiver, primIndex));
	    _gst_inst_var_returns++;
	    return;
	  }

	case MTH_RETURN_LITERAL:
	  {
	    int primIndex = header.primitiveIndex;
	    /* 3, return literal constant */
	    /* replace receiver with the returned literal constant */
	    SET_STACKTOP (GET_METHOD_LITERALS (methodOOP)[primIndex]);
	    _gst_literal_returns++;
	    return;
	  }

	case MTH_PRIMITIVE:
	  if COMMON (!execute_primitive_operation(header.primitiveIndex,
						  sendArgs))
	    /* primitive succeeded.  Continue with the parent context */
	    return;

	  /* primitive failed.  Invoke the normal method.  */
	  last_primitive = 0;
	  break;

	case MTH_USER_DEFINED:
	  {
	    OOP argsArrayOOP = create_args_array (sendArgs);
	    (void) POP_OOP ();  /* pop the receiver */
	    PUSH_OOP (methodData->methodOOP);
	    PUSH_OOP (receiver);
	    PUSH_OOP (argsArrayOOP);
	    SEND_MESSAGE (_gst_value_with_rec_with_args_symbol, 2);
	    return;
	  }

	case MTH_NORMAL:
	case MTH_ANNOTATED:
	case MTH_UNUSED:
	default:
	  break;
	}
    }

  /* Prepare new state.  */

  newContext = activate_new_context (header.stack_depth, sendArgs);
  newContext->flags = MCF_IS_METHOD_CONTEXT;
  /* push args and temps, set sp and _gst_temporaries */
  prepare_context ((gst_context_part) newContext, sendArgs, header.numTemps);
  _gst_self = receiver;
  SET_THIS_METHOD (methodOOP, 0);

}

void
_gst_send_method (OOP methodOOP)
{
  int sendArgs;
  OOP receiver;
  method_header header;
  REGISTER (1, gst_compiled_method method);
  REGISTER (2, gst_method_context newContext);

  _gst_sample_counter++;

  if (!IS_OOP_VERIFIED (methodOOP))
    _gst_verify_sent_method (methodOOP);

  method = (gst_compiled_method) OOP_TO_OBJ (methodOOP);
  header = method->header;
  sendArgs = header.numArgs;
  receiver = STACK_AT (sendArgs);

  if UNCOMMON (header.headerFlag)
    {
      switch (header.headerFlag)
	{
	case MTH_RETURN_SELF:
	  /* 1, return the receiver - _gst_self is already on the stack...so we leave it */
	  _gst_self_returns++;
	  return;

	case MTH_RETURN_INSTVAR:
	  {
	    int primIndex = header.primitiveIndex;
	    /* 2, return instance variable */
	    /* replace receiver with the returned instance variable */
	    SET_STACKTOP (INSTANCE_VARIABLE (receiver, primIndex));
	    _gst_inst_var_returns++;
	    return;
	  }

	case MTH_RETURN_LITERAL:
	  {
	    int primIndex = header.primitiveIndex;
	    /* 3, return literal constant */
	    /* replace receiver with the returned literal constant */
	    SET_STACKTOP (GET_METHOD_LITERALS (methodOOP)[primIndex]);
	    _gst_literal_returns++;
	    return;
	  }

	case MTH_PRIMITIVE:
	  if COMMON (!execute_primitive_operation(header.primitiveIndex, 
						  sendArgs))
	    /* primitive succeeded.  Continue with the parent context */
	    return;

	  /* primitive failed.  Invoke the normal method.  */
	  last_primitive = 0;
	  break;

	case MTH_USER_DEFINED:
	  {
	    OOP argsArrayOOP = create_args_array (sendArgs);
	    (void) POP_OOP ();  /* pop the receiver */
	    PUSH_OOP (methodOOP);
	    PUSH_OOP (receiver);
	    PUSH_OOP (argsArrayOOP);
	    SEND_MESSAGE (_gst_value_with_rec_with_args_symbol, 2);
	    return;
	  }

	case MTH_NORMAL:	/* only here so that the compiler skips a range check */
	case MTH_ANNOTATED:
	case MTH_UNUSED:
	default:
	  break;
	}
    }

  /* prepare new state */
  newContext = activate_new_context (header.stack_depth, sendArgs);
  newContext->flags = MCF_IS_METHOD_CONTEXT;
  /* push args and temps, set sp and _gst_temporaries */
  prepare_context ((gst_context_part) newContext, sendArgs, header.numTemps);
  _gst_self = receiver;
  SET_THIS_METHOD (methodOOP, 0);

}


static mst_Boolean
send_block_value (int numArgs, int cull_up_to)
{
  OOP closureOOP;
  block_header header;
  REGISTER (1, gst_block_context blockContext);
  REGISTER (2, gst_block_closure closure);

  closureOOP = STACK_AT (numArgs);
  closure = (gst_block_closure) OOP_TO_OBJ (closureOOP);
  header = ((gst_compiled_block) OOP_TO_OBJ (closure->block))->header;

  /* Check numArgs.  Remove up to CULL_UP_TO extra arguments if needed.  */
  if UNCOMMON (numArgs != header.numArgs)
    {
      if (numArgs < header.numArgs || numArgs > header.numArgs + cull_up_to)
        return (true);

      POP_N_OOPS (numArgs - header.numArgs);
      numArgs = header.numArgs;
    }

  /* prepare the new state, loading data from the closure */
  /* gc might happen - so reload everything.  */
  blockContext =
    (gst_block_context) activate_new_context (header.depth, numArgs);
  closure = (gst_block_closure) OOP_TO_OBJ (closureOOP);
  blockContext->outerContext = closure->outerContext;
  /* push args and temps */
  prepare_context ((gst_context_part) blockContext, numArgs, header.numTemps);
  _gst_self = closure->receiver;
  SET_THIS_METHOD (closure->block, 0);

  return (false);
}

void
_gst_validate_method_cache_entries (void)
{
}



OOP
_gst_interpret (OOP processOOP)
{
  interp_jmp_buf jb;
  gst_callin_process process;

#ifdef LOCAL_REGS
# undef  sp
# undef  ip

#if REG_AVAILABILITY == 0
# define LOCAL_COUNTER    _gst_bytecode_counter
# define EXPORT_REGS()	  (_gst_sp = sp, _gst_ip = ip)
#else
  int LOCAL_COUNTER = 0;
# define EXPORT_REGS()	  (_gst_sp = sp, _gst_ip = ip, \
			   _gst_bytecode_counter += LOCAL_COUNTER, \
			   LOCAL_COUNTER = 0)
#endif

/* If we have a good quantity of registers, activate more caching mechanisms.  */
#if  REG_AVAILABILITY >= 2
  OOP self_cache, *temp_cache, *lit_cache;
  OOP my_nil_oop = _gst_nil_oop, my_true_oop =
    _gst_true_oop, my_false_oop = _gst_false_oop;

# define _gst_nil_oop my_nil_oop
# define _gst_true_oop my_true_oop
# define _gst_false_oop my_false_oop
# define IMPORT_REGS()	(sp = _gst_sp, ip = _gst_ip, \
  			 self_cache = _gst_self, temp_cache = _gst_temporaries, \
  			 lit_cache = _gst_literals)

#else
# define IMPORT_REGS()	(sp = _gst_sp, ip = _gst_ip)
#endif

  REGISTER (1, ip_type ip);
  REGISTER (2, OOP * sp);
  REGISTER (3, intptr_t arg);
#else /* !LOCAL_REGS */
# define EXPORT_REGS()
# define IMPORT_REGS()
#endif /* !LOCAL_REGS */

#ifdef PIPELINING
  gst_uchar b2, arg2, b4;	/* pre-fetch queue */
  void *t2;		        /* pre-decode queue */
  BRANCH_REGISTER (t);
#elif REG_AVAILABILITY >= 1
#ifdef BRANCH_REGISTER
  BRANCH_REGISTER(prefetch);
#else
  void *prefetch;
#endif
#endif /* !PIPELINING */

#include "vm.inl"

  /* Global pointers to the bytecode routines are used to interrupt the
     bytecode interpreter "from the outside" and divert it to
     monitor_byte_codes.  */
  global_normal_bytecodes = normal_byte_codes;
  global_monitored_bytecodes = monitored_byte_codes;
  dispatch_vec = normal_byte_codes;

  /* Prime the interpreter's registers.  */
  IMPORT_REGS ();

  push_jmp_buf (&jb, true, processOOP);
  if (setjmp (jb.jmpBuf) == 0)
    goto monitor_byte_codes;
  else
    goto return_value;

  /* The code blocks that follow are executed in threaded-code style.  */

monitor_byte_codes:
  SET_EXCEPT_FLAG (false);

  /* First, deal with any async signals.  */
  if (async_queue_enabled)
    empty_async_queue ();

  if UNCOMMON (time_to_preempt)
    ACTIVE_PROCESS_YIELD ();

  if UNCOMMON (!IS_NIL (switch_to_process))
    {
      EXPORT_REGS ();
      change_process_context (switch_to_process);
      IMPORT_REGS ();

      if UNCOMMON (single_step_semaphore)
        {
          _gst_async_signal (single_step_semaphore);
          single_step_semaphore = NULL;
        }
    }

  if (is_process_terminating (processOOP))
    goto return_value;

  if UNCOMMON (_gst_abort_execution)
    {
      OOP selectorOOP;
      selectorOOP = _gst_intern_string ((char *) _gst_abort_execution);
      _gst_abort_execution = NULL;
      SEND_MESSAGE (selectorOOP, 0);
      IMPORT_REGS ();
    }

  if UNCOMMON (_gst_execution_tracing)
    {
      if (verbose_exec_tracing)
	{
	  if (sp >= _gst_temporaries)
            printf ("\t  [%2td] --> %O\n",
    	        (ptrdiff_t) (sp - _gst_temporaries),
    	        STACKTOP ());
	  else
            printf ("\t  self --> %O\n", _gst_self);
	}

      printf ("%5td:", (ptrdiff_t) (ip - method_base));
      _gst_print_bytecode_name (ip, ip - method_base, _gst_literals, "");
      SET_EXCEPT_FLAG (true);
    }

  if UNCOMMON (time_to_preempt)
    set_preemption_timer ();

  FETCH_VEC (normal_byte_codes);

  /* Some more routines we need... */
lookahead_failed_true:
  PUSH_OOP (_gst_true_oop);
  DISPATCH (normal_byte_codes);

lookahead_dup_true:
  PREFETCH_VEC (true_byte_codes);
  PUSH_OOP (_gst_true_oop);
  NEXT_BC_VEC (true_byte_codes);

lookahead_failed_false:
  PUSH_OOP (_gst_false_oop);
  DISPATCH (normal_byte_codes);

lookahead_dup_false:
  PREFETCH_VEC (false_byte_codes);
  PUSH_OOP (_gst_false_oop);
  NEXT_BC_VEC (false_byte_codes);

 return_value:
  process = (gst_callin_process) OOP_TO_OBJ (processOOP);
  if (pop_jmp_buf ())
    stop_execution ();

  return (process->returnedValue);
}


/* Always use outer ip/sp outside _gst_interpret */
#ifdef LOCAL_REGS
#  define ip		_gst_ip
#  define sp		_gst_sp
#  if REG_AVAILABILITY >= 2
#    undef _gst_nil_oop
#    undef _gst_true_oop
#    undef _gst_false_oop
#  endif
#  if REG_AVAILABILITY == 0
#    undef LOCAL_COUNTER
#  endif
#endif