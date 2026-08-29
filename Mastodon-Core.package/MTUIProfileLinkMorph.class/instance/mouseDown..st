event handling
mouseDown: anEvent

	(self target isNil or: [self actionSelector isNil]) ifTrue: [^ super mouseDown: anEvent].
	^ self