accessing
displayName
	^ displayName ifNil: [self uri]
