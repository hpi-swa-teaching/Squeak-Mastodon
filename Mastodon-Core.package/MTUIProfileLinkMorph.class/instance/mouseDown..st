events
mouseDown: anEvent

	(target isNil or: [actionSelector isNil]) ifTrue: [^ super mouseDown: anEvent].
	^ self