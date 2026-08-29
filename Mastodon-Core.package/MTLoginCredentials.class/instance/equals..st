comparing
equals: anObject

	(anObject isKindOf: self class) ifFalse: [^ false].
	
	^ self username = anObject username and: [self baseURL = anObject baseURL]