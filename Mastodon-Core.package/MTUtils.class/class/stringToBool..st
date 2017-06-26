as yet unclassified
stringToBool: aString
	aString ifNil: [^ false ].
	(aString = true) 
		ifTrue: [^ true]
		ifFalse:  [^ false].
