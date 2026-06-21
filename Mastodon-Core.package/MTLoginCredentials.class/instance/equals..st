comparing
equals: anObject

	(anObject isKindOf: self class) ifFalse: [^ false].
	
	^ self account id = anObject account id and: [self baseUrl = anObject baseUrl]