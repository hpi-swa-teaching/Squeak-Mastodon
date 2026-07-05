helpers
urlEncode: aString

	| stream hex |
	hex := '0123456789ABCDEF'.
	stream := WriteStream on: String new.
	aString asString do: [:char | | value |
		value := char asciiValue.
		(self isUnreservedUrlChar: char) ifTrue: [stream nextPut: char] ifFalse: [
			stream
				nextPut: $%;
				nextPut: (hex at: value // hex size + 1);
				nextPut: (hex at: value \\ hex size + 1)]].
	^ stream contents