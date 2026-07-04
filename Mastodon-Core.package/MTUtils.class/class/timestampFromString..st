time-conversion
timestampFromString: aString

	| dateParts newFormat splitted timeParts |
	splitted := aString splitBy: 'T'.
	dateParts := (splitted first) splitBy: '-'.
	timeParts := (splitted second) splitBy: '.'.
	newFormat := (dateParts second), '-', (dateParts third), '-', (dateParts first), ' ', (timeParts first).
	^ TimeStamp fromString: newFormat