initialization
deserialize: aJsonString intoObjectOf: aClass

	| parsedJson |
	aJsonString ifNil: [^ nil].
	parsedJson := (Json new stream: (ReadStream on: aJsonString)) readAny.
	^ aClass from: parsedJson