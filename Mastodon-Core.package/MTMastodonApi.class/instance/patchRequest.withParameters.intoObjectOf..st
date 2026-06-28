requesting
patchRequest: aPath withParameters: aDictionary intoObjectOf: aClass

	^ MTResult value: 
		(self
			deserialize: (self patchRequest: aPath withParameters: aDictionary tries: self Number)
			intoObjectOf: aClass)