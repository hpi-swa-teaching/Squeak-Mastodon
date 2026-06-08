requesting
postRequest: aPath withParameters: aDictionary intoCollectionOf: aClass

	^ MTResult value: (self
		deserialize: (self postRequest: aPath withParameters: aDictionary)
		intoCollectionOf: aClass)