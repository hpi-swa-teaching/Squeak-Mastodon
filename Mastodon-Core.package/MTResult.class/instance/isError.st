accessing
isError 
	self error ifNotNil: [^ true].
	^ false