event handling
mouseUp: anEvent

	(self target isNil or: [self actionSelector isNil]) ifTrue: [^ super mouseUp: anEvent].
	self target perform: self actionSelector withArguments: self arguments