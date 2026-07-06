requesting
getRequest: aPath intoObjectOf: aClass

	^ self deserialize: (self getRequest: aPath tries: self numberOfTries) intoObjectOf: aClass