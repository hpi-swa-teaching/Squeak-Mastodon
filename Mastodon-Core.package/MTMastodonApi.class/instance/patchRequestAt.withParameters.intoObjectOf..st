requesting
patchRequestAt: aPath withParameters: aDictionary intoObjectOf: aClass

	^ MTResult value: 
		(self
			deserialize: (self 
							patchRequestAt: aPath
							withParameters: aDictionary)
			intoObjectOf: aClass)