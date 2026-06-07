helpers-requesting
postRequest: aPath withParameters: aCollection intoObjectOf: aClass

	^ MTResult value: (self
		deserialize: (self postRequest: (self urlForPath: aPath) withParameters: aCollection)
		intoObjectOf: aClass)