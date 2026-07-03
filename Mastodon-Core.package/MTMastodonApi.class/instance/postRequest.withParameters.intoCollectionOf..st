requesting
postRequest: aPath withParameters: aDictionary intoCollectionOf: aClass

	^ self
		deserialize: (self postRequest: aPath withParameters: aDictionary tries: self numberOfTries)
		intoCollectionOf: aClass