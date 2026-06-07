helpers-requesting
getRequestAt: aPath intoObjectOf: aClass

	^ MTResult value: 
		(self 
			deserialize: (self getRequest: (self urlForPath: aPath)) 
			intoObjectOf: aClass)