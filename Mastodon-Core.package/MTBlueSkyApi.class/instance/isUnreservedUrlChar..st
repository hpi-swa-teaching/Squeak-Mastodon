helpers
isUnreservedUrlChar: char

	| value |
	value := char asciiValue.
	^ value > 127
		or: [(value between: 48 and: 57)
		or: [(value between: 65 and: 90)
		or: [(value between: 97 and: 122)
		or: ['-._~' includes: char]]]]