helpers-requesting
getRequestAt: aPath intoCollectionOf: aClass

	^ MTResult value: 
		(self 
			deserialize: (self getRequest: (self urlForPath: aPath)) 
			intoCollectionOf: aClass)