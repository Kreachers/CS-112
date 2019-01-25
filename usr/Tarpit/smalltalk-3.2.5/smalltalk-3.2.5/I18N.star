PK
     {I����'  '    package.xmlUT	 �5�W�5�Wux �e  d   <package>
  <name>I18N</name>
  <namespace>I18N</namespace>
  <prereq>Iconv</prereq>
  <module>i18n</module>

  <filein>Locale.st</filein>
  <filein>Expression.st</filein>
  <filein>GetText.st</filein>
  <filein>Numbers.st</filein>
  <filein>Times.st</filein>
  <file>ChangeLog</file>
</package>PK
     gwBxΫ��J  �J  	  Locale.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   Localization and internationalization support
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2001, 2002, 2005, 2006, 2009 Free Software Foundation, Inc.
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
| along with the GNU Smalltalk class library; see the file COPYING.LESSER.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.  
|
 ======================================================================"



Object subclass: LocaleData [
    | id |
    
    <category: 'i18n-Messages'>
    <comment: 'I am an abstract superclass of objects that represent localization
information.'>

    ValidLanguages := nil.
    ValidTerritories := nil.
    DefaultTerritories := nil.
    DefaultCharsets := nil.
    Aliases := nil.

    LocaleData class >> territories [
	"ISO3166 territory codes"

	<category: 'database'>
	^#('AF' 'AL' 'DZ' 'AS' 'AD' 'AO' 'AI' 'AQ' 'AG' 'AR' 'AM' 'AW' 'AU' 'AT' 'AZ' 'BS' 'BH' 'BD' 'BB' 'BY' 'BE' 'BZ' 'BJ' 'BM' 'BT' 'BO' 'BA' 'BW' 'BV' 'BR' 'IO' 'BN' 'BG' 'BF' 'BI' 'KH' 'CM' 'CA' 'CV' 'KY' 'CF' 'TD' 'CL' 'CN' 'CX' 'CC' 'CO' 'KM' 'CG' 'CK' 'CR' 'CI' 'HR' 'CU' 'CY' 'CZ' 'DK' 'DJ' 'DM' 'DO' 'TP' 'EC' 'EG' 'SV' 'GQ' 'EE' 'ET' 'FK' 'FO' 'FJ' 'FI' 'FR' 'GF' 'PF' 'TF' 'GA' 'GM' 'GE' 'DE' 'GH' 'GI' 'GR' 'GL' 'GD' 'GP' 'GU' 'GT' 'GN' 'GW' 'GY' 'HT' 'HM' 'HN' 'HK' 'HU' 'IS' 'IN' 'ID' 'IR' 'IQ' 'IE' 'IL' 'IT' 'JM' 'JP' 'JO' 'KZ' 'KE' 'KI' 'KP' 'KR' 'KW' 'KG' 'LA' 'LV' 'LB' 'LS' 'LR' 'LY' 'LI' 'LT' 'LU' 'MO' 'MG' 'MY' 'MW' 'MV' 'ML' 'MT' 'MH' 'MQ' 'MR' 'MU' 'MX' 'FM' 'MD' 'MC' 'MN' 'MS' 'MA' 'MZ' 'MM' 'NA' 'NR' 'NP' 'NL' 'AN' 'NT' 'NC' 'NZ' 'NI' 'NE' 'NG' 'NU' 'NF' 'MP' 'NO' 'OM' 'PK' 'PW' 'PA' 'PG' 'PY' 'PE' 'PH' 'PN' 'PL' 'PT' 'PR' 'QA' 'RE' 'RO' 'RU' 'RW' 'SH' 'KN' 'LC' 'PM' 'VC' 'WS' 'SM' 'ST' 'SA' 'SN' 'SE' 'SL' 'SG' 'SI' 'SB' 'SO' 'ZA' 'ES' 'LK' 'SD' 'SR' 'SJ' 'SZ' 'SE' 'CH' 'SY' 'TW' 'TJ' 'TZ' 'TH' 'TG' 'TK' 'TO' 'TT' 'TN' 'TR' 'TM' 'TC' 'TV' 'UG' 'UA' 'AE' 'GB' 'US' 'UM' 'UY' 'UZ' 'VU' 'VA' 'VE' 'VN' 'VG' 'VI' 'WF' 'EH' 'YE' 'YU' 'ZR' 'ZM' 'ZW' 'SK' 'SP' 'CD' 'ER' 'MK' 'YT' 'SC' 'GS')
    ]

    LocaleData class >> languages [
	"ISO639 language codes"

	<category: 'database'>
	^#('aa' 'ab' 'ae' 'af' 'am' 'ar' 'as' 'ay' 'az' 'ba' 'be' 'bg' 'bh' 'bi' 'bn' 'bo' 'br' 'bs' 'ca' 'ce' 'ch' 'co' 'cs' 'cu' 'cv' 'cy' 'da' 'de' 'dz' 'el' 'en' 'eo' 'es' 'et' 'eu' 'fa' 'fi' 'fj' 'fo' 'fr' 'fy' 'ga' 'gd' 'gl' 'gn' 'gu' 'gv' 'ha' 'he' 'hi' 'ho' 'hr' 'hu' 'hy' 'hz' 'ia' 'id' 'ie' 'ik' 'io' 'is' 'it' 'iu' 'ja' 'jv' 'ka' 'ki' 'kj' 'kk' 'kl' 'km' 'kn' 'ko' 'ks' 'ku' 'kv' 'kw' 'ky' 'la' 'lb' 'ln' 'lo' 'lt' 'lv' 'mg' 'mh' 'mi' 'mk' 'ml' 'mn' 'mo' 'mr' 'ms' 'mt' 'my' 'na' 'nb' 'nd' 'ne' 'ng' 'nl' 'nn' 'no' 'nr' 'nv' 'ny' 'oc' 'om' 'or' 'os' 'pa' 'pi' 'pl' 'ps' 'pt' 'qu' 'rm' 'rn' 'ro' 'ru' 'rw' 'sa' 'sc' 'sd' 'se' 'sg' 'sh' 'si' 'sk' 'sl' 'sm' 'sn' 'so' 'sq' 'sr' 'ss' 'st' 'su' 'sv' 'sw' 'ta' 'te' 'tg' 'th' 'ti' 'tk' 'tl' 'tn' 'to' 'tr' 'ts' 'tt' 'tw' 'ty' 'ug' 'uk' 'ur' 'uz' 'vi' 'vo' 'wa' 'wo' 'xh' 'yi' 'yo' 'za' 'zh' 'zu' 'ber' 'bin' 'bnt' 'chr' 'cpe' 'div' 'ful' 'ibo' 'kau' 'kok' 'mni' 'nic' 'pap' 'sit' 'syr' 'ven' 'wen')
    ]

    LocaleData class >> defaultCharset [
	"Answer the default charset used when nothing is specified."

	<category: 'database'>
	^DefaultCharsets at: 'POSIX'
    ]

    LocaleData class >> defaultCharset: aString [
	"Set the default charset used when nothing is specified."

	<category: 'database'>
	DefaultCharsets at: 'POSIX' put: aString asString
    ]

    LocaleData class >> defaults [
	"Answer the default territory-language and language-charset
	 associations."

	<category: 'database'>
	^#(#('POSIX' '' 'UTF-8')
	 #('af' 'ZA' 'ISO-8859-1')
	 #('am' 'ET' 'UTF-8')
	 #('ar' 'SA' 'ISO-8859-6')
	 #('as' 'IN' 'UTF-8')
	 #('az' 'AZ' 'UTF-8')
	 #('be' 'BY' 'CP1251')
	 #('ber' 'MA' 'UTF-8')
	 #('bg' 'BG' 'CP1251')
	 #('bin' 'NG' 'ISO-8859-1')
	 #('bn' 'IN' 'UTF-8')
	 #('bnt' 'TZ' 'ISO-8859-1')
	 #('bo' 'CN' 'UTF-8')
	 #('br' 'FR' 'ISO-8859-1')
	 #('bs' 'BA' 'ISO-8859-2')
	 #('ca' 'ES' 'ISO-8859-1')
	 #('chr' 'US' 'ISO-8859-1')
	 #('cpe' 'US' 'ISO-8859-1')
	 #('cs' 'CZ' 'ISO-8859-2')
	 #('cy' 'GB' 'ISO-8859-14')
	 #('da' 'DK' 'ISO-8859-1')
	 #('de' 'DE' 'ISO-8859-1')
	 #('div' 'MV' 'ISO-8859-1')
	 #('el' 'GR' 'ISO-8859-7')
	 #('en' 'US' 'ISO-8859-1')
	 #('eo' 'XX' 'ISO-8859-3')
	 #('es' 'ES' 'ISO-8859-1')
	 #('et' 'EE' 'ISO-8859-4')
	 #('eu' 'ES' 'ISO-8859-1')
	 #('fa' 'IR' 'UTF-8')
	 #('fi' 'FI' 'ISO-8859-1')
	 #('fo' 'FO' 'ISO-8859-1')
	 #('fr' 'FR' 'ISO-8859-1')
	 #('ful' 'NG' 'ISO-8859-1')
	 #('fy' 'NL' 'ISO-8859-1')
	 #('ga' 'IE' 'ISO-8859-1')
	 #('gd' 'GB' 'ISO-8859-1')
	 #('gl' 'ES' 'ISO-8859-1')
	 #('gn' 'PY' 'ISO-8859-1')
	 #('gu' 'IN' 'UTF-8')
	 #('gv' 'GB' 'ISO-8859-1')
	 #('ha' 'NG' 'ISO-8859-1')
	 #('he' 'IL' 'ISO-8859-8')
	 #('hi' 'IN' 'UTF-8')
	 #('hr' 'HR' 'ISO-8859-2')
	 #('hu' 'HU' 'ISO-8859-2')
	 #('ibo' 'NG' 'ISO-8859-1')
	 #('id' 'ID' 'ISO-8859-1')
	 #('is' 'IS' 'ISO-8859-1')
	 #('it' 'IT' 'ISO-8859-1')
	 #('iu' 'CA' 'UTF-8')
	 #('ja' 'JP' 'EUC-JP')
	 #('ka' 'GE' 'GEORGIAN-PS')
	 #('kau' 'NG' 'ISO-8859-1')
	 #('kk' 'KZ' 'UTF-8')
	 #('kl' 'GL' 'ISO-8859-1')
	 #('km' 'KH' 'UTF-8')
	 #('kn' 'IN' 'UTF-8')
	 #('ko' 'KR' 'EUC-KR')
	 #('kok' 'IN' 'UTF-8')
	 #('ks' 'PK' 'UTF-8')
	 #('kw' 'GB' 'ISO-8859-1')
	 #('ky' 'KG' 'UTF-8')
	 #('la' 'VA' 'ASCII')
	 #('lt' 'LT' 'ISO-8859-13')
	 #('lv' 'LV' 'ISO-8859-13')
	 #('mi' 'NZ' 'ISO-8859-13')
	 #('mk' 'MK' 'ISO-8859-5')
	 #('ml' 'IN' 'UTF-8')
	 #('mn' 'MN' 'KOI8-R')
	 #('mni' 'IN' 'UTF-8')
	 #('mr' 'IN' 'UTF-8')
	 #('ms' 'MY' 'ISO-8859-1')
	 #('mt' 'MT' 'ISO-8859-3')
	 #('my' 'MM' 'UTF-8')
	 #('ne' 'NP' 'UTF-8')
	 #('nic' 'NG' 'ISO-8859-1')
	 #('nl' 'NL' 'ISO-8859-1')
	 #('nn' 'NO' 'ISO-8859-1')
	 #('no' 'NO' 'ISO-8859-1')
	 #('oc' 'FR' 'ISO-8859-1')
	 #('om' 'ET' 'UTF-8')
	 #('or' 'IN' 'UTF-8')
	 #('pa' 'IN' 'UTF-8')
	 #('pap' 'AN' 'UTF-8')
	 #('pl' 'PL' 'ISO-8859-2')
	 #('ps' 'PK' 'UTF-8')
	 #('pt' 'PT' 'ISO-8859-1')
	 #('rm' 'CH' 'ISO-8859-1')
	 #('ro' 'RO' 'ISO-8859-2')
	 #('ru' 'RU' 'KOI8-R')
	 #('sa' 'IN' 'UTF-8')
	 #('se' 'NO' 'UTF-8')
	 #('sh' 'YU' 'ISO-8859-2')
	 #('si' 'LK' 'UTF-8')
	 #('sit' 'CN' 'UTF-8')
	 #('sk' 'SK' 'ISO-8859-2')
	 #('sl' 'SI' 'ISO-8859-2')
	 #('so' 'SO' 'UTF-8')
	 #('sp' 'YU' 'ISO-8859-5')
	 #('sq' 'AL' 'ISO-8859-1')
	 #('sr' 'YU' 'ISO-8859-2')
	 #('sv' 'SE' 'ISO-8859-1')
	 #('sw' 'KE' 'ISO-8859-1')
	 #('syr' 'TR' 'UTF-8')
	 #('ta' 'IN' 'UTF-8')
	 #('te' 'IN' 'UTF-8')
	 #('tg' 'TJ' 'UTF-8')
	 #('th' 'TH' 'TIS-620')
	 #('ti' 'ET' 'UTF-8')
	 #('tk' 'TM' 'UTF-8')
	 #('tl' 'PH' 'ISO-8859-1')
	 #('tr' 'TR' 'ISO-8859-9')
	 #('ts' 'ZA' 'ISO-8859-1')
	 #('tt' 'RU' 'UTF-8')
	 #('uk' 'UA' 'KOI8-U')
	 #('ur' 'PK' 'UTF-8')
	 #('uz' 'UZ' 'ISO-8859-1')
	 #('ven' 'ZA' 'ISO-8859-1')
	 #('vi' 'VN' 'UTF-8')
	 #('wa' 'BE' 'ISO-8859-1')
	 #('wen' 'DE' 'ISO-8859-1')
	 #('xh' 'ZA' 'ISO-8859-1')
	 #('yi' 'US' 'CP1255')
	 #('yo' 'NG' 'ISO-8859-1')
	 #('zh' 'CN' 'GB2312')
	 #('zu' 'ZA' 'ISO-8859-1'))
	"('hy' 'AM'	#'ARMSCII-8')"
	"('lo' 'LA'	#'MULELAO-1')"
	"('sd' ?	?)"
    ]

    LocaleData class >> initialize [
	"Initialize the receiver's class variables."

	<category: 'database'>
	ValidLanguages := self languages asSet.
	ValidTerritories := self territories asSet.
	Aliases := LookupTable new.
	DefaultTerritories := LookupTable new.
	DefaultCharsets := LookupTable new.
	self defaults do: 
		[:each | 
		DefaultTerritories at: (each at: 1) put: (each at: 2).
		DefaultCharsets at: (each at: 1) put: (each at: 3)].
	ObjectMemory addDependent: self
    ]

    LocaleData class >> category [
	<category: 'accessing'>
	^nil
    ]

    LocaleData class >> default [
	<category: 'accessing'>
	self subclassResponsibility
    ]

    LocaleData class >> update: aspect [
	"Flush instances of the receiver when an image is loaded."

	<category: 'accessing'>
	aspect == #returnFromSnapshot ifTrue: [self flush]
    ]

    LocaleData class >> flush [
	"Flush the contents of the instances of each subclass of LocaleData."

	<category: 'accessing'>
	self subclassesDo: [:each | each flush]
    ]

    LocaleData class >> fromString: lang [
	<category: 'accessing'>
	self subclassResponsibility
    ]

    LocaleData class >> language: lang [
	"Answer the local object for the given language."

	<category: 'accessing'>
	^self fromString: lang
    ]

    LocaleData class >> language: lang territory: territory [
	"Answer the local object for the given language and territory."

	<category: 'accessing'>
	^self fromString: lang , '_' , territory
    ]

    LocaleData class >> language: lang territory: territory charset: charset [
	"Answer the local object for the given language, territory and charset."

	<category: 'accessing'>
	^self fromString: lang , '_' , territory , '.' , charset
    ]

    LocaleData class >> new [
	<category: 'accessing'>
	self shouldNotImplement
    ]

    LocaleData class >> posix [
	<category: 'accessing'>
	self subclassResponsibility
    ]

    extractLocaleParts: string [
	"Extract the language, territory and charset from a locale definition
	 string."

	<category: 'private'>
	| spec stream language territory charset |
	spec := string.
	spec isNil & self class category isNil ifTrue: [^nil].
	spec isNil 
	    ifTrue: 
		[spec := Smalltalk getenv: 'LC_ALL'.
		spec = '' ifTrue: [spec := nil]].
	spec isNil 
	    ifTrue: 
		[spec := Smalltalk getenv: self class category.
		spec = '' ifTrue: [spec := nil]].
	spec isNil 
	    ifTrue: 
		[spec := Smalltalk getenv: 'LANG'.
		spec = '' ifTrue: [spec := nil]].
	spec isNil ifTrue: [spec := #POSIX].
	stream := spec readStream.
	language := stream upTo: $_.
	stream atEnd 
	    ifTrue: 
		[^
		{language.
		DefaultTerritories at: language.
		DefaultCharsets at: language}].
	territory := stream upTo: $..
	stream atEnd 
	    ifTrue: 
		[^
		{language.
		territory.
		DefaultCharsets at: language}].
	charset := stream upToEnd.
	^
	{language.
	territory.
	charset}
    ]

    charset [
	"Return the charset supported by the receiver."

	<category: 'accessing'>
	^id isNil ifTrue: [self class defaultCharset] ifFalse: [id at: 3]
    ]

    language [
	"Return the language supported by the receiver."

	<category: 'accessing'>
	^id isNil ifTrue: [nil] ifFalse: [id at: 1]
    ]

    territory [
	"Return the territory supported by the receiver."

	<category: 'accessing'>
	^id isNil ifTrue: [nil] ifFalse: [id at: 2]
    ]

    id [
	"Return the identifier of the locale supported by the receiver."

	<category: 'accessing'>
	^id
    ]

    languageDirectory: rootDirectory [
	"Answer the directory where data files for the current language reside,
	 given the root directory of the locale data."

	<category: 'accessing'>
	^'%1/%2' % 
		{rootDirectory.
		self language}
    ]

    languageDirectory [
	"Answer the directory where data files for the current language reside."

	<category: 'accessing'>
	^self languageDirectory: Locale rootDirectory
    ]

    territoryDirectory: rootDirectory [
	"Answer the directory where data files for the current language,
	 specific to the territory, reside, given the root directory of the
	 locale data."

	<category: 'accessing'>
	^'%1/%2_%3' % 
		{rootDirectory.
		self language.
		self territory}
    ]

    territoryDirectory [
	"Answer the directory where data files for the current language,
	 specific to the territory, reside."

	<category: 'accessing'>
	self isPosixLocale ifTrue: [^self languageDirectory].
	^self territoryDirectory: Locale rootDirectory
    ]

    isPosixLocale [
	"Answer whether the receiver implements the default POSIX behavior
	 for a locale."

	<category: 'accessing'>
	^self language == #POSIX
    ]

    id: anArray [
	"Private - Set which locale the receiver contains data for"

	<category: 'initialization'>
	id := anArray
    ]

    initialize: aString [
	"Set which locale the receiver contains data for, starting
	 from a string describing the locale."

	<category: 'initialization'>
	id := self extractLocaleParts: aString
    ]
]



LocaleData subclass: Locale [
    | numeric time monetary iso messages |
    
    <category: 'i18n-Messages'>
    <comment: 'This object is an abstract superclass of objects related to the territory
and language in which the program is being used.  Instances of it are
asked about information on the current locale, and provide a means to be
asked for things with a common idiom, the #? binary message.'>

    RootDirectory := nil.
    Posix := nil.
    Default := nil.

    Locale class >> rootDirectory [
	"Answer the directory under which locale definition files are found."

	<category: 'initialization'>
	RootDirectory isNil ifTrue: [RootDirectory := self primRootDirectory].
	^RootDirectory
    ]

    Locale class >> rootDirectory: aString [
	"Set under which directory locale definition files are found."

	<category: 'initialization'>
	self flush.
	RootDirectory := aString
    ]

    Locale class >> flush [
	"Flush the information on locales that are not valid across an
	 image save/load."

	<category: 'instance creation'>
	super flush.
	Default := nil
    ]

    Locale class >> default [
	"Answer an instance of the receiver that accesses the default locale."

	<category: 'instance creation'>
	Default isNil ifFalse: [^Default].
	^Default := self language: nil
    ]

    Locale class >> fromString: aString [
	"Answer an instance of the receiver that accesses the given locale
	 (in the form language[_territory][.charset])."

	<category: 'instance creation'>
	^self basicNew initialize: aString
    ]

    Locale class >> posix [
	"Answer an instance of the receiver that accesses the POSIX locale."

	<category: 'instance creation'>
	Posix isNil ifFalse: [^Posix].
	^Posix := self language: #POSIX
    ]

    load: name [
	<category: 'C call-outs'>
	<cCall: 'i18n_load' returning: #string args: #(#self #string)>
	
    ]

    Locale class >> primRootDirectory [
	<category: 'C call-outs'>
	<cCall: 'i18n_localeDirectory' returning: #string args: #()>
	
    ]

    numeric [
	"Answer the LcNumeric object for the locale represented by the receiver."

	<category: 'subobjects'>
	^numeric
    ]

    time [
	"Answer the LcTime object for the locale represented by the receiver."

	<category: 'subobjects'>
	^time
    ]

    messages [
	"Answer the LcMessages object for the locale represented by the receiver."

	<category: 'subobjects'>
	^messages
    ]

    monetary [
	"Answer the LcMonetary object for the locale represented by the receiver."

	<category: 'subobjects'>
	^monetary
    ]

    monetaryIso [
	"Answer the LcMonetaryISO object for the locale represented by the
	 receiver."

	<category: 'subobjects'>
	^iso
    ]

    initialize: aString [
	"Create the receiver and load all of its subobjects"

	<category: 'private'>
	| result |
	super initialize: aString.
	id isNil 
	    ifFalse: 
		[numeric := LcNumeric basicNew id: self id.
		time := LcTime basicNew id: self id.
		monetary := LcMonetary basicNew id: self id.
		iso := LcMonetaryISO basicNew id: self id.
		messages := LcMessages basicNew id: self id]
	    ifTrue: 
		[numeric := LcNumeric basicNew initialize: nil.
		time := LcTime basicNew initialize: nil.
		monetary := LcMonetary basicNew initialize: nil.
		iso := LcMonetaryISO basicNew initialize: nil.
		messages := LcMessages basicNew initialize: nil].
	(result := self load: aString) isNil 
	    ifTrue: [self load: 'C']
	    ifFalse: [id isNil ifFalse: [id at: 3 put: result]]
    ]
]



LocaleData subclass: LocaleConventions [
    
    <category: 'i18n-Messages'>
    <comment: 'I am an abstract superclass of objects that are referred to by a Locale
object.'>

    LocaleConventions class >> selector [
	<category: 'accessing'>
	self subclassResponsibility
    ]

    LocaleConventions class >> default [
	"Answer an instance of the receiver that accesses the default locale."

	<category: 'accessing'>
	^Locale default perform: self selector
    ]

    LocaleConventions class >> fromString: aString [
	"Answer an instance of the receiver that accesses the given locale
	 (in the form language[_territory][.charset])."

	<category: 'accessing'>
	^(Locale fromString: aString) perform: self selector
    ]

    LocaleConventions class >> posix [
	"Answer an instance of the receiver that accesses the POSIX locale."

	<category: 'accessing'>
	^Locale posix perform: self selector
    ]

    LocaleConventions class >> ? anObject [
	"Query the default object, forwarding the message to it."

	<category: 'accessing'>
	^self default ? anObject
    ]

    ? anObject [
	<category: 'accessing'>
	self subclassResponsibility
    ]
]



LocaleConventions subclass: LcPrintFormats [
    
    <category: 'i18n-Messages'>
    <comment: 'LcPrintFormats subclasses have instances that understand #?,
#printString: and #print:on: (the last of which is abstract) which
provide a means to convert miscellaneous objects to Strings according
to the rules that are used in the given locale.'>

    ? anObject [
	"Answer how anObject must be printed according to the receiver's
	 formatting conventions."

	<category: 'printing'>
	| stream |
	stream := WriteStream on: String new.	"### maybe an EncodedStream"
	self print: anObject on: stream.
	^stream contents
    ]

    printString: anObject [
	"Answer how anObject must be printed according to the receiver's
	 formatting conventions."

	<category: 'printing'>
	| stream |
	stream := WriteStream on: String new.	"### maybe an EncodedStream"
	self print: anObject on: stream.
	^stream contents
    ]

    print: anObject on: aStream [
	"Print anObject on aStream according to the receiver's
	 formatting conventions."

	<category: 'printing'>
	self subclassResponsibility
    ]
]



String class extend [

    defaultDefaultEncoding [
	"Answer the default encoding that is used when the user specifies
	 none."

	<category: 'converting'>
	^I18N.Locale default charset
    ]

]



CharacterArray extend [

    compareTo: aCharacterArray [
	"Answer a number < 0 if the receiver is less than aCharacterArray,
	 a number > 0 if it is greater, or 0 if they are equal.  This does
	 a three-way comparison."

	<category: 'comparing'>
	| c1 c2 |
	1 to: (self size min: aCharacterArray size)
	    do: 
		[:i | 
		c1 := (self at: i) value.
		c2 := (aCharacterArray at: i) value.
		c1 = c2 ifFalse: [^c1 - c2]].
	^self size - aCharacterArray size
    ]

]



Eval [
    LocaleData initialize
]

PK
     gwB���(  �(    Expression.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   Run-time parsable expression support (for plural forms)
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2001, 2002 Free Software Foundation, Inc.
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
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the GNU Lesser
| General Public License for more details.
|
| You should have received a copy of the GNU Lesser General Public License
| along with the GNU Smalltalk class library; see the file COPYING.LESSER.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.
|
 ======================================================================"



Object subclass: RunTimeExpression [
    
    <category: 'i18n-Messages'>
    <comment: nil>

    Precedence := nil.
    Selectors := nil.

    RunTimeExpression class >> initialize [
	"Private - Initialize internal tables for the parser"

	<category: 'initializing'>
	Precedence := (Dictionary new)
		    at: #'||' put: 1;
		    at: #&& put: 2;
		    at: #== put: 3;
		    at: #'!=' put: 3;
		    at: #< put: 4;
		    at: #> put: 4;
		    at: #<= put: 4;
		    at: #>= put: 4;
		    at: #+ put: 5;
		    at: #- put: 5;
		    at: #* put: 6;
		    at: #/ put: 6;
		    at: #% put: 6;
		    yourself.
	Selectors := (Dictionary new)
		    at: #'||' put: #bitOr:;
		    at: #&& put: #bitAnd:;
		    at: #== put: #=;
		    at: #'!=' put: #~=;
		    at: #/ put: #//;
		    at: #% put: #\\;
		    yourself
    ]

    RunTimeExpression class >> on: aString [
	"Compile aString and answer a RunTimeExpression"

	<category: 'instance creation'>
	| expr stream |
	stream := ReadStream on: aString.
	expr := self parseExpression: stream.
	stream skipSeparators.
	stream atEnd ifFalse: [self error: 'expected operator'].
	^expr
    ]

    RunTimeExpression class >> parseExpression: stream [
	"Private - Compile the expression in the stream"

	<category: 'compiling'>
	| lhs op rhs prec topPrec stack |
	lhs := self parseOperand: stream.
	lhs isNil ifTrue: [self error: 'expected operand'].
	stack := OrderedCollection new.
	topPrec := 9999999.
	[(op := self parseOperator: stream) isNil or: [op == #?]] whileFalse: 
		[rhs := self parseOperand: stream.
		rhs isNil ifTrue: [self error: 'expected operand'].
		prec := Precedence at: op.
		[stack notEmpty and: [prec < topPrec]] whileTrue: 
			["We ended a subexpression with higher precedence, which
			 is to become the RHS of the lower-precedence subexpression
			 (for example, 3+4*5+6 after reading the +6)"

			topPrec := stack removeLast.
			lhs := RTEBinaryNode 
				    lhs: stack removeLast
				    op: stack removeLast
				    rhs: lhs].
		prec > topPrec 
		    ifTrue: 
			["Wait, the old RHS is actually the LHS of a subexpression
			 with higher precedence.  Save the state on the stack and
			 reset the parser (for example 3+4*5+6 after reading *5:
			 lhs is 3+4, but 3+ is saved and 4 is the new LHS)."

			stack
			    add: lhs op;
			    add: lhs lhs;
			    add: topPrec.
			lhs := lhs rhs].
		lhs := RTEBinaryNode 
			    lhs: lhs
			    op: op
			    rhs: rhs.
		topPrec := prec].

	"Combine the LHS's that were saved on the stack."
	[stack isEmpty] whileFalse: 
		[stack removeLast.	"precedence"
		lhs := RTEBinaryNode 
			    lhs: stack removeLast
			    op: stack removeLast
			    rhs: lhs].

	"Parse a ternary expression"
	op == #? 
	    ifTrue: 
		[lhs := RTEAlternativeNode 
			    condition: lhs
			    ifTrue: (self parseExpression: stream)
			    ifFalse: ((stream peekFor: $:) 
				    ifTrue: [self parseExpression: stream]
				    ifFalse: [self error: 'expected :'])].
	^lhs
    ]

    RunTimeExpression class >> parseOperator: stream [
	"Answer a Symbol for an operator read from stream, or nil if something
	 else is found."

	<category: 'compiling'>
	| c1 c2 |
	stream skipSeparators.
	c1 := stream peek.
	c1 isNil ifTrue: [^nil].
	c1 == $n ifTrue: [^nil].
	c1 == $( ifTrue: [^nil].
	c1 isDigit ifTrue: [^nil].
	c1 == $) ifTrue: [^nil].
	c1 == $: ifTrue: [^nil].
	c2 := stream
		    next;
		    peek.
	c2 isNil ifTrue: [^c1 asSymbol].
	c2 isSeparator ifTrue: [^c1 asSymbol].
	c2 == $n ifTrue: [^c1 asSymbol].
	c2 == $! ifTrue: [^c1 asSymbol].
	c2 == $( ifTrue: [^c1 asSymbol].
	c2 isDigit ifTrue: [^c1 asSymbol].
	c2 == $) ifTrue: [^self error: 'expected operand'].
	c2 == $: ifTrue: [^self error: 'expected operand'].
	stream next.
	^(String with: c1 with: c2) asSymbol
    ]

    RunTimeExpression class >> parseOperand: stream [
	"Parse an operand from the stream (i.e. an unary negation,
	 a parenthesized subexpression, `n' or a number) and answer
	 the corresponding parse node."

	<category: 'compiling'>
	| expr |
	stream skipSeparators.
	(stream peekFor: $!) 
	    ifTrue: [^RTENegationNode child: (self parseOperand: stream)].
	(stream peekFor: $() 
	    ifTrue: 
		[expr := self parseExpression: stream.
		(stream peekFor: $)) ifFalse: [self error: 'expected )'].
		^expr].
	(stream peekFor: $n) ifTrue: [^RTEParameterNode new].
	(stream peek notNil and: [stream peek isDigit]) 
	    ifTrue: [^RTELiteralNode parseFrom: stream].
	^nil
    ]

    value: parameter [
	"Evaluate the receiver, and answer its value as an integer"

	<category: 'computing'>
	| result |
	result := self send: parameter.
	result isInteger ifFalse: [result := result ifTrue: [1] ifFalse: [0]].
	^result
    ]

    send: parameter [
	<category: 'computing'>
	self subclassResponsibility
    ]
]



RunTimeExpression subclass: RTEAlternativeNode [
    | condition ifTrue ifFalse |
    
    <category: 'i18n-Messages'>
    <comment: nil>

    RTEAlternativeNode class >> condition: cond ifTrue: trueNode ifFalse: falseNode [
	"Private - Create a node in the parse tree for the run-time expression,
	 mapping s to a Smalltalk arithmetic selector"

	<category: 'compiling'>
	^self new 
	    condition: cond
	    ifTrue: trueNode
	    ifFalse: falseNode
    ]

    send: parameter [
	"Evaluate the receiver by conditionally choosing one of its children
	 and evaluating it"

	<category: 'computing'>
	^(condition value: parameter) = 0 
	    ifFalse: [ifTrue value: parameter]
	    ifTrue: [ifFalse value: parameter]
    ]

    printOn: aStream [
	"Print a representation of the receiver on aStream"

	<category: 'computing'>
	aStream
	    print: condition;
	    nextPut: $?;
	    print: ifTrue;
	    nextPut: $:;
	    print: ifFalse
    ]

    condition: condNode ifTrue: trueNode ifFalse: falseNode [
	"Initialize the children of the receiver and the conditional expression
	 to choose between them"

	<category: 'computing'>
	condition := condNode.
	ifTrue := trueNode.
	ifFalse := falseNode
    ]
]



RunTimeExpression subclass: RTEBinaryNode [
    | lhs op rhs |
    
    <category: 'i18n-Messages'>
    <comment: nil>

    RTEBinaryNode class >> lhs: lhs op: op rhs: rhs [
	"Private - Create a node in the parse tree for the run-time expression,
	 mapping s to a Smalltalk arithmetic selector"

	<category: 'compiling'>
	^self new 
	    lhs: lhs
	    op: op
	    rhs: rhs
    ]

    lhs [
	<category: 'compiling'>
	^lhs
    ]

    op [
	<category: 'compiling'>
	^op
    ]

    rhs [
	<category: 'compiling'>
	^rhs
    ]

    send: parameter [
	"Private - Evaluate the receiver by evaluating both children
	 and performing an arithmetic operation between them."

	<category: 'computing'>
	^(lhs value: parameter) perform: op with: (rhs value: parameter)
    ]

    printOn: aStream [
	"Print a representation of the receiver on aStream"

	<category: 'computing'>
	aStream
	    nextPut: $(;
	    print: lhs;
	    nextPutAll: op;
	    print: rhs;
	    nextPut: $)
    ]

    lhs: lhsNode op: aSymbol rhs: rhsNode [
	"Initialize the children of the receiver and the operation
	 to be done between them"

	<category: 'computing'>
	lhs := lhsNode.
	op := Selectors at: aSymbol ifAbsent: [aSymbol].
	rhs := rhsNode
    ]
]



RunTimeExpression subclass: RTELiteralNode [
    | n |
    
    <category: 'i18n-Messages'>
    <comment: nil>

    RTELiteralNode class >> parseFrom: aStream [
	"Parse a literal number from aStream and return a new node"

	<category: 'initializing'>
	| ch n |
	n := 0.
	[(ch := aStream peek) notNil and: [ch isDigit]] whileTrue: 
		[n := n * 10 + ch digitValue.
		aStream next].
	^self new n: n
    ]

    send: parameter [
	"Answer a fixed value, the literal encoded in the node"

	<category: 'computing'>
	^n
    ]

    n: value [
	"Set the value of the literal that the node represents"

	<category: 'computing'>
	n := value
    ]

    printOn: aStream [
	"Print a representation of the receiver on aStream"

	<category: 'computing'>
	aStream print: n
    ]
]



RunTimeExpression subclass: RTEParameterNode [
    
    <category: 'i18n-Messages'>
    <comment: nil>

    send: parameter [
	"Evaluate the receiver by answering the parameter"

	<category: 'computing'>
	^parameter
    ]

    printOn: aStream [
	"Print a representation of the receiver on aStream"

	<category: 'computing'>
	aStream nextPut: $n
    ]
]



RunTimeExpression subclass: RTENegationNode [
    | child |
    
    <category: 'i18n-Messages'>
    <comment: nil>

    RTENegationNode class >> child: aNode [
	"Answer a new node representing the logical negation of aNode"

	<category: 'initializing'>
	^self new child: aNode
    ]

    send: parameter [
	"Evaluate the receiver by computing the child's logical negation"

	<category: 'computing'>
	^(child value: parameter) = 0 ifTrue: [1] ifFalse: [0]
    ]

    printOn: aStream [
	"Print a representation of the receiver on aStream"

	<category: 'computing'>
	aStream
	    nextPut: $!;
	    print: child
    ]

    child: value [
	"Set the child of which the receiver will compute the negation"

	<category: 'computing'>
	child := value
    ]
]



Eval [
    RunTimeExpression initialize
]

PK
     gwB����t  �t  
  GetText.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   LC_MESSAGES support (GNU gettext MO files)
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2001, 2002, 2008 Free Software Foundation, Inc.
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
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the GNU Lesser
| General Public License for more details.
|
| You should have received a copy of the GNU Lesser General Public License
| along with the GNU Smalltalk class library; see the file COPYING.LESSER.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.
|
 ======================================================================"



LocaleConventions subclass: LcMessages [
    
    <comment: 'This object is a factory of LcMessagesDomain objects'>
    <category: 'i18n-Messages'>

    LcMessages class >> category [
	"Answer the environment variable used to determine the default
	 locale"

	<category: 'accessing'>
	^#LC_MESSAGES
    ]

    LcMessages class >> selector [
	"Answer the selector that accesses the receiver when sent to a Locale
	 object."

	<category: 'accessing'>
	^#messages
    ]

    territoryDirectory: rootDirectory [
	"Answer the directory holding MO files for the language, specific to
	 the territory, given the root directory of the locale data."

	<category: 'accessing'>
	^(super territoryDirectory: rootDirectory) , '/LC_MESSAGES'
    ]

    territoryDirectory [
	"Answer the directory holding MO files for the language, specific to
	 the territory"

	<category: 'accessing'>
	^self territoryDirectory: Locale rootDirectory
    ]

    languageDirectory: rootDirectory [
	"Answer the directory holding MO files for the language, given the
	 root directory of the locale data."

	<category: 'accessing'>
	^(super languageDirectory: rootDirectory) , '/LC_MESSAGES'
    ]

    languageDirectory [
	"Answer the directory holding MO files for the language"

	<category: 'accessing'>
	^self languageDirectory: Locale rootDirectory
    ]

    ? aString [
	"Answer an object for the aString domain, querying both the
	 language catalog (e.g. pt) and the territory catalog (e.g. pt_BR
	 or pt_PT)."

	<category: 'opening MO files'>
	^self domain: aString
    ]

    domain: aString [
	"Answer an object for the aString domain, querying both the
	 language catalog (e.g. pt) and the territory catalog (e.g. pt_BR
	 or pt_PT)."

	<category: 'opening MO files'>
	^self domain: aString localeDirectory: Locale rootDirectory
    ]

    domain: aString localeDirectory: rootDirectory [
	"Answer an object for the aString domain, querying both the
	 language catalog (e.g. pt) and the territory catalog (e.g. pt_BR
	 or pt_PT). The localeDirectory is usually '<installprefix>/share/locale'."

	<category: 'opening MO files'>
	| primary secondary |
	self isPosixLocale ifTrue: [^self dummyDomain].
	primary := self domain: aString
		    directory: (self territoryDirectory: rootDirectory).
	secondary := self domain: aString
		    directory: (self languageDirectory: rootDirectory).

	"If we got only one catalog, just use it. If we got more than one
	 catalog, combine them through a LcMessagesTerritoryDomain."
	primary isNil 
	    ifTrue: 
		[secondary isNil ifFalse: [^secondary].
		^self dummyDomain].
	secondary isNil ifTrue: [^primary].
	^(LcMessagesTerritoryDomain basicNew)
	    id: self id;
	    primary: primary secondary: secondary yourself
    ]

    domain: aString directory: dirName [
	"Answer an object for the aString domain, looking in the given
	 directory for a valid MO file."

	<category: 'private'>
	| catalog |
	self isPosixLocale ifTrue: [^self dummyDomain].
	^LcMessagesDomain id: self id
	    on: dirName / aString , '.mo'
    ]

    dummyDomain [
	"Answer a dummy domain that does not do a translation"

	<category: 'private'>
	^LcMessagesDummyDomain basicNew id: self id
    ]
]



LocaleData subclass: LcMessagesDomain [
    | lastString lastCache messageCache pluralCache sourceCharset |
    
    <comment: 'This object is an abstract superclass for message domains (catalogs).
It contains methods to create instances of its subclasses, but they are
commonly used only by LcMessages.

Translations are accessed using either #at: or the shortcut binary
messages `?''.	This way, common idioms to access translated strings
will be

     string := NLS? ''abc''.
     string := self? ''abc''.

(in the first case NLS is a class variable, in the second the receiver
implements #? through delegation) which is only five or six characters
longer than the traditional

     string := ''abc''.

(cfr. the _("abc") idiom used by GNU gettext)'>
    <category: 'i18n-Messages'>

    LcMessagesDomain class >> id: anArray on: aFileName [
	"Create an instance of the receiver with a given locale identifier
	 from a path to the MO file"

	<category: 'opening MO files'>
	| stream found file |
	found := false.
	file := aFileName asFile.
	file exists
	    ifTrue: 
		[stream := file readStream.
		found := 
			[stream littleEndianMagicNumber: #[222 18 4 149]
			    bigEndianMagicNumber: #[149 4 18 222].
			stream nextLong = 0] 
				on: Error
				do: [:ex | ex return: false].
		found ifTrue: [stream reset] ifFalse: [stream close]].
	^found 
	    ifTrue: 
		[(LcMessagesMoFileVersion0 basicNew)
		    id: anArray;
		    initialize: stream]
	    ifFalse: [nil]
    ]

    ? aString [
	"Answer the translation of `aString', or answer aString itself
	 if none is available."

	<category: 'querying'>
	^self at: aString
    ]

    at: aString [
	"Answer the translation of `aString', or answer aString itself
	 if none is available."

	<category: 'querying'>
	| translation |
	aString == lastString 
	    ifFalse: 
		[lastString := aString.
		"Check the cache first"
		translation := nil.
		messageCache isNil 
		    ifFalse: [translation := messageCache at: aString ifAbsent: [nil]].
		translation isNil 
		    ifTrue: 
			[translation := self primAt: aString.
			translation isNil 
			    ifTrue: [translation := aString]
			    ifFalse: 
				["Check whether we must transliterate the translation.
				 Note that if we go through the transliteration we
				 automatically build a cache."

				sourceCharset notNil 
				    ifTrue: 
					[translation := (EncodedStream 
						    on: translation
						    from: sourceCharset
						    to: self charset) contents]].
			messageCache isNil ifFalse: [messageCache at: aString put: translation]].
		lastCache := translation].
	^lastCache
    ]

    at: singularString plural: pluralString with: n [
	"Answer either the translation of pluralString with `%1' replaced by
	 n if n ~= 1, or the translation of singularString if n = 1."

	<category: 'querying'>
	| composedString translation translit |
	(composedString := String new: singularString size + pluralString size + 1)
	    replaceFrom: 1
		to: singularString size
		with: singularString
		startingAt: 1;
	    at: singularString size + 1 put: Character nul;
	    replaceFrom: singularString size + 2
		to: composedString size
		with: pluralString
		startingAt: 1.
	translation := self primAtPlural: composedString with: n.
	translation isNil 
	    ifTrue: [^n = 1 ifTrue: [singularString] ifFalse: [pluralString]].

	"Check whether we must transliterate the translation.
	 Note that if we go through the transliteration we
	 automatically build a cache."
	sourceCharset notNil 
	    ifTrue: 
		[translit := pluralCache at: translation ifAbsent: [nil].
		translit isNil 
		    ifTrue: 
			[translit := (EncodedStream 
				    on: translation
				    from: sourceCharset
				    to: self charset) contents.
			pluralCache at: translation put: translit].
		translation := translit].
	^translation
    ]

    at: aString put: anotherString [
	<category: 'querying'>
	self shouldNotImplement
    ]

    translatorInformation [
	"Answer information on the translation, or nil if there is none.
	 This information is stored as the `translation' of an empty string."

	<category: 'querying'>
	| info |
	info := self primAt: ''.
	^info
    ]

    translatorInformationAt: key [
	"Answer information on the translation associated to a given key"

	<category: 'querying'>
	| config valueIndex valueEnd |
	config := self translatorInformation.
	valueIndex := config indexOfSubCollection: key , ': ' ifAbsent: [0].
	valueIndex = 0 ifTrue: [^nil].
	valueEnd := config indexOf: Character nl startingAt: valueIndex.
	valueEnd = 0 ifTrue: [^nil].
	^config copyFrom: valueIndex + key size + 2 to: valueEnd - 1
    ]

    translatorInformationAt: key at: subkey [
	"Answer information on the translation associated to a given key
	 and to a subkey of the key"

	<category: 'querying'>
	| config valueIndex valueEnd |
	config := self translatorInformationAt: key.
	valueIndex := config indexOfSubCollection: subkey , '=' ifAbsent: [0].
	valueIndex = 0 ifTrue: [^nil].
	valueEnd := config 
		    indexOf: $;
		    startingAt: valueIndex
		    ifAbsent: [config size + 1].
	^config copyFrom: valueIndex + subkey size + 1 to: valueEnd - 1
    ]

    shouldCache [
	"Answer whether translations should be cached.  Never override
	 this method to always answer false, because that would cause
	 bugs when transliteration is being used."

	<category: 'handling the cache'>
	^sourceCharset notNil
    ]

    flush [
	"Flush the receiver's cache of translations"

	<category: 'handling the cache'>
	lastString := lastCache := nil.

	"Check if we need to transliterate from one charset to another"
	sourceCharset := self translatorInformationAt: 'Content-Type' at: 'charset'.
	sourceCharset isNil 
	    ifFalse: 
		[sourceCharset asUppercase = self charset asUppercase 
		    ifTrue: [sourceCharset := nil]
		    ifFalse: [sourceCharset := sourceCharset asSymbol]].
	self shouldCache 
	    ifTrue: 
		[messageCache := LookupTable new.
		pluralCache := LookupTable new]
    ]

    primAt: aString [
	"Answer the translation of `aString', or answer nil
	 if none is available.  This sits below the caching and
	 transliteration operated by #?."

	<category: 'private'>
	self subclassResponsibility
    ]

    primAtPlural: composedString with: n [
	"Answer a translation of composedString (two nul-separated strings
	 with the English singular and plural) valid when %1 is replaced
	 with `n', or nil if none could be found.  This sits below the
	 caching and transliteration layer."

	<category: 'private'>
	self subclassResponsibility
    ]
]



LcMessagesDomain subclass: LcMessagesTerritoryDomain [
    | primary secondary |
    
    <comment: 'This object asks for strings to a primary domain (e.g. it_IT)
and a secondary one (e.g. it).'>
    <category: 'i18n-Messages'>

    LcMessagesTerritoryDomain class >> primary: domain1 secondary: domain2 [
	"Answer an instance of the receiver that queries, in sequence,
	 domain1 and domain2"

	<category: 'instance creation'>
	^self new primary: domain1 secondary: domain2
    ]

    primary: domain1 secondary: domain2 [
	<category: 'private'>
	primary := domain1.
	secondary := domain2.
	self flush
    ]

    primary [
	"Answer the first domain"

	<category: 'private'>
	^primary
    ]

    secondary [
	"Answer the second domain"

	<category: 'private'>
	^secondary
    ]

    primAt: aString [
	"Answer the translation of `aString', or answer nil
	 if none is available.  This sits below the caching and
	 transliteration operated by #?."

	<category: 'private'>
	| translation |
	translation := primary primAt: aString.
	translation isNil ifFalse: [^translation].
	^secondary primAt: aString
    ]

    primAtPlural: composedString with: n [
	"Answer a translation of composedString (two nul-separated strings
	 with the English singular and plural) valid when %1 is replaced
	 with `n', or nil if none could be found.  This sits below the
	 caching and transliteration layer."

	<category: 'private'>
	| primaryTranslation |
	primaryTranslation := primary primAtPlural: composedString with: n.
	^primaryTranslation isNil 
	    ifTrue: [secondary primAtPlural: composedString with: n]
	    ifFalse: [primaryTranslation]
    ]

    shouldCache [
	"Answer whether translations should be cached"

	"Yes we cache them here because we bypass the caches in primary
	 and secondary."

	<category: 'private'>
	^true
    ]
]



LcMessagesDomain subclass: LcMessagesDummyDomain [
    
    <comment: 'This object does no attempt to translate strings, returning
instead the same string passed as an argument to #?.'>
    <category: 'i18n-Messages'>

    primAt: aString [
	"Answer the translation of `aString', or answer nil
	 if none is available (which always happens in this class)."

	<category: 'private'>
	^nil
    ]

    primAtPlural: composedString with: n [
	"Answer a translation of composedString (two nul-separated strings
	 with the English singular and plural) valid when %1 is replaced
	 with `n', or nil if none could be found (which always happens in
	 this class)."

	<category: 'private'>
	^nil
    ]
]



LcMessagesDomain subclass: LcMessagesCatalog [
    | file |
    
    <comment: 'This object is an abstract superclass of objects that retrieve
translated strings from a file.'>
    <category: 'i18n-Messages'>

    file [
	"Answer the file from which we read the translations"

	<category: 'private'>
	^file
    ]

    initialize: stream [
	<category: 'private'>
	file := stream.
	self flush
    ]
]



LcMessagesCatalog subclass: LcMessagesMoFileVersion0 [
    | original translated firstCharMap emptyGroup pluralExpression |
    
    <comment: 'This object is an concrete class that retrieves translated strings
from a GNU gettext MO file.  The class method #fileFormatDescription
contains an explanation of the file format.'>
    <category: 'i18n-Messages'>

    DefaultPluralExpressions := nil.

    LcMessagesMoFileVersion0 class >> fileFormatDescription [
	"The Format of GNU MO Files (excerpt of the GNU gettext manual)
	 ==============================================================
	 
	 The format of the generated MO files is best described by a picture,
	 which appears below.
	 
	 The first two words serve the identification of the file.  The magic
	 number will always signal GNU MO files.	 The number is stored in the
	 byte order of the generating machine, so the magic number really is two
	 numbers: `0x950412de' and `0xde120495'.	 The second word describes the
	 current revision of the file format.  For now the revision is 0.  This
	 might change in future versions, and ensures that the readers of MO
	 files can distinguish new formats from old ones, so that both can be
	 handled correctly.  The version is kept separate from the magic number,
	 instead of using different magic numbers for different formats, mainly
	 because `/etc/magic' is not updated often.  It might be better to have
	 magic separated from internal format version identification.
	 
	 Follow a number of pointers to later tables in the file, allowing
	 for the extension of the prefix part of MO files without having to
	 recompile programs reading them.  This might become useful for later
	 inserting a few flag bits, indication about the charset used, new
	 tables, or other things.
	 
	 Then, at offset O and offset T in the picture, two tables of string
	 descriptors can be found.  In both tables, each string descriptor uses
	 two 32 bits integers, one for the string length, another for the offset
	 of the string in the MO file, counting in bytes from the start of the
	 file.  The first table contains descriptors for the original strings,
	 and is sorted so the original strings are in increasing lexicographical
	 order.	The second table contains descriptors for the translated
	 strings, and is parallel to the first table: to find the corresponding
	 translation one has to access the array slot in the second array with
	 the same index.
	 
	 Having the original strings sorted enables the use of simple binary
	 search, for when the MO file does not contain an hashing table, or for
	 when it is not practical to use the hashing table provided in the MO
	 file.  This also has another advantage, as the empty string in a PO
	 file GNU `gettext' is usually *translated* into some system information
	 attached to that particular MO file, and the empty string necessarily
	 becomes the first in both the original and translated tables, making
	 the system information very easy to find.
	 
	 The size S of the hash table can be zero.  In this case, the hash
	 table itself is not contained in the MO file.  Some people might prefer
	 this because a precomputed hashing table takes disk space, and does not
	 win *that* much speed.	The hash table contains indices to the sorted
	 array of strings in the MO file.  Conflict resolution is done by double
	 hashing.  The precise hashing algorithm used is fairly dependent of GNU
	 `gettext' code, and is not documented here.
	 
	 As for the strings themselves, they follow the hash file, and each
	 is terminated with a <NUL>, and this <NUL> is not counted in the length
	 which appears in the string descriptor.	 The `msgfmt' program has an
	 option selecting the alignment for MO file strings.  With this option,
	 each string is separately aligned so it starts at an offset which is a
	 multiple of the alignment value.  On some RISC machines, a correct
	 alignment will speed things up.
	 
	 Nothing prevents a MO file from having embedded <NUL>s in strings.
	 However, the program interface currently used already presumes that
	 strings are <NUL> terminated, so embedded <NUL>s are somewhat useless.
	 But MO file format is general enough so other interfaces would be later
	 possible, if for example, we ever want to implement wide characters
	 right in MO files, where <NUL> bytes may accidently appear.
	 
	 This particular issue has been strongly debated in the GNU `gettext'
	 development forum, and it is expectable that MO file format will evolve
	 or change over time.  It is even possible that many formats may later
	 be supported concurrently.  But surely, we have to start somewhere, and
	 the MO file format described here is a good start.  Nothing is cast in
	 concrete, and the format may later evolve fairly easily, so we should
	 feel comfortable with the current approach.
	 
	 byte
	 +------------------------------------------+
	 0  | magic number = 0x950412de		     |
	 |					     |
	 4  | file format revision = 0		     |
	 |					     |
	 8  | number of strings			     |	== N
	 |					     |
	 12  | offset of table with original strings    |	== O
	 |					     |
	 16  | offset of table with translation strings |	== T
	 |					     |
	 20  | size of hashing table		     |	== S
	 |					     |
	 24  | offset of hashing table		     |	== H
	 |					     |
	 .					     .
	 .    (possibly more entries later)	     .
	 .					     .
	 |					     |
	 O  | length & offset 0th string	----------------.
	 O + 8  | length & offset 1st string	------------------.
	 ...					  ...	| |
	 O + ((N-1)*8)| length & offset (N-1)th string	     |	| |
	 |					     |	| |
	 T  | length & offset 0th translation  ---------------.
	 T + 8  | length & offset 1st translation  -----------------.
	 ...					  ...	| | | |
	 T + ((N-1)*8)| length & offset (N-1)th translation	     |	| | | |
	 |					     |	| | | |
	 H  | start hash table			     |	| | | |
	 ...					  ...	| | | |
	 H + S * 4  | end hash table			     |	| | | |
	 |					     |	| | | |
	 | NUL terminated 0th string  <----------------' | | |
	 |					     |	  | | |
	 | NUL terminated 1st string  <------------------' | |
	 |					     |	    | |
	 ...					  ...	    | |
	 |					     |	    | |
	 | NUL terminated 0th translation  <---------------' |
	 |					     |	      |
	 | NUL terminated 1st translation  <-----------------'
	 |					     |
	 ...					  ...
	 |					     |
	 +------------------------------------------+
	 
	 Locating Message Catalog Files
	 ------------------------------
	 
	 Because many different languages for many different packages have to
	 be stored we need some way to add these information to file message
	 catalog files.	The way usually used in Unix environments is have this
	 encoding in the file name.  This is also done here.  The directory name
	 given in `bindtextdomain's second argument (or the default directory),
	 followed by the value and name of the locale and the domain name are
	 concatenated:
	 
	 DIR_NAME/LOCALE/LC_CATEGORY/DOMAIN_NAME.mo
	 
	 The default value for DIR_NAME is system specific.  For the GNU
	 library, and for packages adhering to its conventions, it's:
	 /usr/local/share/locale
	 
	 LOCALE is the value of the locale whose name is this `LC_CATEGORY'.
	 For `gettext' and `dgettext' this locale is always `LC_MESSAGES'."

	<category: 'documentation'>
	
    ]

    LcMessagesMoFileVersion0 class >> pluralExpressionFor: locale ifAbsent: aBlock [
	"Answer a RunTimeExpression yielding the plural form for the given
	 language and territory, if one is known, else evaluate aBlock and
	 answer it."

	<category: 'plurals'>
	^DefaultPluralExpressions at: locale language , '_' , locale territory
	    ifAbsent: [DefaultPluralExpressions at: locale language ifAbsent: aBlock]
    ]

    LcMessagesMoFileVersion0 class >> initialize [
	"Initialize a table with the expressions computing the plurals
	 for the most common languages"

	<category: 'plurals'>
	DefaultPluralExpressions := LookupTable new: 32.
	#(#(#('hu' 'ja' 'ko' 'tr') '0') #(#('da' 'nl' 'en' 'de' 'nb' 'no' 'nn' 'sv' 'et' 'fi' 'el' 'he' 'it' 'pt' 'es' 'eo') 'n != 1') #(#('fr' 'pt_BR') 'n > 1') #(#('lv') 'n%10==1 && n%100!=11 ? 0 : n != 0 ? 1 : 2') #(#('ga') 'n > 0 && n < 3 ? n-1 : 2') #(#('lt') 'n%10==1 && n%100!=11 ? 0
                   : n%10>=2 && (n%100<10 || n%100>=20) ? 1 : 2') #(#('hr' 'cs' 'ru' 'sk' 'uk') 'n%10==1 && n%100!=11 ? 0 
                   : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2') #(#('pl') 'n==1 ? 0 
                   : n%10>=2 && n%10<=4 && (n%100<10 || n%100>=20) ? 1 : 2') #(#('sl') 'n%100==1 ? 0 : n%100==2 ? 1 : n%100==3 || n%100==4 ? 2 : 3')) 
	    do: 
		[:each | 
		"latvian"

		"irish"

		| expr |
		expr := RunTimeExpression on: (each at: 2).
		(each at: 1) 
		    do: [:language | DefaultPluralExpressions at: language put: expr]]
    ]

    shouldCache [
	"Answer true, we always cache translations if they are read from
	 a file"

	<category: 'flushing the cache'>
	^true
    ]

    flush [
	"Flush the cache and reread the catalog's metadata."

	<category: 'flushing the cache'>
	| n oOfs tOfs sOfs hOfs |
	self file position: 8.
	n := self file nextLong.
	oOfs := self file nextLong.
	tOfs := self file nextLong.
	sOfs := self file nextLong.
	hOfs := self file nextLong.
	original := self readSegmentTable: oOfs size: n.
	translated := self readSegmentTable: tOfs size: n.
	self getFirstChars.
	super flush
    ]

    getFirstChars [
	"This implementation does a limited form of bucketing
	 to supply the speed lost by not implementing hashing. This
	 method prepares a table that subdivides strings according
	 to their first character."

	<category: 'private'>
	| lastIndex lastFirst |
	firstCharMap := Array new: 256.
	original doWithIndex: 
		[:segment :n | 
		| interval first |
		segment size = 0 
		    ifTrue: [emptyGroup := n to: n]
		    ifFalse: 
			["Read first character of the string"

			self file position: segment filePos.
			first := self file nextByte + 1.
			interval := firstCharMap at: first.
			interval isNil ifTrue: [firstCharMap at: first put: n]]].
	firstCharMap doWithIndex: 
		[:thisFirst :index | 
		thisFirst notNil 
		    ifTrue: 
			["Store an Interval at the lastIndex-th position"

			lastIndex notNil 
			    ifTrue: [firstCharMap at: lastIndex put: (lastFirst to: thisFirst - 1)].
			lastIndex := index.
			lastFirst := thisFirst]].

	"Finish the last position too"
	lastIndex notNil 
	    ifTrue: [firstCharMap at: lastIndex put: (lastFirst to: original size)]
    ]

    readSegmentTable: offset size: n [
	"Answer a table of n FileStreamSegments loaded from the
	 MO file, starting at the requested offset."

	<category: 'private'>
	self file position: offset.
	^(1 to: n) collect: 
		[:unused | 
		| size |
		size := self file nextLong.
		FileStreamSegment 
		    on: self file
		    startingAt: self file nextLong
		    for: size]
    ]

    binarySearch: aString from: low to: high [
	"Do a binary search on `original', searching for aString"

	<category: 'private'>
	| i j mid originalString result |
	i := low.
	j := high.
	[i > j] whileFalse: 
		[mid := (i + j + 1) // 2.
		originalString := original at: mid.
		originalString isString 
		    ifFalse: [originalString become: originalString asString].
		result := aString compareTo: originalString.
		result = 0 ifTrue: [^mid].
		result < 0 ifTrue: [j := mid - 1] ifFalse: [i := mid + 1]].
	^nil
    ]

    primAt: aString [
	"Translate aString, answer the translation or nil"

	<category: 'private'>
	| group n |
	group := aString isEmpty 
		    ifTrue: [emptyGroup]
		    ifFalse: [firstCharMap at: (aString at: 1) value + 1].
	group isNil ifTrue: [^nil].
	n := self 
		    binarySearch: aString
		    from: group first
		    to: group last.
	^n isNil ifTrue: [nil] ifFalse: [(translated at: n) asString]
    ]

    primAtPlural: composedString with: n [
	"Answer a translation of composedString (two nul-separated strings
	 with the English singular and plural) valid when %1 is replaced
	 with `n', or nil if none could be found.  This sits below the
	 caching and transliteration layer."

	<category: 'private'>
	"Why don't we call #at:, which would have the advantage of caching
	 the plural forms? Because #at: transliterates, and transliterating
	 at this point could cause bugs if nuls are massaged (e.g. UTF7, UCS4)."

	| pluralStrings index endIndex |
	pluralStrings := self primAt: composedString.
	pluralStrings isNil ifTrue: [^nil].

	"Find the start of the string in the composed string"
	index := 1.
	(self pluralFormFor: n) timesRepeat: 
		[index := 1 + (pluralStrings 
				    indexOf: Character nul
				    startingAt: index
				    ifAbsent: [pluralStrings size + 1])].

	"Find the end of the string in the composed string"
	index > pluralStrings size 
	    ifFalse: 
		[endIndex := (pluralStrings 
			    indexOf: Character nul
			    startingAt: index
			    ifAbsent: [pluralStrings size + 1]) - 1.
		^pluralStrings copyFrom: index to: endIndex].

	"Fallback case, use standard rule for Germanic languages."
	^nil
    ]

    pluralFormFor: n [
	"Answer the index of the plural form that must be used for a value
	 of `n'."

	<category: 'private'>
	^self pluralExpression value: n
    ]

    pluralExpression [
	"Answer a RunTimeExpression which picks the correct plural
	 form for the catalog"

	<category: 'private'>
	| config |
	pluralExpression isNil 
	    ifTrue: 
		[config := self translatorInformationAt: 'Plural-Forms' at: 'plural'.
		pluralExpression := config isNil 
			    ifFalse: [RunTimeExpression on: config]
			    ifTrue: 
				[self class pluralExpressionFor: self
				    ifAbsent: [RunTimeExpression on: '(n != 1)']]].
	^pluralExpression
    ]
]



FileStream subclass: BigEndianFileStream [
    
    <category: 'i18n-Messages'>
    <comment: 'Unlike ByteStream and FileStream, this retrieves integer numbers in
big-endian (68000, PowerPC, SPARC) order.'>

    nextBytes: n signed: signed [
	"Private - Get an integer out of the next anInteger bytes in the stream"

	<category: 'private - endianness switching'>
	| int |
	int := 0.
	int := self nextByte.
	(signed and: [int > 127]) ifTrue: [int := int - 256].
	int := int bitShift: n * 8 - 8.
	n * 8 - 16 to: 0
	    by: -8
	    do: [:i | int := int + (self nextByte bitShift: i)].
	^int
    ]

    nextPutBytes: n of: anInteger [
	"Private - Store the n least significant bytes of int in big-endian format"

	<category: 'private - endianness switching'>
	| int |
	int := anInteger < 0 
		    ifTrue: [anInteger + (1 bitShift: 8 * n)]
		    ifFalse: [anInteger].
	(8 - n) * 8 to: 0
	    by: 8
	    do: [:i | self nextPutByte: ((int bitShift: i) bitAnd: 255)]
    ]
]



FileSegment subclass: FileStreamSegment [
    
    <category: 'i18n-Messages'>
    <comment: 'Unlike FileSegment, this object assumes that the `file'' instance
variable is a FileStream, not a file name.'>

    withFileDo: aBlock [
	"Evaluate aBlock, passing a FileStream corresponding to the file"

	<category: 'basic'>
	^aBlock value: self getFile
    ]

    fileName [
	"Answer the name of the file containing the segment"

	<category: 'basic'>
	^self getFile name
    ]
]



FileStream extend [

    littleEndianMagicNumber: le bigEndianMagicNumber: be [
	"Change the receiver to a BigEndianFileStream if the
	 next bytes are equal to `be', do nothing if they're equal
	 to `le'; fail if the two parameters have different sizes,
	 or if neither of them matches the next bytes.  The position
	 in the file is not touched if matching fails, else it is
	 moved past the signature."

	<category: 'endianness checking'>
	| magic |
	le size = be size 
	    ifFalse: [self error: 'mismatching sizes for big-endian and little-endian'].
	magic := (self next: le size) asByteArray.
	magic = be ifTrue: [self changeClassTo: I18N.BigEndianFileStream].
	magic = le 
	    ifFalse: 
		[self skip: le size negated.
		self error: 'mismatching magic number']
    ]

]



Eval [
    LcMessagesMoFileVersion0 initialize
]

PK
     gwB����  �  
  Numbers.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   LC_NUMERIC and LC_MONETARY support
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2001, 2002 Free Software Foundation, Inc.
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
| along with the GNU Smalltalk class library; see the file COPYING.LESSER.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.  
|
 ======================================================================"



LcPrintFormats subclass: LcNumeric [
    | decimalPoint thousandsSep grouping |
    
    <comment: 'Sending either #?, #printString: or #print:on: converts a Number to
a String according to the rules that are used in the given locale.'>
    <category: 'i18n-Printing'>

    LcNumeric class >> category [
	"Answer the environment variable used to determine the default
	 locale"

	<category: 'accessing'>
	^#LC_NUMERIC
    ]

    LcNumeric class >> selector [
	"Answer the selector that accesses the receiver when sent to a Locale
	 object."

	<category: 'accessing'>
	^#numeric
    ]

    basicPrint: aNumber on: aStream [
	"Print aNumber on aStream according to the receiver's
	 formatting conventions, without currency signs or
	 anything like that.  This method must not be overridden."

	<category: 'printing'>
	| n nonLocalized stream decimal |
	nonLocalized := aNumber asBasicNumberType printString.
	decimal := nonLocalized indexOf: $. ifAbsent: [nonLocalized size + 1].
	stream := ReadWriteStream on: nonLocalized.
	stream
	    position: decimal;
	    truncate;
	    reset.
	self 
	    printIntegerPart: stream
	    size: decimal - 1
	    on: aStream.
	self 
	    printFractionalPart: nonLocalized
	    startingAt: decimal + 1
	    on: aStream
    ]

    print: aNumber on: aStream [
	"Print aNumber on aStream according to the receiver's
	 formatting conventions."

	<category: 'printing'>
	self basicPrint: aNumber on: aStream
    ]

    printIntegerPart: stream size: size on: aStream [
	<category: 'private'>
	| groupings left |
	(thousandsSep isEmpty or: [grouping isEmpty]) 
	    ifTrue: 
		[aStream nextPutAll: stream contents.
		^self].
	groupings := self computeGroupSizes: size.
	left := size.
	groupings reverseDo: 
		[:num | 
		left := left - num.
		num timesRepeat: [aStream nextPut: stream next].
		left > 0 ifTrue: [aStream nextPutAll: thousandsSep]]
    ]

    computeGroupSizes: size [
	<category: 'private'>
	| howMany foundZero n left |
	howMany := self computeNumberOfGroups: size.
	left := size.
	howMany = 0 ifTrue: [^Array with: size].
	^(1 to: howMany) collect: 
		[:index | 
		| next |
		index > grouping size ifFalse: [n := grouping at: index].
		n = 255 ifTrue: [n := left].
		left := left - n.
		left < 0 ifTrue: [left + n] ifFalse: [n]]
    ]

    computeNumberOfGroups: size [
	<category: 'private'>
	| left last n |
	left := size.
	n := 0.
	grouping isEmpty ifTrue: [^0].
	grouping do: 
		[:each | 
		n := n + 1.
		each >= 255 ifTrue: [^n].
		left < each ifTrue: [^n].
		left := left - each.
		last := each].
	^n + (left // last)
    ]

    printFractionalPart: string startingAt: decimal on: aStream [
	<category: 'private'>
	decimal > string size ifTrue: [^self].
	aStream nextPutAll: decimalPoint.
	aStream nextPutAll: (string copyFrom: decimal to: string size)
    ]
]



LcNumeric subclass: LcMonetary [
    | currencySymbol positiveSign negativeSign fracDigits pCsPrecedes pSepBySpace nCsPrecedes nSepBySpace pSignPosn nSignPosn |
    
    <comment: 'Sending either #?, #printString: or #print:on: converts a Number to
a String according to the rules that are mandated by ISO for printing
currency amounts in the current locale.'>
    <category: 'i18n-Printing'>

    LcMonetary class >> category [
	"Answer the environment variable used to determine the default
	 locale"

	<category: 'accessing'>
	^#LC_MONETARY
    ]

    LcMonetary class >> selector [
	"Answer the selector that accesses the receiver when sent to a Locale
	 object."

	<category: 'accessing'>
	^#monetary
    ]

    print: aNumber on: aStream [
	"Print aNumber on aStream according to the receiver's
	 formatting conventions.  Always print a currency sign
	 and don't force to print negative numbers by putting
	 parentheses around them."

	<category: 'printing'>
	self 
	    print: aNumber
	    on: aStream
	    currency: true
	    parentheses: false
    ]

    print: aNumber on: aStream currency: currency parentheses: p [
	"Print aNumber on aStream according to the receiver's
	 formatting conventions.  If currency is true, print a
	 currency sign, and if p is true force to print negative
	 numbers by putting parentheses around them.  If p is true,
	 for positive numbers spaces are put around the number
	 to keep them aligned."

	<category: 'printing'>
	| signChar signPos csPrecedes sepBySpace paren |
	paren := p.
	aNumber < 0 
	    ifTrue: 
		[csPrecedes := nCsPrecedes.
		sepBySpace := nSepBySpace.
		signPos := nSignPosn.
		signChar := negativeSign.
		signPos = 0 ifTrue: [paren := true].
		paren ifTrue: [signChar := '()']]
	    ifFalse: 
		[csPrecedes := pCsPrecedes.
		sepBySpace := pSepBySpace.
		signPos := pSignPosn.
		signChar := positiveSign.

		"Contrast paren = true with signPos = 0: the former
		 prints spaces, the latter prints nothing for positive
		 numbers!"
		paren ifTrue: [signChar := '  ']].

	"Set default values and tweak signPos if parentheses are needed"
	paren ifTrue: [signPos := 0].
	paren ifTrue: [aStream nextPut: (signChar at: 1)].
	signPos = 1 ifTrue: [aStream nextPutAll: signChar].
	csPrecedes 
	    ifTrue: 
		[signPos = 3 ifTrue: [aStream nextPutAll: signChar].
		currency 
		    ifTrue: 
			[aStream nextPutAll: currencySymbol.
			sepBySpace ifTrue: [aStream space]].
		signPos = 4 ifTrue: [aStream nextPutAll: signChar]].
	self basicPrint: aNumber abs on: aStream.
	csPrecedes 
	    ifFalse: 
		[signPos = 3 ifTrue: [aStream nextPutAll: signChar].
		currency 
		    ifTrue: 
			[sepBySpace ifTrue: [aStream space].
			aStream nextPutAll: currencySymbol].
		signPos = 4 ifTrue: [aStream nextPutAll: signChar]].
	signPos = 2 ifTrue: [aStream nextPutAll: signChar].
	paren ifTrue: [aStream nextPutAll: (signChar at: 2)]
    ]

    printFractionalPart: string startingAt: decimal on: aStream [
	<category: 'private'>
	| last zeros digits |
	fracDigits = 0 ifTrue: [^self].
	fracDigits = 127 ifTrue: [^self].
	last := decimal + fracDigits - 1.
	zeros := last - string size max: 0.
	aStream
	    nextPutAll: decimalPoint;
	    nextPutAll: (string copyFrom: decimal to: last - zeros);
	    next: zeros put: $0
    ]
]



LcMonetary subclass: LcMonetaryISO [
    
    <comment: nil>
    <category: 'i18n-Printing'>

    LcMonetaryISO class >> selector [
	"Answer the selector that accesses the receiver when sent to a Locale
	 object."

	<category: 'accessing'>
	^#monetaryIso
    ]
]



Number extend [

    asBasicNumberType [
	<category: 'coercion'>
	^self asFloat
    ]

]



Integer extend [

    asBasicNumberType [
	<category: 'coercion'>
	^self
    ]

]



Float extend [

    asBasicNumberType [
	<category: 'coercion'>
	^self
    ]

]

PK
     gwB�6��3  �3    Times.stUT	 �NQ�NQux �e  d   "======================================================================
|
|   LC_TIME support
|
|
 ======================================================================"

"======================================================================
|
| Copyright 2001, 2002 Free Software Foundation, Inc.
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
| MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.	See the GNU Lesser
| General Public License for more details.
|
| You should have received a copy of the GNU Lesser General Public License
| along with the GNU Smalltalk class library; see the file COPYING.LESSER.
| If not, write to the Free Software Foundation, 59 Temple Place - Suite
| 330, Boston, MA 02110-1301, USA.
|
 ======================================================================"



LcPrintFormats subclass: LcTime [
    | abday day abmon mon amPm dtFmt dFmt tFmt tFmtAmPm altDigits |
    
    <comment: 'Sending either #?, #printString: or #print:on: converts a Date or Time
to a String according to the rules that are used in the given locale.'>
    <category: 'i18n-Printing'>

    LcTime class >> category [
	"Answer the environment variable used to determine the default
	 locale"

	<category: 'accessing'>
	^#LC_TIME
    ]

    LcTime class >> selector [
	"Answer the selector that accesses the receiver when sent to a Locale
	 object."

	<category: 'accessing'>
	^#time
    ]

    print: aDateOrTimeOrArray on: aStream [
	"Print aDateOrTimeOrArray on aStream according to the receiver's
	 formatting conventions.  It can be a Date, Time, DateTime, or
	 an array made of a Date and a Time"

	<category: 'printing'>
	^self 
	    print: aDateOrTimeOrArray
	    on: aStream
	    ifFull: dtFmt
	    ifDate: dFmt
	    ifTime: tFmt
    ]

    print: aDate time: aTime format: aString on: aStream [
	"Print the specified date and time on aStream according to the
	 receiver's formatting conventions, using the given format.
	 The valid abbreviations are the same used by the C function
	 strftime:
	 abbreviated weekday	      (%a)
	 weekday			      (%A)
	 abbreviated month	      (%b)
	 month			      (%B)
	 date & time		      (%c)
	 century			      (%C)
	 day of the month	      (%d)
	 date (US)		      (%D)
	 day of the month	      (%e)
	 year for the ISO week	      (%g)
	 year for the ISO week	      (%G)
	 abbreviated month	      (%h)
	 hours			      (%H)
	 hours (AM/PM)		      (%I)
	 day of the year		      (%j)
	 hours			      (%k)
	 hours (AM/PM)		      (%l)
	 month			      (%m)
	 minutes			      (%M)
	 AM/PM			      (%p)
	 lowercase AM/PM		      (%P)
	 AM/PM time		      (%r)
	 time (US)		      (%R)
	 time_t			      (%s)
	 seconds			      (%S)
	 time (US)		      (%T)
	 day of the week		      (%u)
	 week number starting at Sun   (%U)
	 week number starting at Thu   (%V)
	 day of the week, Sunday=0     (%w)
	 week number starting at Mon   (%W)
	 date			      (%x)
	 time			      (%X)
	 year (2-digit)		      (%y)
	 year (4-digit)		      (%Y)."

	<category: 'printing'>
	| what |
	what := 
		{aDate.
		aTime}.
	self 
	    strftime: what
	    format: aString readStream
	    on: aStream
    ]

    print: aDateOrTimeOrArray on: aStream ifFull: fullFmt ifDate: dateFmt ifTime: timeFmt [
	"Print aDateOrTimeOrArray on aStream according to the receiver's
	 formatting conventions.  It can be a Date, Time, DateTime, or
	 an array made of a Date and a Time: Date is printed with
	 dateFmt and Time with timeFmt, while in the other cases
	 fullFmt is used.  For information on the formatting codes,
	 see #print:time:format:on:."

	<category: 'printing'>
	| what format |
	format := fullFmt.
	what := aDateOrTimeOrArray.
	aDateOrTimeOrArray class == Date 
	    ifTrue: 
		[what := Array with: aDateOrTimeOrArray with: nil.
		format := dateFmt].
	aDateOrTimeOrArray class == Time 
	    ifTrue: 
		[what := Array with: nil with: aDateOrTimeOrArray.
		format := timeFmt].
	^self 
	    strftime: what
	    format: format readStream
	    on: aStream
    ]

    allFormatsExample [
	"Answer a long string that includes all the possible formats"

	<category: 'tests'>
	^'
%%a   %tabbreviated weekday	      %a
%%A   %tweekday			      %A
%%b   %tabbreviated month	      %b
%%B   %tmonth			      %B
%%c   %tdate & time		      %c
%%C   %tcentury			      %C
%%d   %tday of the month	      %d
%%D   %tdate (US)		      %D
%%e   %tday of the month	      %e
%%g   %tyear for the ISO week	      %g
%%G   %tyear for the ISO week	      %G
%%h   %tabbreviated month	      %h
%%H   %thours			      %H
%%I   %thours (AM/PM)		      %I
%%j   %tday of the year		      %j
%%k   %thours			      %k
%%l   %thours (AM/PM)		      %l
%%m   %tmonth			      %m
%%M   %tminutes			      %M
%%p   %tAM/PM			      %p
%%P   %tlowercase AM/PM		      %P
%%r   %tAM/PM time		      %r
%%R   %ttime (US)		      %R
%%s   %ttime_t			      %s
%%S   %tseconds			      %S
%%T   %ttime (US)		      %T
%%u   %tday of the week		      %u
%%U   %tweek number starting at Sun   %U
%%V   %tweek number starting at Thu   %V
%%w   %tday of the week, Sunday=0     %w
%%W   %tweek number starting at Mon   %W
%%x   %tdate			      %x
%%X   %ttime			      %X
%%y   %tyear (2-digit)		      %y
%%Y   %tyear (4-digit)		      %Y%n'
    ]

    strftime: timestamp format: formatStream on: aStream [
	<category: 'private'>
	| d t |
	d := timestamp at: 1.
	t := timestamp at: 2.
	[formatStream atEnd] whileFalse: 
		[aStream nextPutAll: (formatStream upTo: $%).
		self 
		    strftimeField: timestamp
		    format: formatStream
		    on: aStream
		    date: d
		    time: t]
    ]

    strftimeField: timestamp format: formatStream on: aStream date: d time: t [
	"OUCH! This methods is 300+ lines long... but we need re-entrancy, and
	 I don't want to create a separate object to print a particular
	 date & time pair."

	<category: 'private'>
	| pad padTo ch output fmt case invertCase modifier dow |
	pad := nil.
	padTo := 1.
	case := #yourself.
	invertCase := false.
	
	[ch := formatStream next.
	ch == $_ 
	    ifTrue: 
		[pad := $ .
		true]
	    ifFalse: 
		[ch == $- 
		    ifTrue: 
			[pad := nil.
			true]
		    ifFalse: 
			[ch == $0 
			    ifTrue: 
				[pad := $0.
				true]
			    ifFalse: 
				[ch == $^ 
				    ifTrue: 
					[case := #asUppercase.
					true]
				    ifFalse: 
					[(ch == $#)
					    ifTrue: [invertCase := true];
					    yourself]]]]] 
		whileTrue.
	modifier := nil.
	ch == $E ifTrue: [modifier := $E].
	ch == $O ifTrue: [modifier := $O].
	modifier isNil ifFalse: [ch := formatStream next].
	ch == $% ifTrue: [output := '%'].

	"Abbreviated weekday"
	ch == $a 
	    ifTrue: 
		[dow := (d days + 2) \\ 7 + 1.
		output := abday at: dow.
		invertCase ifTrue: [case := #asUppercase]].

	"Weekday"
	ch == $A 
	    ifTrue: 
		[dow := (d days + 2) \\ 7 + 1.
		output := day at: dow.
		invertCase ifTrue: [case := #asUppercase]].

	"Abbreviated month"
	(ch == $b or: [ch == $h]) 
	    ifTrue: 
		[output := abmon at: d month.
		invertCase ifTrue: [case := #asUppercase]].

	"Month"
	ch == $B 
	    ifTrue: 
		[output := mon at: d month.
		invertCase ifTrue: [case := #asUppercase]].

	"Full date"
	ch == $c 
	    ifTrue: 
		[fmt := dtFmt.
		output := String streamContents: 
				[:stream | 
				self 
				    strftime: timestamp
				    format: fmt readStream
				    on: stream]].

	"Century"
	ch == $C ifTrue: [output := d year // 100].

	"Day of month"
	ch == $d 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := d day].

	"Date (month/day/year)"
	ch == $D 
	    ifTrue: 
		[output := String streamContents: 
				[:stream | 
				self 
				    strftime: timestamp
				    format: '%m/%d/%y' readStream
				    on: stream]].

	"Day of month"
	ch == $e 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $ ].
		padTo := 2.
		output := d day].

	"Hours"
	ch == $H 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := t hours].

	"Hours (12-hours format)"
	ch == $I 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := t hours \\ 12.
		output = 0 ifTrue: [output := 12]].

	"Day of year"
	ch == $j 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 3.
		output := d dayOfYear].

	"Hours"
	ch == $k 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $ ].
		padTo := 2.
		output := t hours].

	"Hours (12-hours format)"
	ch == $l 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $ ].
		padTo := 2.
		output := t hours \\ 12.
		output = 0 ifTrue: [output := 12]].

	"Month"
	ch == $m 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := d month].

	"Minutes"
	ch == $M 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := t minutes].

	"Newline"
	ch == $n ifTrue: [output := Character nl asString].

	"AM/PM"
	ch == $p 
	    ifTrue: 
		[output := amPm at: t hours // 12 + 1.
		invertCase ifTrue: [case := #asLowercase]].

	"Lowercase AM/PM"
	ch == $P 
	    ifTrue: 
		[output := amPm at: t hours // 12 + 1.
		case := #asLowercase].

	"AM/PM time"
	ch == $r 
	    ifTrue: 
		[output := String streamContents: 
				[:stream | 
				self 
				    strftime: timestamp
				    format: tFmtAmPm readStream
				    on: stream]].

	"Hours:Minutes time"
	ch == $R 
	    ifTrue: 
		[output := String streamContents: 
				[:stream | 
				self 
				    strftime: timestamp
				    format: '%H:%M' readStream
				    on: stream]].

	"Seconds since 1/1/1970"
	ch == $s 
	    ifTrue: 
		[output := Date 
			    newDay: 1
			    monthIndex: 1
			    year: 1970.
		output := d isNil ifTrue: [0] ifFalse: [(d subtractDate: output) * 86400].
		output := t isNil ifTrue: [output] ifFalse: [output + t asSeconds]].

	"Seconds since 1/1/1970"
	ch == $S 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := t seconds].

	"Tab"
	ch == $t ifTrue: [output := Character tab asString].

	"Hours:Minutes:Seconds time"
	ch == $T 
	    ifTrue: 
		[output := String streamContents: 
				[:stream | 
				self 
				    strftime: timestamp
				    format: '%H:%M:%S' readStream
				    on: stream]].

	"Day of week, 1=Monday, 7=Sunday"
	ch == $u ifTrue: [output := d dayOfWeek].

	"Week, first day=Sunday, 0 if before first Sunday"
	ch == $U 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := d weekStartingAt: 7].

	"Week, first day=Thursday, 52 or 53 if before first Thursday"
	ch == $V 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := d weekStartingAt: 4.
		output = 0 ifTrue: [output := (d subtractDays: d day) weekStartingAt: 4]].

	"Day of week, Sunday=0, Saturday=6"
	ch == $w ifTrue: [output := d dayOfWeek \\ 7].

	"Week, first day=Monday, 0 if before first Monday"
	ch == $W 
	    ifTrue: 
		[pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := d weekStartingAt: 1].

	"Date"
	ch == $x 
	    ifTrue: 
		[fmt := dFmt.
		output := String streamContents: 
				[:stream | 
				self 
				    strftime: timestamp
				    format: fmt readStream
				    on: stream]].

	"Time"
	ch == $X 
	    ifTrue: 
		[fmt := tFmt.
		output := String streamContents: 
				[:stream | 
				self 
				    strftime: timestamp
				    format: fmt readStream
				    on: stream]].

	"Current year or (if `g' and before first Thursday of the year) previous
	 year; 2 digits."
	(ch == $y or: [ch == $g]) 
	    ifTrue: 
		[output := d year.
		ch == $g 
		    ifTrue: [(d weekStartingAt: 4) = 0 ifTrue: [output := output - 1]].
		pad isNil ifTrue: [pad := $0].
		padTo := 2.
		output := output \\ 100].

	"Current year or (if `g' and before first Thursday of the year) previous
	 year; 4 digits."
	(ch == $Y or: [ch == $G]) 
	    ifTrue: 
		[output := d year.
		ch == $G 
		    ifTrue: [(d weekStartingAt: 4) = 0 ifTrue: [output := output - 1]].
		pad isNil ifTrue: [pad := $ ].
		padTo := 4].
	ch == $Z ifTrue: [output := ''].
	output isNil 
	    ifTrue: 
		[output := ch asString.
		case := #yourself].
	(output isInteger and: [modifier == $O]) 
	    ifTrue: 
		[modifier := nil.
		output < altDigits size ifTrue: [output := altDigits at: output + 1]].
	modifier isNil ifFalse: [self error: 'invalid modifier specified'].
	output isInteger 
	    ifTrue: 
		[output := output printString.
		pad isNil 
		    ifFalse: 
			[ch := $0.
			padTo - output size timesRepeat: 
				[(output at: 1) == $- 
				    ifTrue: 
					[output at: 1 put: $0.
					ch := $-].
				aStream nextPut: ch.
				ch := $0]].
		case := #yourself].
	output := output perform: case.
	aStream nextPutAll: output
    ]
]



Date extend [

    weekStartingAt: startDay [
	<category: 'calculations'>
	| yday wday weekDayJan1 first |
	yday := self dayOfYear - 1.	"January 1st = 0"
	wday := self dayOfWeek.
	weekDayJan1 := (wday - yday) \\ 7.	"week day for January 1st"
	first := (startDay - weekDayJan1) \\ 7.	"day of year for first startDay"
	^(yday - first) // 7 + 1
    ]

]

PK    gwB��u��
  R$  	  ChangeLogUT	 �NQ�NQux �e  d   �YmS�:���
u�B��JٻLy+��NSn�[W��D��H2����s$��K C�t. �GG��9�9���7
��.!_��9�/�rB����>���r~���ޓ��wt���$>$�X"�I�Qy��,�E��3�#��\��~�G��h��S�Ts��J�33�J9�7��Q���٣�Rh�I���4�7��E�=�,��V���_�3n��jFB�-%�/4Y2*���G4�(�(�J�4fF�k4�F&y�M}�%��K�	c�Q<����7X�L���|e�2����A�	h	�`�����<��mc|�L�".�{AWW��A��2�m�C�ޗY���z���B�MBt��=��I�CL$D+�U)i��b���Vw=�"r��j���ӵ���4a$Q����/�'4���R48~�Q�|ll������X41�>:ڠ�6�dW���4U1�LB��{<m����p���#Q����>ީI���N!�hҊ'���pI�^�HUn7���>�2'7�$
�d��["�  "�L�0c
Y*
���3���c}f#�����x��#4m�|�}�=��3)�ǜhEJg���&P�.z��R QWd�X���pj�h�� A��;�CM��l�~��l��0�O�D��%ehKI�+��������^N�ܞN���.:O����q '�B�d���K�����=�F��ho:U�1#����HH��C��؍P$�P�pgCa���r=Y>���D �$����c��d�������|�Cb5J�R[���$�de�#.I8����^s;bqisW;.S���/,�"Irx	+o)%�g+B�M����{�y���F�g�th%��Hq*׉���������y2e�fV�C}��"3!W�m��n[��<E� ��M��T-��n�~��y�����8�_%c�@8����=�Dp�ʢ�G��ժ��4�
�C���b<k���ԃ1�Y��L��b��:�x��k'��L ��$ˤ!��g���*��\#?.���~=����xp��=�CG�S##?hЉ1��n�X҉�� ���lk��NE�	�OI�� i?�y*�?)�M(���\eu��X(�-<׈�qR-�f	��^,�8�w'*��:
�3� �,a��2���~���#���{.�/�x,��L֨^����y���;C53��?2UѥSԭ�f%�����%�K��2�Y唽�o\O��?�ّ��Nv�l����{�C����i#�r�6a�(�OD���w�J����ҥT$vlx�V��9Y���HC�h����a�u�:7�珀�J�	#y��t�-^6�B��8�R�߲8����T���[�=�?�������41�����o�#l�-lԹ�o
k6�FXצ�)lM��������c���D�����=��h�j|�ٍ���5�*r"q�iXD"��a�w����!��m��~f[}L���FB=��4�{�1ת3�~�W#qw�u��uÂ�X��#�,��Y�3��n/�-v�T1S��鉫��H�L����qv�:�A�+�j
���ة:t�t(8��}��{Lב�{�c��[-��Pط��ذ�;Dm�=d�h]�CC�Wq3A$��ё��3hf|�g`e��+��D,n?((�d:�)�P�`K�~�c[�,��30a��v6T�G���ܑ�K��@����id;5x�)`|���h0���������fB����!\�8�`�hY�=kXף�f��AƳ�H���	�Nzy���`�=]������9����洋��Ws��ߡ�&�ˋ��ş����.Wv<]7x�U�	zqh�?��`s�8 �^Z'?HP�$NK���B���!�����ޔky�&ݰg�j� ��n3D�{3�Y@�c�3��R@�CI3���y�kOX����n ���Q��?����3�rY��dxeW8��F���jRX�FQv�`�}_Q|k�`G��6�V�2�@��$w�H`2�q
�]N4��\���Dp�(��S��U��[���٭%;�n�G�0�F:��>}s|�ܯxԞ?6�5��ڥm��U�v�ɿ.'���p�P(3���J����ٍ��!���R��;����=	'���0�������"���f�X!/�{~{���m6���{vȇd���O3=-�� �6Kt/`	g�s���W�_.6�B� �2 ��+7�p����M(�|���6��p�(� �]��^����L#�iw	��v��	p�r�VXA�>�u094�;��ڲ��4�ϱ���*4N��O��}�:|��\��(�$W,BF���Ƙ�4��U݊���YgB�9��s3NG��sx���"�{n6oJ���~b�@q�� #i���+�i�~y��@h��+�4�1�s� f�ʵb��&
�3�q#�4�e����}�
����|�c�D��6�R�g����(W���[C� Zz�Uu��xϹ�H[���lՃ�ՐB�Ʀjc�:�X=�|��I������A�Z!3K?͗��2O�5�Z���xT�ƣ
n5����
��Gy�LU]F��,�Q�f��d�"^�Xvv�����A5��se�օ��W�P,��h�
^�ۺY[��+R��CZ�'��PK
     {I����'  '            ��    package.xmlUT �5�Wux �e  d   PK
     gwBxΫ��J  �J  	          ��l  Locale.stUT �NQux �e  d   PK
     gwB���(  �(            ���L  Expression.stUT �NQux �e  d   PK
     gwB����t  �t  
          ���u  GetText.stUT �NQux �e  d   PK
     gwB����  �  
          ����  Numbers.stUT �NQux �e  d   PK
     gwB�6��3  �3            ���	 Times.stUT �NQux �e  d   PK    gwB��u��
  R$  	         ��}= ChangeLogUT �NQux �e  d   PK      0  KH   