requesting
patchRequest: aPath withParameters: aDictionary intoObjectOf: aClass

	^ self
		deserialize: (self patchRequest: aPath withParameters: aDictionary tries: self Number)
		intoObjectOf: aClass