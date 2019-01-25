PK
     {I� �c  c    package.xmlUT	 �5�W�5�Wux �e  d   <package>
  <name>DBD-SQLite</name>
  <namespace>DBI.SQLite</namespace>
  <test>
    <namespace>DBI.SQLite</namespace>
    <prereq>DBD-SQLite</prereq>
    <prereq>SUnit</prereq>
    <sunit>DBI.SQLite.SQLiteTestSuite</sunit>
    <filein>SQLiteTests.st</filein>
  </test>
  <prereq>DBI</prereq>
  <module>dbd-sqlite3</module>

  <filein>SQLite.st</filein>
  <filein>Connection.st</filein>
  <filein>ResultSet.st</filein>
  <filein>Statement.st</filein>
  <filein>Row.st</filein>
  <filein>ColumnInfo.st</filein>
  <filein>Table.st</filein>
  <filein>TableColumnInfo.st</filein>
  <file>ChangeLog</file>
</package>PK
     gwB�P]Z�  �  	  SQLite.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   SQLite bindings, bridge to the C library
|
|
 ======================================================================"


"======================================================================
|
| Copyright 2007, 2008 Free Software Foundation, Inc.
| Written by Daniele Sciascia
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


Object subclass: SQLite3Handle [
    | db |

    errorMessage [
        <cCall: 'gst_sqlite3_error_message' returing: #string args: #(#self)>
    ]
    
    checkError: aBoolean [
	aBoolean ifFalse: [ self error: self errorMessage ]
    ]

    changes [
        <category: 'sqlite3 wrapper'>
        <cCall: 'gst_sqlite3_changes' returning: #int args: #(#self)>
    ]
]

SQLite3Handle subclass: SQLite3DBHandle [
    SQLite3DBHandle class >> open: dbname [
	| result rc |
        result := self new.
        rc := result open: dbname.
	rc = 0 ifFalse: [ self error: 'error: ', rc printString ].
	^result
    ]
    
    open: dbname [
        <cCall: 'gst_sqlite3_open' returning: #int args: #(#self #string)>
    ]

    close [
    	<cCall: 'gst_sqlite3_close' returning: #int args: #(#self)>
    ]
    
    prepare: aSQLQuery [
        ^SQLite3StmtHandle forQuery: aSQLQuery onHandle: db
    ]
]

SQLite3Handle subclass: SQLite3StmtHandle [
    | stmt colCount colTypes colNames returnedRow |
    
    SQLite3StmtHandle class >> forQuery: aSQLQuery onHandle: aDbHandle [
	| result rc |
	result := self new db: aDbHandle.
	rc := result prepare: aSQLQuery.
	rc = 0 ifFalse: [ self error: 'error: ', rc printString ].
        ^result
    ]
    
    db [
        <category: 'private'>
        ^db
    ]
    
    db: aDbHandle [
        <category: 'private'>
        db := aDbHandle
    ]
    
    finalize [
        <category: 'private'>
        <cCall: 'gst_sqlite3_finalize' returning: #int args: #(#self)>
    ]
    
    prepare: aSQLQuery [
        <category: 'sqlite3 wrapper'>
        <cCall: 'gst_sqlite3_prepare' returning: #int args: #(#self #string)>
    ]
    
    exec [
        <category: 'sqlite3 wrapper'>
        <cCall: 'gst_sqlite3_exec' returning: #int args: #(#self)>
    ]
    
    bindingAt: index put: value [
        <category: 'sqlite3 wrapper'>
        <cCall: 'gst_sqlite3_bind' returning: #int args: #(#self #smalltalk #smalltalk)>
    ]
    
    clearBindings [
        <category: 'sqlite3 wrapper'>
        <cCall: 'gst_sqlite3_clear_bindings' returning: #int args: #(#self)>
    ]
    
    reset [
        <category: 'sqlite3 wrapper'>
        <cCall: 'gst_sqlite3_reset' returning: #int args: #(#self)>
    ]
    
    colCount [
        <category: 'accessing'>
        ^colCount
    ]
    
    colTypes [
        <category: 'accessing'>
        ^colTypes
    ]
    
    colNames [
        <category: 'accessing'>
        ^colNames
    ]
    
    returnedRow [
        <category: 'accessing'>
        ^returnedRow
    ]
]
PK
     gwB�;(�  �    Connection.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   SQLite bindings, Connection class
|
|
 ======================================================================"


"======================================================================
|
| Copyright 2007, 2008 Free Software Foundation, Inc.
| Written by Daniele Sciascia
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


Connection subclass: SQLiteConnection [
	| dbName stmtHandles handle |
	
	<category: 'DBI-Drivers'>
	<comment: 'I represent a connection to a SQLite database'>
	
	
	SQLiteConnection class >> paramConnect: params user: aUserName password: aPassword [
        <category: 'connecting'>
		| dbName aSqlite3Handle |
		
		dbName := params at: 'dbname'
		ifAbsent: [self error: 'Missing parameter: dbname'].
		aSqlite3Handle := SQLite3DBHandle open: dbName.
		^(self new)
		    initializeWithHandle: aSqlite3Handle;
		    database: dbName;
		    yourself
	]
	
	initializeWithHandle: aSqlite3Handle [ 
	    handle := aSqlite3Handle.
	    stmtHandles := WeakIdentitySet new.
	]
	
	database: aString [
	    <category: 'accessing'>
	    dbName := aString
	]
	
	database [
	    <category: 'accessing'>
	    ^dbName
	]
	
	close [
	    <category: 'connecting'>
	    stmtHandles do: [ :each | each removeToBeFinalized; finalize ].
	    ^handle close
	]
	
	SQLiteConnection class >> driverName [
	    <category: 'initialization'>
		^'SQLite'
	]
	
    handle [
        <category: 'private'>
        ^handle
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
        | stmtHandle |  
        stmtHandle := self handle prepare: aSQLQuery.
        stmtHandle addToBeFinalized.
        stmtHandles add: stmtHandle.
        ^(SQLiteStatement on: self)
                    handle: stmtHandle;
                    queryString: aSQLQuery.
    ]

    primTableAt: aString ifAbsent: aBlock [
	| table |
	[
	    table := (SQLiteTable name: aString connection: self)
		columnsArray;
		yourself ]
	    on: Error
	    do: [ :ex | ex return ].

	table isNil ifTrue: [ ^aBlock value ].
	^table
    ]
]
PK
     gwBls�  �    ResultSet.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   SQLite bindings, ResultSet class
|
|
 ======================================================================"


"======================================================================
|
| Copyright 2007, 2008 Free Software Foundation, Inc.
| Written by Daniele Sciascia
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


ResultSet subclass: SQLiteResultSet [
    | handle rows columns index |
		   
    SQLiteResultSet class >> on: aStatement [
        <category: 'instance creation'>
        ^self new initializeWithStatement: aStatement
    ]
    
    initializeWithStatement: aStatement [
        <category: 'initialization'>
        index := 0.
        self statement: aStatement.
        self handle: (aStatement handle).
        self isSelect
	    ifTrue: [self populate]
	    ifFalse: [self exec]
    ]
    
    exec [
        <category: 'initialization'>
	| resCode |
        resCode := self handle exec.
        self handle checkError: resCode = 101.
	rows := handle changes
    ]

    populate [
        <category: 'initialization'>
        | resCode |
        
        rows := OrderedCollection new.
        [ resCode := self handle exec.
          resCode = 100
        ] whileTrue: [rows addLast: 
                        (SQLiteRow forValues: self handle returnedRow copy in: self)].
        
        self handle checkError: resCode = 101.
    ]
    
    handle [
        <category: 'private'>
        ^handle
    ]
    
    handle: aSQLite3StmtHandle [
        <category: 'private'>
        handle := aSQLite3StmtHandle
    ]

    next [
        <category: 'cursor access'>
    	self atEnd ifTrue: [self error: 'No more rows'].
    	index := index + 1.
    	^self rows at: index
    ]

    atEnd [
        <category: 'cursor access'>
        ^index >= self rowCount
    ]
    
    position [
        <category: 'stream protocol'>
        ^index
    ]

    position: anInteger [
        <category: 'stream protocol'>
        (anInteger between: 0 and: self size)
            ifTrue: [ index := anInteger ] 
            ifFalse: [ SystemExceptions.IndexOutOfRange signalOn: self withIndex: anInteger ].
        ^index
    ]

    columns [
        <category: 'accessing'>
        columns isNil
            ifTrue: [| n |
                     n := self handle colCount.
                     columns := LookupTable new: n.
                     1 to: n do: [:i | columns at: (self columnNames at: i)
                                               put: (SQLiteColumnInfo in: self at: i)]].
        ^columns
    ]

    columnNames [
        <category: 'accessing'>
        ^self handle colNames
    ]
    
    columnTypes [
        ^self handle colTypes
    ]
    
    columnTypeAt: index [
        ^self columnTypes at: index
    ]

    isSelect [
        <category: 'accessing'>
	^self statement isSelect
    ]

    isDML [
        <category: 'accessing'>
	^self statement isSelect not
    ]
    
    rows [
        <category: 'accessing'>
        ^rows
    ]

    rowCount [
        <category: 'accessing'>
        self isSelect 
            ifTrue: [^self rows size]
            ifFalse: [^self error: 'Not a SELECT statement.']
    ]

    rowsAffected [
        <category: 'accessing'>
        self isDML 
            ifTrue: [^self rows]
            ifFalse: [^self error: 'Not a DML statement.']
    ]
]
PK
     gwBe��Ĩ
  �
    Statement.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   SQLite bindings, Statement class
|
|
 ======================================================================"


"======================================================================
|
| Copyright 2007, 2008 Free Software Foundation, Inc.
| Written by Daniele Sciascia
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



Statement subclass: SQLiteStatement [
    | handle queryString isSelect |
    
    <category: 'DBI-Drivers'>
    <comment: 'I represent a SQLite prepared statement'>
    
    SelectQueries := #('EXPLAIN' 'SELECT') asSet.

    handle [
        <category: 'private'>
        ^handle
    ]
    
    handle: aSqlite3StmtHandle [
        <category: 'private'>
        handle := aSqlite3StmtHandle
    ]
    
    queryString [
        <category: 'accessing'>
        ^queryString
    ]
    
    queryString: aSQLQuery [
        <category: 'accessing'>
        queryString := aSQLQuery.
        
    ]
    
    isSelect [
        <category: 'accessing'>
        isSelect isNil
            ifTrue: [isSelect := SelectQueries includes: self getCommand].
        ^isSelect
    ]
    
    execute [
        <category: 'querying'>
        ^SQLiteResultSet on: self
    ]
    
    executeWithAll: aParams [
        <category: 'querying'>
        | resCode |
        ^[aParams keysAndValuesDo: [:i :param | 
                resCode := self handle bindingAt: i put: param.
                self handle checkError: resCode = 0].
                                          
        SQLiteResultSet on: self] ensure: [self resetAndClear]
    ]
    
    resetAndClear [
        <category: 'private'>
        self handle reset.
        self handle clearBindings.
    ]
    
    getCommand [
        <category: 'private'>
        ^ self class getCommand: queryString.
    ]
]
PK
     gwB��{      Row.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   SQLite bindings, Row class
|
|
 ======================================================================"


"======================================================================
|
| Copyright 2007, 2008 Free Software Foundation, Inc.
| Written by Daniele Sciascia
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


Row subclass: SQLiteRow [
    | values |
    
    SQLiteRow class >> forValues: anArray in: aResultSet [
        ^super new 
            values: anArray;
            resultSet: aResultSet;
            yourself
    ]
    
    values: anArray [
        <category: 'private'>
        values := anArray
    ]
    
    at: aColumnName [
	    <category: 'accessing'>
	    ^self atIndex: (resultSet columns at: aColumnName) index
    ]

    atIndex: aColumnIndex [
	    <category: 'accessing'>
	    ^values at: aColumnIndex
    ]
]

PK
     gwB%a(	  	    ColumnInfo.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   SQLite bindings, ColumnInfo class
|
|
 ======================================================================"


"======================================================================
|
| Copyright 2007, 2008 Free Software Foundation, Inc.
| Written by Daniele Sciascia
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


ColumnInfo subclass: SQLiteColumnInfo [
    | resultSet index |
    
    TypeNames := nil.
    
    SQLiteColumnInfo class >> in: aResultSet at: anIndex [
        ^(self new)
            index: anIndex;
            resultSet: aResultSet;
            yourself
    ]
    
    SQLiteColumnInfo class >> initTypes [
        TypeNames := LookupTable new.
        TypeNames at: 1 put: 'Integer'.
        TypeNames at: 2 put: 'Float'.
        TypeNames at: 3 put: 'Text'.
        TypeNames at: 4 put: 'Blob'.
        TypeNames at: 5 put: 'Null'.
    ]
    
    resultSet: aResultSet [
        <category: 'private'>
        resultSet := aResultSet
    ]
    
    name [
	    <category: 'accessing'>
	    ^resultSet columnAt: self index
    ]

    index [
	    <category: 'accessing'>
        ^index
    ]
    
    index: anIndex [
        <category: 'private'>
        index := anIndex
    ]

    type [
	    <category: 'accessing'>
        ^TypeNames at: (resultSet columnTypeAt: self index)
    ]
]

Eval [
    SQLiteColumnInfo initTypes
]
PK
     gwB��:��  �    Table.stUT	 �NQ�NQux �e  d   "=====================================================================
|
|   SQLite bindings, Table class
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



Table subclass: SQLiteTable [
    
    <category: 'DBD-SQLite'>
    <comment: nil>

    | columnsArray |

    columnsArray [
	"Answer an array of column name -> ColumnInfo pairs."
	| query resultSet string i |
	columnsArray isNil ifTrue: [

	    query := 'select sql from (select * from
			sqlite_master union all select * from sqlite_temp_master)
			where tbl_name = %1 limit 1;' % { self name printString }.
	    resultSet := self connection select: query.
	    string := (resultSet next atIndex: 1).
	    string := string copyFrom: (string indexOf: $( ) + 1 to: string size - 1.
	    i := 0.
	    columnsArray := (string subStrings: $,) collect: [ :field |
		SQLiteTableColumnInfo from: field subStrings index: (i := i + 1) ] ].
	^columnsArray
    ]
]
PK
     gwB����  �    TableColumnInfo.stUT	 �NQ�NQux �e  d   "=====================================================================
|
|   SQLite bindings, TableColumnInfo class
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



ColumnInfo subclass: SQLiteTableColumnInfo [
    
    <category: 'DBD-SQLite'>
    <comment: nil>
    | name type index |

    SQLiteTableColumnInfo class >> from: aRow index: anInteger [
	^self new initializeFrom: aRow index: anInteger
    ]

    initializeFrom: aRow index: anInteger [
	name := aRow at: 1.
	type := aRow at: 2.
	index := anInteger.
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

    type [
	"Return a string containing the type of the column."
	<category: 'accessing'>
	^type
    ]
]
PK    gwBI �  �  	  ChangeLogUT	 �NQ�NQux �e  d   �RKo�@>�_1�J��#���Ej�4��Z��f�>ܝqL��]lpġ�z�jw<3�C�8���]�|�N;�rv���d�mV�:v��o��A�1q
��#��#!�m��(<(K*G�h���B���ă���v	���=�!������&;���B��o��X�΃t-T5!\_-��D��D^8cBS�QH��8�8Sp%�F�o��㚽b���B_����Bi���Z��2J>D�G�kaj��T��P�ӡ4+�P:���~��[��<�L�\ْ�r+���e�~�)�����<u���T�sn�[�5�O���i�L�u���e�����Em%+g_�;�r�΍Z�����EX���d���v��!jRh}��*�Z��Q���htnN�ZlM�V^�(�9U�<�`E�f[mo�y�,���]��=�{��-��r�NBk��.���5,2A����ּ�.�?,�C|��&��PK
     gwB�jo�d  d    SQLiteTests.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   SQLite bindings test suite
|
|
 ======================================================================"


"======================================================================
|
| Copyright 2007, 2008 Free Software Foundation, Inc.
| Written by Daniele Sciascia
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



TestCase subclass: SQLiteBaseTest [
    | connection |
    
    setUp [
	| f |
	f := File name: 'testdb'.
	f exists ifTrue: [ f remove ].
        connection := DBI.Connection
                        connect: 'dbi:SQLite:dbname=testdb'
                        user: nil
                        password: nil.
	connection do: '
	    BEGIN TRANSACTION'.
	connection do: '
	    CREATE TABLE test(int_field integer, string_field text,
			      double_field double)'.
	connection do: '
	    INSERT INTO "test" VALUES(1, "one", 1.0)'.
	connection do: '
	    INSERT INTO "test" VALUES(2, "two", 2.0)'.
	connection do: '
	    INSERT INTO "test" VALUES(3, "three", 3.0)'.
	connection do: '
	    COMMIT'.
    ]
    
    tearDown [
	| f |
        connection close.
	f := File name: 'testdb'.
	f exists ifTrue: [ f remove ].
    ]
    
    connection [
        ^connection
    ]
]

SQLiteBaseTest subclass: SQLiteDMLResultSetTestCase [
    | rs |
    
    setUp [
        super setUp.
        rs := self connection
		 do: 'delete from test where string_field like "t%"'
    ]

    testRowsAffected [
	self assert: rs rowsAffected = 2
    ]
]
    

SQLiteBaseTest subclass: SQLiteResultSetTestCase [
    | rs |
    
    setUp [
        super setUp.
        rs := self connection
		select: 'select * from test'
    ]
    
    testNext [
        self should: [rs position = 0].
        rs next.
        self should: [rs position = 1].
        rs next.
        self should: [rs position = 2].
        rs next.
        self should: [rs atEnd]
    ]
    
    testAtEnd [
        self shouldnt: [rs atEnd].
        rs next.
        self shouldnt: [rs atEnd].
        rs next.
        self shouldnt: [rs atEnd].
        rs next.
        self should: [rs atEnd]
    ]
    
    testColumnNames [
        self should: [rs columnNames = #('int_field' 'string_field' 'double_field')]
    ]
    
    testRowCount [
        self should: [rs rowCount = 3]
    ]
]

SQLiteBaseTest subclass: SQLiteRowTestCase [
    | rs row |
    
    setUp [
        super setUp.
        rs := self connection select: 'select * from test where int_field = 1'.
        row := rs rows at: 1.
    ]
    
    testAt [
        self should: [(row at: 'int_field') = 1].
        self should: [(row at: 'string_field') = 'one'].
        self should: [(row at: 'double_field') = 1.0]
    ]
    
    testAtIndex [
        self should: [(row atIndex: 1) = 1].
        self should: [(row atIndex: 2) = 'one'].
        self should: [(row atIndex: 3) = 1.0]
    ]
]


SQLiteBaseTest subclass: SQLitePreparedStatementTestCase [
    | stmt stmt2 stmt3 |
    
    setUp [
        super setUp.
        stmt := self connection prepare: 'SELECT * FROM test WHERE int_field = ?'.
        stmt2 := self connection prepare: 'SELECT * FROM test WHERE int_field = ? AND string_field = ? AND double_field = ?'.
        stmt3 := self connection prepare: 'SELECT * FROM test WHERE int_field = :i AND string_field = :s AND double_field = :d'.
    ]
    
    testExecute [
        | rs row |
        "execute with one parameter"
        rs := stmt executeWith: 1.
        row := rs rows at: 1.
        self should: [(row atIndex: 1) = 1].
        
        "re-execute so that we are sure that the statement is reset"
        rs := stmt executeWith: 2.
        row := rs rows at: 1.
        self should: [(row atIndex: 1) = 2].
    ]
    
    testExecuteWithAllNamed [
        | rs row |
        rs := stmt3 executeWithAll: (Dictionary from: {
	    ':i' -> 1. ':s' -> 'one'. ':d' -> 1.0 }).
        row := rs rows at: 1.
        self should: [(row atIndex: 1) = 1].
        
        rs := stmt3 executeWithAll: (Dictionary from: {
	    ':i' -> 1. ':s' -> 'two'. ':d' -> 3.0 }).
        self should: [rs rows size = 0].
    ]
    
    testExecuteWithAll [
        | rs row |
        rs := stmt2 executeWithAll: #(1 'one' 1.0).
        row := rs rows at: 1.
        self should: [(row atIndex: 1) = 1].
        
        rs := stmt2 executeWithAll: #(1 'two' 3.0).
        self should: [rs rows size = 0].
    ]
]

TestSuite subclass: SQLiteTestSuite [
    SQLiteTestSuite class >> suite [
        ^super new initialize
    ]
    
    initialize [
        self name: 'SQLite-Test'.
        self addTest: (SQLiteResultSetTestCase selector: #testNext).
        self addTest: (SQLiteResultSetTestCase selector: #testAtEnd).
        self addTest: (SQLiteResultSetTestCase selector: #testColumnNames).
        self addTest: (SQLiteResultSetTestCase selector: #testRowCount).

        self addTest: (SQLiteRowTestCase selector: #testAt).
        self addTest: (SQLiteRowTestCase selector: #testAtIndex).

        self addTest: (SQLiteDMLResultSetTestCase selector: #testRowsAffected).
        
        self addTest: (SQLitePreparedStatementTestCase selector: #testExecute).
        self addTest: (SQLitePreparedStatementTestCase selector: #testExecuteWithAll).
        self addTest: (SQLitePreparedStatementTestCase selector: #testExecuteWithAllNamed).
    ]
]
PK
     {I� �c  c            ��    package.xmlUT �5�Wux �e  d   PK
     gwB�P]Z�  �  	          ���  SQLite.stUT �NQux �e  d   PK
     gwB�;(�  �            ���  Connection.stUT �NQux �e  d   PK
     gwBls�  �            ���  ResultSet.stUT �NQux �e  d   PK
     gwBe��Ĩ
  �
            ���/  Statement.stUT �NQux �e  d   PK
     gwB��{              ���:  Row.stUT �NQux �e  d   PK
     gwB%a(	  	            ���A  ColumnInfo.stUT �NQux �e  d   PK
     gwB��:��  �            ��/K  Table.stUT �NQux �e  d   PK
     gwB����  �            ��QS  TableColumnInfo.stUT �NQux �e  d   PK    gwBI �  �  	         ��([  ChangeLogUT �NQux �e  d   PK
     gwB�jo�d  d            ��M]  SQLiteTests.stUT �NQux �e  d   PK        �u    