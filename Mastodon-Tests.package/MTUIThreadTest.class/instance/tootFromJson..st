helpers
tootFromJson: aString

	^ MTToot from: (Json new stream: (ReadStream on: aString)) readAny