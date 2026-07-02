events
mouseUp: anEvent

	(target isNil or: [actionSelector isNil]) ifTrue: [^ super mouseUp: anEvent].
	target perform: actionSelector withArguments: self arguments