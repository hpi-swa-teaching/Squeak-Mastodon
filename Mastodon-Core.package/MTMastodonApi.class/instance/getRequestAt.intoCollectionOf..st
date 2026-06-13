requesting
getRequestAt: aPath intoCollectionOf: aClass

	^ MTResult value: 
		(self 
			deserialize: (self getRequest: aPath) 
			intoCollectionOf: aClass)