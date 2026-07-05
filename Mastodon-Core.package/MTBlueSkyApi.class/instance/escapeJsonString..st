helpers
escapeJsonString: aString

	| stream escapes |
	escapes := Dictionary new
		at: $\ put: '\\';
		at: $" put: '\"';
		at: Character lf put: '\n';
		at: Character cr put: '\r';
		at: Character tab put: '\t';
		yourself.
	stream := WriteStream on: String new.
	aString do: [:char | stream nextPutAll: (escapes at: char ifAbsent: [String with: char])].
	^ stream contents