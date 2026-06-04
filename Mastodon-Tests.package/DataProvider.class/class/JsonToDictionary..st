helpers
JsonToDictionary: aJson

	^  (Json new stream: (ReadStream on: aJson)) readAny