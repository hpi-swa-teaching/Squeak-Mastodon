as yet unclassified
timestampFromString: aString 
	"Parses following date format: 'Sat Jun 25 14:56:57 +0000 2016'"
	| dateParts newFormat |
	dateParts := aString splitBy: ' '.
	newFormat := (MTUtils
				monthStringToNumber: (dateParts at: 2)) asString , '-'
				, (dateParts at: 3) , '-'
				, (dateParts at: 6) , ' '
				, (dateParts at: 4).
	^ TimeStamp fromString: newFormat
