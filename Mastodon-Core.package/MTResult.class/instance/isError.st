testing
isError

	self error ifNotNil: [^ true].
	^ false