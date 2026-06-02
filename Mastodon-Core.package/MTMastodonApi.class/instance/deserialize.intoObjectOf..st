helpers
deserialize: aJsonString intoObjectOf: aClass

	^ aClass from: (self deserialize: aJsonString)