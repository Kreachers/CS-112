PK
     {I*���   �     package.xmlUT	 �5�W�5�Wux �e  d   <package>
  <name>GDBM</name>
  <test>
    <prereq>GDBM</prereq>
    <prereq>SUnit</prereq>
    <sunit>GDBMTest</sunit>
    <filein>gdbmtests.st</filein>
  </test>
  <module>gdbm</module>

  <filein>gdbm-c.st</filein>
  <filein>gdbm.st</filein>
</package>PK
     gwB"�	}  }  	  gdbm-c.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   GDBM declarations
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2001, 2005, 2007 Free Software Foundation, Inc.
| Written by Steve Byrne.
|
| This file is part of the GNU Smalltalk class library.
|
| The GNU Smalltalk class library is free software; you can redistribute it
| and/or modify it under the terms of the GNU Lesser General Public License
| as published by the Free Software Foundation; either version 2.1, or (at
| your option) any later version.
|
| The GNU Smalltalk class library is distributed in the hope that it will be
| useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
| General Public License for more details.
|
| You should have received a copy of the GNU Lesser General Public License
| along with the GNU Smalltalk class library; see the file COPYING.LIB.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.
|
 ======================================================================"



CObject subclass: GDBM [
    
    <shape: #word>
    <category: 'Examples-Modules'>
    <comment: nil>

    GDBM class >> open: fileName blockSize: size flags: flags mode: modeInt fatalFunc: funcAddr [
	"GDBM_FILE gdbm_open(name, block_size, flags, mode, fatal_func);"

	<category: 'C call-outs'>
	<cCall: 'gdbm_open' returning: #{GDBM}
	args: #(#string #int #int #int #cObject)>
	
    ]

    close [
	"void gdbm_close(dbf);"

	<category: 'C call-outs'>
	<cCall: 'gdbm_close' returning: #int args: #(#self)>
	
    ]

    at: key put: value flag: aFlag [
	"int gdbm_store(dbf, key, content, flag);"

	<category: 'C call-outs'>
	<cCall: 'gdbm_store' returning: #int args: #(#self #cObject #cObject #int)>
	
    ]

    at: key [
	"datum gdbm_fetch(dbf, key);"

	<category: 'C call-outs'>
	<cCall: 'gdbm_fetch' returning: #{DatumStruct} args: #(#self #cObject)>
	
    ]

    removeKey: key [
	"int gdbm_delete(dbf, key);"

	<category: 'C call-outs'>
	<cCall: 'gdbm_delete' returning: #long args: #(#self #cObject)>
	
    ]

    firstKey [
	"datum gdbm_firstkey(dbf);"

	<category: 'C call-outs'>
	<cCall: 'gdbm_firstkey' returning: #{DatumStruct} args: #(#self)>
	
    ]

    nextKey: afterDatum [
	"datum gdbm_nextkey(dbf, key);"

	<category: 'C call-outs'>
	<cCall: 'gdbm_nextkey' returning: #{DatumStruct} args: #(#self #cObject)>
	
    ]

    reorganize [
	"int gdbm_reorganize(dbf);"

	<category: 'C call-outs'>
	<cCall: 'gdbm_reorganize' returning: #int args: #(#self)>
	
    ]
]



CStruct subclass: DatumStruct [
    
    <category: 'Examples-GDBM'>
    <comment: nil>
    <declaration: #(#(#dPtr #(#ptr #char ) ) #(#dSize #int ) )>

    DatumStruct class >> fromString: aString [
	<category: 'instance creation'>
	| obj strObj len |
	obj := self new.
	len := aString size.
	obj dSize value: len.
	obj dPtr value: (aString asCData: CCharType).
	obj addToBeFinalized.
	^obj
    ]

    asString [
	<category: 'accessing'>
	| len ptr str |
	len := self dSize value.
	ptr := self dPtr value.
	str := String new: len.
	1 to: len do: [:i | str at: i put: (ptr at: i - 1)].
	^str
    ]

    free [
	<category: 'accessing'>
	self removeToBeFinalized.
	self dPtr value free.
	super free
    ]
]

PK
     gwB��O�      gdbm.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   Smalltalk wrapper to GDBM
|
|
 ======================================================================"

"======================================================================
|
| Copyright 1988,92,94,95,99,2001,2007 Free Software Foundation, Inc.
| Written by Paolo Bonzini.
|
| This file is part of the GNU Smalltalk class library.
|
| The GNU Smalltalk class library is free software; you can redistribute it
| and/or modify it under the terms of the GNU Lesser General Public License
| as published by the Free Software Foundation; either version 2.1, or (at
| your option) any later version.
|
| The GNU Smalltalk class library is distributed in the hope that it will be
| useful, but WITHOUT ANY WARRANTY; without even the implied warranty of
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Lesser
| General Public License for more details.
|
| You should have received a copy of the GNU Lesser General Public License
| along with the GNU Smalltalk class library; see the file COPYING.LIB.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.
|
 ======================================================================"



Object subclass: Database [
    | gdbm |
    
    <category: 'Examples-Modules'>
    <comment: nil>

    Database class >> read: fileName blockSize: size mode: modeInt [
	<category: 'opening'>
	^self new 
	    open: fileName
	    blockSize: size
	    flags: 0
	    mode: modeInt
    ]

    Database class >> write: fileName blockSize: size mode: modeInt [
	<category: 'opening'>
	^self new 
	    open: fileName
	    blockSize: size
	    flags: 1
	    mode: modeInt
    ]

    Database class >> writeCreate: fileName blockSize: size mode: modeInt [
	<category: 'opening'>
	^self new 
	    open: fileName
	    blockSize: size
	    flags: 2
	    mode: modeInt
    ]

    Database class >> new: fileName blockSize: size mode: modeInt [
	<category: 'opening'>
	^self new 
	    open: fileName
	    blockSize: size
	    flags: 3
	    mode: modeInt
    ]

    open: fileName blockSize: size flags: flags mode: modeInt [
	<category: 'opening'>
	self addToBeFinalized.
	gdbm := GDBM 
		    open: fileName
		    blockSize: size
		    flags: flags
		    mode: modeInt
		    fatalFunc: nil
    ]

    close [
	<category: 'closing'>
	gdbm close.
	gdbm := nil
    ]

    finalize [
	<category: 'closing'>
	gdbm isNil ifFalse: [self close]
    ]

    keyDatum: key [
	<category: 'accessing'>
	^DatumStruct fromString: key
    ]

    valueDatum: value [
	<category: 'accessing'>
	^DatumStruct fromString: value
    ]

    getKey: key [
	<category: 'accessing'>
	^key asString
    ]

    getValue: value [
	<category: 'accessing'>
	^value asString
    ]

    at: key [
	<category: 'accessing'>
	^self at: key ifAbsent: [self error: 'key not found']
    ]

    at: key ifAbsent: aBlock [
	<category: 'accessing'>
	| value datum |
	datum := self keyDatum: key.
	value := gdbm at: datum.
	^
	[value dPtr value isNil 
	    ifTrue: [aBlock value]
	    ifFalse: [self getValue: value]] 
		ensure: 
		    [value free.
		    datum free]
    ]

    at: key put: value [
	<category: 'accessing'>
	| datumValue datumKey |
	datumKey := self keyDatum: key.
	
	[datumValue := self valueDatum: value.
	gdbm 
	    at: datumKey
	    put: datumValue
	    flag: 1.
	datumValue free] 
		ensure: [datumKey free].
	^value
    ]

    includesKey: key [
	<category: 'accessing'>
	| value datum |
	datum := self keyDatum: key.
	value := gdbm at: datum.
	^[value dPtr value notNil] ensure: 
		[value free.
		datum free]
    ]

    removeKey: key [
	<category: 'accessing'>
	^self removeKey: key ifAbsent: [self error: 'key not found']
    ]

    removeKey: key ifAbsent: aBlock [
	<category: 'accessing'>
	| datumKey present |
	datumKey := self keyDatum: key.
	present := (gdbm removeKey: datumKey) == 0.
	datumKey free.
	^present ifTrue: [aBlock value] ifFalse: [key]
    ]

    reorganize [
	<category: 'database operations'>
	gdbm reorganize
    ]

    first [
	<category: 'enumerating'>
	| datumKey result |
	datumKey := gdbm firstKey.
	^[self getKey: datumKey] ensure: [datumKey free]
    ]

    keysAndValuesDo: aBlock [
	<category: 'enumerating'>
	| item value newItem |
	item := gdbm firstKey.
	
	[[item dPtr value notNil] whileTrue: 
		[value := gdbm at: item.
		[aBlock value: (self getKey: item) value: (self getValue: value)] 
		    ensure: [value free].
		newItem := gdbm nextKey: item.
		item free.
		item := newItem]] 
		ensure: [item free]
    ]

    keysDo: aBlock [
	<category: 'enumerating'>
	| item newItem |
	item := gdbm firstKey.
	
	[[item dPtr value notNil] whileTrue: 
		[aBlock value: (self getKey: item).
		newItem := gdbm nextKey: item.
		item free.
		item := newItem]] 
		ensure: [item free]
    ]

    after: key [
	<category: 'enumerating'>
	| datumKey datumNext result |
	datumKey := self keyDatum: key.
	datumNext := gdbm nextKey: datumKey.
	^[datumNext dPtr value isNil ifTrue: [nil] ifFalse: [self getKey: datumNext]] 
	    ensure: 
		[datumNext free.
		datumKey free]
    ]
]

PK
     gwB��z�  �    gdbmtests.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   GDBM tests declarations
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2007 Free Software Foundation, Inc.
| Written by Paolo Bonzini
|
| This file is part of GNU Smalltalk.
|
| GNU Smalltalk is free software; you can redistribute it and/or modify it
| under the terms of the GNU General Public License as published by the Free
| Software Foundation; either version 2, or (at your option) any later version.
| 
| GNU Smalltalk is distributed in the hope that it will be useful, but WITHOUT
| ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS
| FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more
| details.
| 
| You should have received a copy of the GNU General Public License along with
| GNU Smalltalk; see the file COPYING.  If not, write to the Free Software
| Foundation, 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301, USA.  
|
 ======================================================================"



TestCase subclass: GDBMTest [
    
    <comment: nil>
    <category: 'Examples-Modules'>

    data [
	<category: 'creating test files'>
	^
	{'fred' -> 'Fred Flintstone'.
	'wilma' -> 'Wilma Flintstone'}
    ]

    setUp [
	<category: 'creating test files'>
	self cInterfaceSetup.
	self stInterfaceSetup
    ]

    tearDown [
	<category: 'creating test files'>
	(File exists: 'test-c.gdbm') ifTrue: [File remove: 'test-c.gdbm'].
	(File exists: 'test-st.gdbm') ifTrue: [File remove: 'test-st.gdbm']
    ]

    cInterfaceSetup [
	<category: 'creating test files'>
	| database key value |
	(File exists: 'test-c.gdbm') ifTrue: [File remove: 'test-c.gdbm'].
	database := GDBM 
		    open: 'test-c.gdbm'
		    blockSize: 1024
		    flags: 2
		    mode: 438
		    fatalFunc: nil.	"write/create"
	self data do: 
		[:each | 
		key := DatumStruct fromString: each key.
		value := DatumStruct fromString: each value.
		database 
		    at: key
		    put: value
		    flag: 1.	"replace"
		key free.
		value free].
	database close
    ]

    stInterfaceSetup [
	<category: 'creating test files'>
	| database |
	(File exists: 'test-st.gdbm') ifTrue: [File remove: 'test-st.gdbm'].
	database := Database 
		    writeCreate: 'test-st.gdbm'
		    blockSize: 1024
		    mode: 438.
	self data do: [:each | database at: each key put: each value].
	database close
    ]

    doTestCInterfaceAt: name [
	<category: 'testing (low-level)'>
	| database key value |
	database := GDBM 
		    open: name
		    blockSize: 1024
		    flags: 0
		    mode: 438
		    fatalFunc: nil.	"read"
	value := database at: (DatumStruct fromString: 'wilma').
	self assert: value asString = 'Wilma Flintstone'.
	value free.
	value := database at: (DatumStruct fromString: 'barney').
	self assert: value dPtr value isNil.
	self assert: value asString = ''.
	value free.
	database close
    ]

    doTestCInterfaceWalkKeys: name [
	<category: 'testing (low-level)'>
	| database newItem item value result |
	database := GDBM 
		    open: name
		    blockSize: 1024
		    flags: 0
		    mode: 438
		    fatalFunc: nil.	"read"
	result := SortedCollection sortBlock: [:a :b | a key <= b key].
	item := database firstKey.
	[item dPtr value notNil] whileTrue: 
		[value := database at: item.
		result add: item asString -> value asString.
		value free.
		newItem := database nextKey: item.
		item free.
		item := newItem].
	item free.
	database close.
	self assert: (result at: 1) = ('fred' -> 'Fred Flintstone').
	self assert: (result at: 2) = ('wilma' -> 'Wilma Flintstone')
    ]

    doTestCInterfaceAfter: name [
	<category: 'testing (low-level)'>
	| database newItem item value result |
	database := GDBM 
		    open: name
		    blockSize: 1024
		    flags: 0
		    mode: 438
		    fatalFunc: nil.	"read"
	result := OrderedCollection new.
	item := database firstKey.
	[item dPtr value notNil] whileTrue: 
		[result add: item asString -> nil.
		newItem := database nextKey: item.
		result last 
		    value: (newItem dPtr value ifNotNil: [:ignored | newItem asString]).
		item free.
		item := newItem].
	item free.
	database close.
	self assert: (result at: 1) value = (result at: 2) key.
	self assert: (result at: 2) value isNil
    ]

    doTestAt: name [
	<category: 'testing (high-level)'>
	| database |
	database := Database 
		    read: name
		    blockSize: 1024
		    mode: 438.
	self assert: (database at: 'wilma') = 'Wilma Flintstone'.
	self assert: (database at: 'barney' ifAbsent: [nil]) isNil.
	database close
    ]

    doTestKeysAndValuesDo: name [
	<category: 'testing (high-level)'>
	| database newItem item value result |
	database := Database 
		    read: name
		    blockSize: 1024
		    mode: 438.
	result := SortedCollection sortBlock: [:a :b | a key <= b key].
	database keysAndValuesDo: [:item :value | result add: item -> value].
	database close.
	self assert: (result at: 1) = ('fred' -> 'Fred Flintstone').
	self assert: (result at: 2) = ('wilma' -> 'Wilma Flintstone')
    ]

    doTestAfter: name [
	<category: 'testing (high-level)'>
	| database newItem item value result |
	database := Database 
		    read: name
		    blockSize: 1024
		    mode: 438.
	result := OrderedCollection new.
	database 
	    keysAndValuesDo: [:item :value | result add: item -> (database after: item)].
	database close.
	self assert: (result at: 1) value = (result at: 2) key.
	self assert: (result at: 2) value isNil
    ]

    testCInterfaceAt [
	<category: 'testing'>
	self doTestCInterfaceAt: 'test-c.gdbm'.
	self doTestCInterfaceAt: 'test-st.gdbm'
    ]

    testCInterfaceWalkKeys [
	<category: 'testing'>
	self doTestCInterfaceWalkKeys: 'test-c.gdbm'.
	self doTestCInterfaceWalkKeys: 'test-st.gdbm'
    ]

    testCInterfaceAfter [
	<category: 'testing'>
	self doTestCInterfaceAfter: 'test-c.gdbm'.
	self doTestCInterfaceAfter: 'test-st.gdbm'
    ]

    testAt [
	<category: 'testing'>
	self doTestAt: 'test-c.gdbm'.
	self doTestAt: 'test-st.gdbm'
    ]

    testKeysAndValuesDo [
	<category: 'testing'>
	self doTestKeysAndValuesDo: 'test-c.gdbm'.
	self doTestKeysAndValuesDo: 'test-st.gdbm'
    ]

    testAfter [
	<category: 'testing'>
	self doTestAfter: 'test-c.gdbm'.
	self doTestAfter: 'test-st.gdbm'
    ]
]

PK
     {I*���   �             ��    package.xmlUT �5�Wux �e  d   PK
     gwB"�	}  }  	          ��D  gdbm-c.stUT �NQux �e  d   PK
     gwB��O�              ��  gdbm.stUT �NQux �e  d   PK
     gwB��z�  �            ��c#  gdbmtests.stUT �NQux �e  d   PK      ?  p<    