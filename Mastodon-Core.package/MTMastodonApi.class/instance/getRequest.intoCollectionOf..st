requesting
getRequest: aPath intoCollectionOf: aClass

	^ MTResult value: 
		(self deserialize: (self getRequest: aPath tries: self numberOfTries) intoCollectionOf: aClass)