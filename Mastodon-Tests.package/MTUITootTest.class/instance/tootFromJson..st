tests
tootFromJson: aString

	| jsonObject |
	jsonObject := (Json new stream: (ReadStream on: aString)) readAny.
	^ MTToot from: jsonObject