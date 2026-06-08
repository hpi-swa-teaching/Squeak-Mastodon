helpers-requesting
deserialize: aJsonString intoObjectOf: aClass

	^ aClass from: (self deserialize: aJsonString)