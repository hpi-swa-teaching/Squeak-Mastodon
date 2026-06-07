helpers-requesting
postRequest: aPath withParameters: aCollection intoCollectionOf: aClass

	^ MTResult value: (self
		deserialize: (self postRequest: (self urlForPath: aPath) withParameters: aCollection)
		intoCollectionOf: aClass)