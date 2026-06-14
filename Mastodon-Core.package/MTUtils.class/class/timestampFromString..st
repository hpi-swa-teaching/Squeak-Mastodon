time-conversion
timestampFromString: aString

	| dateParts newFormat splitted timeParts |
	splitted := aString splitBy: 'T'.
	dateParts := (splitted at: 1) splitBy: '-'.
	timeParts := (splitted at: 2) splitBy: '.'.
	newFormat := (dateParts at: 2), '-', (dateParts at: 3), '-', (dateParts at: 1), ' ', (timeParts at: 1).
	^ TimeStamp fromString: newFormat