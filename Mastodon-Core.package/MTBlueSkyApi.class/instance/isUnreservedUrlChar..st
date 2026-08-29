helpers
isUnreservedUrlChar: char

	char isAscii ifFalse: [^ true].
	^ char isLetter or: [char isDigit or: ['-._~' includes: char]]