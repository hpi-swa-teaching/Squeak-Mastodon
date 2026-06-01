comparing
= anObject

	(anObject isKindOf: self class) ifFalse: [^ false].
	
	^ username = anObject username and: [baseURL = anObject baseURL]