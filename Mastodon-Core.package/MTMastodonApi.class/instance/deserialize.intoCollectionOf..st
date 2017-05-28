helpers
deserialize: aJsonString intoCollectionOf: aClass
	| parsedJson |
	parsedJson := (Json new stream: (ReadStream on: aJsonString)) readAny.
	^ parsedJson collect: [ :jsonObject | aClass from: jsonObject]