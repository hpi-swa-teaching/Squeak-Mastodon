helpers
escapeJsonString: aString

	| stream |
	stream := WriteStream on: String new.
	aString do: [:char |
		char = $\ ifTrue: [stream nextPutAll: '\\'] ifFalse: [
			char = $" ifTrue: [stream nextPutAll: '\"'] ifFalse: [
				char = Character lf ifTrue: [stream nextPutAll: '\n'] ifFalse: [
					char = Character cr
						ifTrue: [stream nextPutAll: '\r']
						ifFalse: [
							char = Character tab
								ifTrue: [stream nextPutAll: '\t']
								ifFalse: [stream nextPut: char]]]]]].
	^ stream contents