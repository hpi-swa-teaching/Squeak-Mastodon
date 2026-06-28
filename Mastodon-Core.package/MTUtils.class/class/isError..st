error handling
isError: aResult

	aResult isError ifTrue: [
		self inform: (aResult error ifNil: ['A unknown error occurred']).
		^ true].
	
	^ false