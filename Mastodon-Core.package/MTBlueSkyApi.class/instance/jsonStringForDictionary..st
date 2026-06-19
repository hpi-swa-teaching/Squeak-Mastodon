helpers
jsonStringForDictionary: aDictionary
	| stream first |
	stream := WriteStream on: String new.
	first := true.
	stream nextPut: ${.
	aDictionary keysAndValuesDo: [:key :value |
		first
			ifTrue: [first := false]
			ifFalse: [stream nextPut: $,].
		stream
			nextPutAll: (self jsonStringFor: key asString);
			nextPut: $:;
			nextPutAll: (self jsonStringFor: value)].
	stream nextPut: $}.
	^ stream contents
