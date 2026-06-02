helpers-requesting
postRequest: aPath withParameters: aDictionary as: aClass

	^ MTResult value: (self
		deserialize: (self postRequest: (self urlForPath: aPath) withParameters: aDictionary)
		intoObjectOf: aClass)