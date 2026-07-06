requesting
postRequest: aPath withParameters: aDictionary intoObjectOf: aClass

	^ self
		deserialize: (self postRequest: aPath withParameters: aDictionary tries: self numberOfTries)
		intoObjectOf: aClass