requesting
postRequest: aPath withParameters: aDictionary intoObjectOf: aClass

	^ MTResult value: (self
		deserialize: (self postRequest: aPath withParameters: aDictionary)
		intoObjectOf: aClass)