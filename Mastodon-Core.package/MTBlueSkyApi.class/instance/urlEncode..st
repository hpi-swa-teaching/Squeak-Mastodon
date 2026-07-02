helpers
urlEncode: aString

	| stream hex |
	hex := '0123456789ABCDEF'.
	stream := WriteStream on: String new.
	aString asString do: [:char | | value |
		value := char asciiValue.
		(value > 127 or: [(value between: 48 and: 57) or: [(value between: 65 and: 90) or: [(value between: 97 and: 122) or: ['-._~' includes: char]]]])
			ifTrue: [stream nextPut: char]
			ifFalse: [
				stream
					nextPut: $%;
					nextPut: (hex at: value // 16 + 1);
					nextPut: (hex at: value \\ 16 + 1)]].
	^ stream contents