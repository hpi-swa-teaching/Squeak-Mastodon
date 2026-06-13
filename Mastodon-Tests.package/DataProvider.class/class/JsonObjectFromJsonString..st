helpers
JsonObjectFromJsonString: aJson

	^ (Json new stream: (ReadStream on: aJson)) readAny