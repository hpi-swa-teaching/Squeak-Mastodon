accessing
unwrap

	self isError ifTrue: [Error new signal: 'Called unwrap on error value: ', self error].
	^ self value