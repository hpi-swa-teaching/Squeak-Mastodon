helper
stringToBool: aString

	aString ifNil: [^ false].
	^ aString