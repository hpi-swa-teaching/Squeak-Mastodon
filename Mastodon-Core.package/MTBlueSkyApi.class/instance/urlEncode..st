helpers
urlEncode: aString
	| stream |
	stream := WriteStream on: String new.
	aString asString do: [:char |
		char = Character space
			ifTrue: [stream nextPutAll: '%20']
			ifFalse: [stream nextPut: char]].
	^ stream contents
