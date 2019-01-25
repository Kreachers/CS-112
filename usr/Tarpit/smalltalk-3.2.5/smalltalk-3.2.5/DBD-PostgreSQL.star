PK
     {IG�2I�  �    package.xmlUT	 �5�W�5�Wux �e  d   <package>
  <name>DBD-PostgreSQL</name>
  <namespace>DBI.PostgreSQL</namespace>
  <prereq>DBI</prereq>
  <library>libpq</library>

  <filein>Connection.st</filein>
  <filein>ResultSet.st</filein>
  <filein>Row.st</filein>
  <filein>ColumnInfo.st</filein>
  <filein>Statement.st</filein>
  <filein>Table.st</filein>
  <filein>TableColumnInfo.st</filein>
  <filein>FieldConverter.st</filein>
</package>PK
     gwB ���  �    Connection.stUT	 �NQ�NQux �e  d   "=====================================================================
|
|   PosgreSQL DBI driver - Connection class and related classes
|
|
 ======================================================================"

"======================================================================
|
| Written by Mike Anderson gnu-smalltalk@gingerbread.plus.com 2006
| Based on PostgreSQL interface by Thomas Braun shin@shin.homelinux.net
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
 ======================================================================
"



Connection subclass: PGConnection [
    | handle |
    
    <comment: nil>
    <category: 'DBI-Drivers'>

    PGConnection class >> driverName [
	<category: 'initialization'>
	^'PostgreSQL'
    ]

    PGConnection class >> fieldConverterClass [
	<category: 'initialization'>
	^PGFieldConverter
    ]

    ConnectionStatus := #(#CONNECTION_OK
	#CONNECTION_BAD
	#CONNECTION_STARTED
	#CONNECTION_MADE
	#CONNECTION_AWAITING_RESPONSE
	#CONNECTION_AUTH_OK
	#CONNECTION_SETENV
	#CONNECTION_SSL_STARTUP
	#CONNECTION_NEEDED).

    PGConnection class >> connectionStatus: aCode [
	<category: 'constants'>
	^ConnectionStatus at: aCode + 1
    ]

    PGConnection class >> unrecognizedParameters [
	<category: 'private'>

	"These are the synonymous parameters which our superclass adds and
	 PQconnectdb does not understand"

	^#('db' 'database' 'hostname').
    ]

    PGConnection class >> paramConnect: aParams user: aUserName password: aPassword [
	"Normally you would use Connection>>connect:user:password: with a DSN
	 specifying the appropriate driver string.
	 Note that aUserName and aPassword may be nil; for Postgres, the username
	 defaults to the OS user if not supplied."

	<category: 'instance creation'>
	"Assemble a connection string in the right format"

	| connStr connParams handle conn connOK |
	connParams := OrderedCollection new.
	aParams keysAndValuesDo: [:k :v |
	    (self unrecognizedParameters includes: k)
		ifFalse: [connParams add: k , '=' , v]].

	aUserName notNil ifTrue: [connParams add: 'user=' , aUserName].
	aPassword notNil ifTrue: [connParams add: 'password=' , aPassword].
	connStr := connParams inject: '' into: [ :a :b | a, ' ', b ].
	handle := PQConnection connect: connStr.
	connOK := self connectionStatus: handle status.
	connOK == #CONNECTION_OK 
	    ifFalse: 
		[handle finish.
		self error: 'Connection failed (' , connOK , ')'].
	^(self new)
	    handle: handle;
	    yourself
    ]

    handle: aCObject [
	<category: 'private'>
	handle := aCObject.
	self addToBeFinalized
    ]

    finalize [
	<category: 'private'>
	self close
    ]

    do: aSQLQuery [
	<category: 'querying'>
        ^(self prepare: aSQLQuery) execute
    ]

    select: aSQLQuery [
	<category: 'querying'>
        ^(self prepare: aSQLQuery) execute
    ]

    prepare: aSQLQuery [
	<category: 'querying'>
        ^(PGStatement on: self)
            dbHandle: handle;
            queryString: aSQLQuery.
    ]

    close [
	<category: 'implementations'>
	handle ifNotNil: [
	    self removeToBeFinalized.
	    handle finish.
	    handle := nil].
    ]

    beginTransaction [
	<category: 'implementations'>
	^self do: 'BEGIN'
    ]

    commitTransaction [
	<category: 'implementations'>
	^self do: 'COMMIT'
    ]

    rollbackTransaction [
	<category: 'implementations'>
	^self do: 'ROLLBACK'
    ]

    database [
	<category: 'accessing'>
	^handle database
    ]

    primTableAt: aString ifAbsent: aBlock [
	| table |
	table := PGTable name: aString connection: self.
	table columnsArray isEmpty ifTrue: [ ^aBlock value ].
	^table
    ]
]


CObject subclass: PQConnection [
    <category: 'private'>

    "Connections"
    PQConnection class >> connect: aString [
        <cCall: 'PQconnectdb' returning: #{PQConnection} args: #(#string)>
    ]
    status [
        <cCall: 'PQstatus' returning: #int args: #(#self)>
    ]

    database [
        <cCall: 'PQdb' returning: #string args: #(#self)>
    ]

    errorMessage [
        <cCall: 'PQerrorMessage' returning: #string args: #(#self)>
    ]

    finish [
        <cCall: 'PQfinish' returning: #void args: #(#self)>
    ]

    "Executing SQL"
    exec: aSqlStatement [
        <cCall: 'PQexec' returning: #{PQResultSet} args: #(#self #string)>
    ]

    "Executing SQL with params"
    exec: aSqlStatement with: params [
        | par |

        "Convert the params into an array of C-Strings."
        ^[par := CStringType gcNew: params size.
        params keysAndValuesDo: [:i :each |
            par at: i - 1 put: each].

        self
            exec_params:aSqlStatement
            n_par: params size
            types: nil
            values: par
            lengths: nil
            formats: nil
            res: 0
        ] ensure: [
            "Free the memory we allocated"

            par isNil ifFalse: [
                0 to: params size - 1 do: [:i |
                    ((par + i) derefAt: 0 type: CObjectType) free ] ].
        ]
    ]

    exec_params: cmd n_par: parAms types: types values: vals lengths: l formats: f res: r [
        <category: 'private'>
        <cCall: 'PQexecParams' returning: #{PQResultSet}
            args: #(#self #string #int #cObject #cObject #cObject #cObject #int)>
    ]
]


PK
     gwBX���+  +    ResultSet.stUT	 �NQ�NQux �e  d   "=====================================================================
|
|   PosgreSQL DBI driver - ResultSet class
|
|
 ======================================================================"

"======================================================================
|
| Written by Mike Anderson gnu-smalltalk@gingerbread.plus.com 2006
| Based on PostgreSQL interface by Thomas Braun shin@shin.homelinux.net
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
 ======================================================================
"



ResultSet subclass: PGResultSet [
    | handle index rowCount columns columnsArray |
    
    <comment: nil>
    <category: 'DBI-Drivers'>

    PGResultSet class >> new: aCObject [
	<category: 'private'>
	^(self basicNew)
	    handle: aCObject;
	    yourself
    ]

    ResultStatus := #(#PGRES_EMPTY_QUERY
	#PGRES_COMMAND_OK
	#PGRES_TUPLES_OK
	#PGRES_COPY_OUT
	#PGRES_COPY_IN
	#PGRES_BAD_RESPONSE
	#PGRES_NONFATAL_ERROR
	#PGRES_FATAL_ERROR).

    PGResultSet class >> resultStatus: aCode [
	<category: 'constants'>
	^ResultStatus at: aCode + 1
    ]

    handle: aCObject [
	<category: 'private'>
	handle := aCObject.
	index := 0.
	rowCount := nil.
	columns := nil.
	self addToBeFinalized
    ]

    finalize [
	<category: 'private'>
	self primClear
    ]

    next [
	<category: 'cursor access'>
	| r |
	self atEnd ifTrue: [self error: 'No more rows'].
	"FIXME - This could be neater"
	r := PGRow in: self at: index.
	index := index + 1.
	^r
    ]

    atEnd [
	<category: 'cursor access'>
	^index >= self rowCount
    ]

    checkStatusForDo [
	<category: 'private'>
	(#(#PGRES_COMMAND_OK #PGRES_TUPLES_OK #PGRES_EMPTY_QUERY) 
	    includes: self resultStatus) ifFalse: [self error: self errorMessage]
    ]

    checkStatusForSelect [
	<category: 'private'>
	| stat |
	stat := self resultStatus.
	stat = #PGRES_TUPLES_OK 
	    ifFalse: 
		[| msg |
		stat = #PGRES_EMPTY_QUERY 
		    ifTrue: [self error: 'Empty query - no result set'].
		stat = #PGRES_COMMAND_OK 
		    ifTrue: [self error: 'Not a SELECT - no result set'].
		msg := self errorMessage.
		msg isEmpty ifTrue: [self error: stat].
		self error: msg]
    ]

    rawValueAtRow: aRowNum column: aColNum [
	"Answer a given result value at row aRowNum and column aColNum.
	 Both values 0-based."

	<category: 'private'>
	| v |
	v := handle
		    row: aRowNum
		    column: aColNum - 1.
	(v isEmpty and: 
		[(handle
		    isNullRow: aRowNum
		    column: aColNum - 1) = 1]) 
	    ifTrue: [v := nil].
	^v
    ]

    valueAtRow: aRowNum column: aColNum [
	<category: 'private'>
	^PGColumnInfo convert: (self rawValueAtRow: aRowNum column: aColNum)
	    type: (self columnsArray at: aColNum) type
    ]

    isSelect [
	<category: 'accessing'>
	^self resultStatus = #PGRES_TUPLES_OK
    ]

    isDML [
	<category: 'accessing'>
	^self resultStatus = #PGRES_COMMAND_OK
    ]

    position [
        <category: 'cursor access'>
        ^index
    ]

    position: anInteger [
        <category: 'cursor access'>
        (anInteger between: 0 and: self size)
            ifTrue: [ index := anInteger ] 
            ifFalse: [ SystemExceptions.IndexOutOfRange signalOn: self withIndex: anInteger ].
        ^index
    ]

    rowCount [
	<category: 'accessing'>
	self isSelect ifFalse: [super rowCount].
	rowCount isNil ifTrue: [rowCount := handle numTuples].
	^rowCount
    ]

    rowsAffected [
	<category: 'accessing'>
	self isDML ifFalse: [super rowsAffected].
	^handle rowsAffected asInteger
    ]

    columnsArray [
	<category: 'accessing'>
	columnsArray isNil 
	    ifTrue: 
		[| n |
		n := handle numFields.
		columnsArray := Array new: n.
		1 to: n do: [:i | columnsArray at: i put: (PGColumnInfo in: self at: i)]].
	^columnsArray
    ]

    columns [
	<category: 'accessing'>
	columns isNil 
	    ifTrue: 
		[| n |
		columns := LookupTable new: self columnsArray size.
		columnsArray do: [:col | columns at: col name put: col]].
	^columns
    ]

    columnNames [
	"Answer the names of the columns in this result set."

	<category: 'accessing'>
	^self columnsArray collect: [:col | col name]
    ]

    columnAt: aIndex [
	"Answer the name of a given column."

	<category: 'accessing'>
	^handle fieldName: aIndex - 1
    ]

    columnCount [
	"Answer the number of columns in the result set."

	<category: 'accessing'>
	^handle numFields
    ]

    rows [
	"This is slightly more efficient than the default method."

	<category: 'accessing'>
	| r n |
	n := self rowCount.
	r := WriteStream on: (Array new: n).
	0 to: n - 1 do: [:i | r nextPut: (PGRow in: self at: i)].
	^r contents
    ]

    resultStatus [
	"Answer the symbolic execution status."

	<category: 'PG specific'>
	^self class resultStatus: handle status
    ]

    errorMessage [
	<category: 'PG specific'>
	^handle errorMessage
    ]

    primClear [
	<category: 'PG specific'>
	handle ifNotNil: [
		handle clear.
		handle := nil]
    ]

    release [
	"Clear the result set."

	<category: 'result set'>
	self removeToBeFinalized.
	self primClear
    ]

    columnTypeAt: aIndex [
	"Used by PGColumnInfo. Prefer (columns at: aName) type or (columnsArray at: aIndex) type"

	<category: 'PG specific'>
	^PGColumnInfo 
	    typeFromOid: (handle fieldType: aIndex - 1)
    ]

    columnSizeAt: aIndex [
	"Used by PGColumnInfo. Prefer (columns at: aName) size or (columnsArray at: aIndex) size"

	<category: 'PG specific'>
	^handle fieldSize: aIndex - 1
    ]
]


CObject subclass: PQResultSet [
    <category: 'private'>

    "Results"
    status [
        <cCall: 'PQresultStatus' returning: #int args: #( #self)>
    ]

    errorMessage [
        <cCall: 'PQresultErrorMessage' returning: #string args: #( #self)>
    ]

    clear [
        <cCall: 'PQclear' returning: #void args: #( #self)>
    ]

    "Result sets"
    numTuples [
        <cCall: 'PQntuples' returning: #int args: #( #self)>
    ]

    row: aRowNum column: aColNum [
        <cCall: 'PQgetvalue' returning: #string args: #( #self #int #int)>
    ]

    isNullRow: aRowNum column: aColNum [
        <cCall: 'PQgetisnull' returning: #int args: #( #self #int #int)>
    ]

    "DML results"
    rowsAffected [
        <cCall: 'PQcmdTuples' returning: #string args: #( #self)>
    ]
	
    lastOid [
        <cCall: 'PQoidValue' returning: #uInt args: #( #self)>
    ]

    "Column info"
    numFields [
        <cCall: 'PQnfields' returning: #int args: #( #self)>
    ]

    fieldName: aColNum [
        <cCall: 'PQfname' returning: #string args: #( #self #int)>
    ]

    fieldIsBinary: aColNum [
        <cCall: 'PQfformat' returning: #int args: #( #self #int)>
    ]
    
    fieldType: aColNum [
        <cCall: 'PQftype' returning: #uInt "Oid" args: #( #self #int)>
    ]

    fieldMod: aColNum [
        <cCall: 'PQfmod' returning: #int "eg. precision or size" args: #( #self #int)>
    ]

    fieldSize: aColNum [
        <cCall: 'PQfsize' returning: #int args: #( #self #int)>
    ]

]

PK
     gwB!�V  V    Row.stUT	 �NQ�NQux �e  d   "=====================================================================
|
|   PosgreSQL DBI driver - Row class
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2006 Mike Anderson
| Copyright 2007, 2008 Free Software Foundation, Inc.
|
| Written by Mike Anderson
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
 ======================================================================
"



Row subclass: PGRow [
    | index |
    
    <comment: nil>
    <category: 'DBI-Drivers'>

    PGRow class >> in: aPGResultSet at: aIndex [
	<category: 'instance creation'>
	^self new
	    resultSet: aPGResultSet;
	    index: aIndex
    ]

    index: aIndex [
	<category: 'initialization'>
	index := aIndex
    ]

    at: aColumnName [
	<category: 'accessing'>
	^resultSet valueAtRow: index
	    column: (resultSet columns at: aColumnName) index
    ]

    atIndex: aColumnIndex [
	<category: 'accessing'>
	^resultSet valueAtRow: index column: aColumnIndex
    ]

    raw: aColumnName [
	<category: 'PG specific'>
	^resultSet rawValueAtRow: index
	    column: (resultSet columns at: aColumnName) index
    ]

    rawAtIndex: aColumnIndex [
	<category: 'PG specific'>
	^resultSet rawValueAtRow: index column: aColumnIndex
    ]
]

PK
     gwBc�*��  �    ColumnInfo.stUT	 �NQ�NQux �e  d   "=====================================================================
|
|   PosgreSQL DBI driver - PGColumnInfo class
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2006 Mike Anderson
| Copyright 2007, 2008 Free Software Foundation, Inc.
|
| Written by Mike Anderson
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
 ======================================================================
"



ColumnInfo subclass: PGColumnInfo [
    | resultSet index cname ctype csize |
    
    <comment: nil>
    <category: 'DBI-Framework'>

    TypeNames := nil.
    TypeConversions := nil.

    PGColumnInfo class >> in: aResultSet at: aIndex [
	<category: 'instance creation'>
	^self new in: aResultSet at: aIndex
    ]

    PGColumnInfo class >> convertBool: aRaw [
	<category: 'type conversions'>
	^#(true false) at: ('tf' indexOf: (aRaw at: 1) ifAbsent: [^nil])
    ]

    PGColumnInfo class >> convertNumber: aRaw [
	<category: 'type conversions'>
	^Number readFrom: (ReadStream on: aRaw)
    ]

    PGColumnInfo class >> convertPoint: aRaw [
	<category: 'type conversions'>
	^aRaw	"FIXME"
    ]

    PGColumnInfo class >> convertDate: aRaw [
	<category: 'type conversions'>
	^Date readFrom: (ReadStream on: aRaw)
    ]

    PGColumnInfo class >> convertTime: aRaw [
	<category: 'type conversions'>
	^Time readFrom: (ReadStream on: aRaw)
    ]

    PGColumnInfo class >> convertDateTime: aRaw [
	<category: 'type conversions'>
	^DateTime readFrom: (ReadStream on: aRaw)
    ]

    PGColumnInfo class >> convertTimeInterval: aRaw [
	<category: 'type conversions'>
	^aRaw	"FIXME"
    ]

    PGColumnInfo class >> initTypes [
	"Generated by extract_types.st; conversion routines added manually."

	<category: 'type conversions'>
	TypeNames := LookupTable new.
	TypeConversions := LookupTable new.
	#(#(#bool 16 #convertBool:)
		"boolean, 'true'/'false'"
	  #(#bytea 17)
		"variable-length string, binary values escaped"
	  #(#char 18)
		"single character"
	  #(#name 19)
		"63-character type for storing system identifiers"
	  #(#int8 20 #convertNumber:)
		"~18 digit integer, 8-byte storage"
	  #(#int2 21 #convertNumber:)
		"-32 thousand to 32 thousand, 2-byte storage"
	  #(#int2vector 22 #convertNumber:)
		"array of INDEX_MAX_KEYS int2 integers, used in system tables"
	  #(#int4 23 #convertNumber:)
		"-2 billion to 2 billion integer, 4-byte storage"
	  #(#regproc 24)
		"registered procedure"
	  #(#text 25)
		"variable-length string, no limit specified"
	  #(#oid 26 #convertNumber:)
		"object identifier(oid), maximum 4 billion"
	  #(#tid 27)
		"(Block, offset), physical location of tuple"
	  #(#xid 28 #convertNumber:)
		"transaction id"
	  #(#cid 29)
		"command identifier type, sequence in transaction id"
	  #(#oidvector 30)
		"array of INDEX_MAX_KEYS oids, used in system tables"
	  #(#smgr 210)
		"storage manager"
	  #(#point 600 #convertPoint:)
		"geometric point '(x, y)'"
	  #(#lseg 601)
		"geometric line segment '(pt1,pt2)'"
	  #(#path 602)
		"geometric path '(pt1,...)'"
	  #(#box 603)
		"geometric box '(lower left,upper right)'"
	  #(#polygon 604)
		"geometric polygon '(pt1,...)'"
	  #(#line 628)
		"geometric line (not implemented)'"
	  #(#float4 700 #convertNumber:)
		"single-precision floating point number, 4-byte storage"
	  #(#float8 701 #convertNumber:)
		"double-precision floating point number, 8-byte storage"
	  #(#abstime 702)
		"absolute, limited-range date and time (Unix system time)"
	  #(#reltime 703)
		"relative, limited-range time interval (Unix delta time)"
	  #(#tinterval 704)
		"(abstime,abstime), time interval"
	  #(#unknown 705)
		"geometric circle '(center,radius)'"
	  #(#circle 718)
		"monetary amounts, $d,ddd.cc"
	  #(#money 790 #convertNumber:)
		"XX:XX:XX:XX:XX:XX, MAC address"
	  #(#macaddr 829)
		"IP address/netmask, host address, netmask optional"
	  #(#inet 869)
		"network IP address/netmask, network address"
	  #(#cidr 650)

	  #(#aclitem 1033)
		"access control list"
	  #(#bpchar 1042)
		"char(length), blank-padded string, fixed storage length"
	  #(#varchar 1043)
		"varchar(length), non-blank-padded string, variable storage length"
	  #(#date 1082 #convertDate:)
		"ANSI SQL date"
	  #(#time 1083 #convertTime:)
		"hh:mm:ss, ANSI SQL time"
	  #(#timestamp 1114 #convertDateTime:)
		"date and time"
	  #(#timestamptz 1184 #convertDateTime:)
		"date and time with time zone"
	  #(#interval 1186 #convertTimeInterval:)
		"@ <number> <units>, time interval"
	  #(#timetz 1266 #convertTime:)
		"hh:mm:ss, ANSI SQL time"
	  #(#bit 1560)
		"fixed-length bit string"
	  #(#varbit 1562)
		"variable-length bit string"
	  #(#numeric 1700 #convertNumber:)
		"numeric(precision, decimal), arbitrary precision number"
	  #(#refcursor 1790)
		"reference cursor (portal name)"
	  #(#regprocedure 2202)
		"registered procedure (with args)"
	  #(#regoper 2203)
		"registered operator"
	  #(#regoperator 2204)
		"registered operator (with args)"
	  #(#regclass 2205)
		"registered class"
	  #(#regtype 2206)) 
		"registered type"
	    do: 
		[:a | 
		TypeNames at: a second put: a first.
		a size > 2 ifTrue: [TypeConversions at: a first put: a third]]
    ]

    PGColumnInfo class >> printTypeNames [
	<category: 'type conversions'>
	TypeNames keysAndValuesDo: 
		[:k :v | 
		(Transcript << v << ' ')
		    << k;
		    nl]
    ]

    PGColumnInfo class >> typeFromOid: aOid [
	<category: 'type conversions'>
	^TypeNames at: aOid ifAbsent: ['#' , aOid printString]
    ]

    PGColumnInfo class >> convert: aRaw type: aType [
	<category: 'type conversions'>
	aRaw isNil ifFalse: [
		TypeConversions at: aType ifPresent: [:sel | ^self perform: sel with: aRaw]].
	^aRaw
    ]

    in: aResultSet at: aIndex [
	<category: 'initialization'>
	resultSet := aResultSet.
	index := aIndex
    ]

    name [
	<category: 'accessing'>
	cname isNil ifTrue: [cname := resultSet columnAt: index].
	^cname
    ]

    index [
	<category: 'accessing'>
	^index
    ]

    type [
	<category: 'accessing'>
	ctype isNil ifTrue: [ctype := resultSet columnTypeAt: index].
	^ctype
    ]

    size [
	<category: 'accessing'>
	csize isNil ifTrue: [csize := resultSet columnSizeAt: index].
	^csize
    ]
]



Eval [
    PGColumnInfo initTypes
]
PK
     gwB%sD��  �    Statement.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   PostgreSQL bindings, Statement class
|
|
 ======================================================================"


"======================================================================
|
| Copyright 2011 Free Software Foundation, Inc.
| Written by Holger Hans Peter Freyther
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
 ======================================================================
"


Statement subclass: PGStatement [
    | dbHandle queryString isSelect |

    <category: 'DBI-Drivers'>
    <comment: 'I represent a Postgres prepared statement. Or actually right
now the ability to execute commands with binding.'>

    SelectQueries := #('EXPLAIN' 'SELECT') asSet.

    dbHandle: aHandle [
        <category: 'private'>
        dbHandle := aHandle.
    ]

    queryString [
        <category: 'accessing'>
        ^queryString
    ]

    queryString: aSQLQuery [
        <category: 'accessing'>
        "In PostgreSQL one can use $1 for binding parameters with the
         executeWithAll:. The parameters must be all strings."
        queryString := aSQLQuery.
    ]

    isSelect [
        <category: 'accessing'>
        isSelect isNil
            ifTrue: [isSelect := SelectQueries includes: (self class getCommand: queryString)].
        ^isSelect
    ]

    checkResult: aRes [
        <category: 'private'>
        self isSelect
            ifTrue:  [aRes checkStatusForSelect]
            ifFalse: [aRes checkStatusForDo].
        ^ aRes
    ]

    execute [
        <category: 'querying'>
        | res |
        res := PGResultSet new: (dbHandle exec: queryString).
        ^ self checkResult: res.
    ]

    executeWithAll: params [
        | res strings |
        "In PostgreSQL one can use $1 for binding parameters with the
         executeWithAll:. The parameters must be all strings."
        strings := params collect: [ :each |
            each isString ifTrue: [each]
                ifFalse: [self connection fieldConverter printString: each]].

        res := PGResultSet new: (dbHandle exec: queryString with: strings).
        ^ self checkResult: res.
    ]
]
PK
     gwB�|�k-  -    Table.stUT	 �NQ�NQux �e  d   "=====================================================================
|
|   PosgreSQL DBI driver - Table class
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2008 Free Software Foundation, Inc.
| Written by Paolo Bonzini
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
 ======================================================================
"



Table subclass: PGTable [
    
    <category: 'DBD-PostgreSQL'>
    <comment: nil>

    | columnsArray |

    columnsArray [
	"Answer a Dictionary of column name -> ColumnInfo pairs (abstract)."
	| query resultSet |
	columnsArray isNil ifTrue: [
	    query := 'select column_name, data_type, character_maximum_length,
	        numeric_precision, numeric_precision_radix, numeric_scale,
	        is_nullable, ordinal_position
		from information_schema.columns
		where table_schema = current_schema and table_name = %1
                and table_catalog = %2
		order by ordinal_position' % {
		    self name printString. self connection database printString }.
	    resultSet := self connection select: query.
	    columnsArray := resultSet rows
	        collect: [ :row | PGTableColumnInfo from: row ] ].
	^columnsArray
    ]
]
PK
     gwB'R���	  �	    TableColumnInfo.stUT	 �NQ�NQux �e  d   "=====================================================================
|
|   PosgreSQL DBI driver - TableColumnInfo class
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2008 Free Software Foundation, Inc.
| Written by Paolo Bonzini
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
 ======================================================================
"



ColumnInfo subclass: PGTableColumnInfo [
    
    <category: 'DBD-PostgreSQL'>
    <comment: nil>
    | name type size nullable index |

    PGTableColumnInfo class >> from: aRow [
	^self new initializeFrom: aRow
    ]

    initializeFrom: aRow [
	| prec radix scale |
	name := aRow atIndex: 1.
	type := aRow atIndex: 2.
	size := aRow atIndex: 3.
	prec := aRow atIndex: 4.
	radix := aRow atIndex: 5.
	scale := aRow atIndex: 6.
	nullable := (aRow atIndex: 7) = 'YES'.
	index := aRow atIndex: 8.

	radix = 2 ifTrue: [
	    prec := (prec / 3.32192809) ceiling.
	    scale := (scale / 3.32192809) ceiling ].

	size isNil
	    ifTrue: [
		scale isNil
		    ifFalse: [
			size := prec + scale.
			type := '%1(%2,%3)' % {type. prec. scale } ]
		    ifTrue: [ size := prec ] ]
    ]

    name [
	"Return the name of the column."
	<category: 'accessing'>
	^name
    ]

    index [
	"Return the 1-based index of the column in the result set."
	<category: 'accessing'>
	^index
    ]

    isNullable [
	"Return whether the column can be NULL."
	<category: 'accessing'>
	^nullable
    ]

    type [
	"Return a string containing the type of the column."
	<category: 'accessing'>
	^type
    ]

    size [
	"Return the size of the column."
	<category: 'accessing'>
	^size
    ]
]
PK
     gwB,Po*�  �    FieldConverter.stUT	 �NQ�NQux �e  d   "=====================================================================
|
|   PosgreSQL DBI driver - FieldConverter class
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2008, 2009 Free Software Foundation, Inc.
| Written by Paolo Bonzini
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
 ======================================================================
"


FieldConverter subclass: PGFieldConverter [
    
    <category: 'DBD-PostgreSQL'>
    <comment: nil>

    writeBoolean: aBoolean on: aStream [
        <category: 'converting-smalltalk'>
        aStream nextPut: $'.
        aStream nextPut: (aBoolean ifTrue: [ $t ] ifFalse: [ $f ])
        aStream nextPut: $'.
    ]

    writeDateTime: aDateTime on: aStream [
        <category: 'converting-smalltalk'>
        aStream nextPutAll: 'timestamp '.
	aDateTime offset = 0
	    ifFalse: [ aStream nextPutAll: 'with time zone ' ].
        aStream nextPut: $'.
        aDateTime printOn: aStream.
        aStream nextPut: $'.
    ]

    writeQuotedTime: aTime on: aStream [
        <category: 'converting-smalltalk'>
	"HACK.  Time should support timezones too."
	(aTime respondsTo: #offset)
	     ifTrue: [ self writeDateTime: aTime on: aStream ]
	     ifFalse: [ super writeTime: aTime on: aStream ]
    ]
]
PK
     {IG�2I�  �            ��    package.xmlUT �5�Wux �e  d   PK
     gwB ���  �            ���  Connection.stUT �NQux �e  d   PK
     gwBX���+  +            ���  ResultSet.stUT �NQux �e  d   PK
     gwB!�V  V            ��88  Row.stUT �NQux �e  d   PK
     gwBc�*��  �            ���@  ColumnInfo.stUT �NQux �e  d   PK
     gwB%sD��  �            ���\  Statement.stUT �NQux �e  d   PK
     gwB�|�k-  -            ���h  Table.stUT �NQux �e  d   PK
     gwB'R���	  �	            �� q  TableColumnInfo.stUT �NQux �e  d   PK
     gwB,Po*�  �            ��Y{  FieldConverter.stUT �NQux �e  d   PK    	 	 �  *�    