helpers-requesting
patchObjectAt: aPath withParameters: aDictionary as: aClass

	^ MTResult value: (self
		deserialize: (self patchRequest: (self urlForPath: aPath) withParameters: aDictionary)
		intoObjectOf: aClass)