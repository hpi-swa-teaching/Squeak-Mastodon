accessing
instance: anObject
	self instance ifNotNil: [self instance delete].
	^ instance := anObject.
