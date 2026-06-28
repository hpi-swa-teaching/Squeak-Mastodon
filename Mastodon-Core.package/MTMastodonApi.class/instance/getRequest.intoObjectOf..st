requesting
getRequest: aPath intoObjectOf: aClass

	^ MTResult value: 
		(self 
			deserialize: (self getRequest: aPath tries: self numberOfTries) intoObjectOf: aClass)