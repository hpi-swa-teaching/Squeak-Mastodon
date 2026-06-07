helpers-requesting
patchRequestAt: aPath withParameters: aCollection intoObjectOf: aClass

	^ MTResult value: 
		(self
			deserialize: (self 
							patchRequestAt: (self urlForPath: aPath) 
							withParameters: aCollection)
			intoObjectOf: aClass)