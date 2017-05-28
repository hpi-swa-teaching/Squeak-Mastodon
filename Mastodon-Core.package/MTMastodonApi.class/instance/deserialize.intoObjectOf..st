helpers
deserialize: aJsonString intoObjectOf: aClass
	| parsedJson |
	parsedJson := (Json new stream: (ReadStream on: aJsonString)) readAny.
	^ aClass from: parsedJson