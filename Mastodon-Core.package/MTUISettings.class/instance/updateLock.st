initialization
updateLock
	self locked
		ifTrue: [self locked: false]
		ifFalse: [self locked: true]