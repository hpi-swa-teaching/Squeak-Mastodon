requesting
getRequestAt: aPath intoObjectOf: aClass

	^ MTResult value: 
		(self 
			deserialize: (self getRequest: aPath) 
			intoObjectOf: aClass)