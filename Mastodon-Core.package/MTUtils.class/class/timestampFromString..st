time-conversion
timestampFromString: aString 
	"Parses following date format: '2017-06-19T14:17:34.000Z'"
	"to be '1-10-2000 11:55:00 am'"
	| dateParts newFormat splitted timeParts |
	splitted := aString splitBy: 'T'.
	dateParts := (splitted at: 1) splitBy: '-'.
	timeParts := (splitted at: 2) splitBy: '.'.
	newFormat := ((dateParts at: 2) , '-'
				, (dateParts at: 3) , '-'
				, (dateParts at: 1), ' '
				, (timeParts at: 1)).
	^ TimeStamp fromString: newFormat
