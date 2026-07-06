requesting
getRequest: aPath intoCollectionOf: aClass

	^ self deserialize: (self getRequest: aPath tries: self numberOfTries) intoCollectionOf: aClass