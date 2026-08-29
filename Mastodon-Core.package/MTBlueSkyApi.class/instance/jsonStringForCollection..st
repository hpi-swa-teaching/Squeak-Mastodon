helpers
jsonStringForCollection: aCollection

	| stream first |
	stream := WriteStream on: String new.
	first := true.
	stream nextPut: $[.
	aCollection do: [:each |
		first ifTrue: [first := false] ifFalse: [stream nextPut: $,].
		stream nextPutAll: (self jsonStringFor: each)].
	stream nextPut: $].
	^ stream contents