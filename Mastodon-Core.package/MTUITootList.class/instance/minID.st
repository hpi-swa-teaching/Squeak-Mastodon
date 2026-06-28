helpers
minID

	(self toots isNil or: [self toots isEmpty]) ifTrue: [^ 0].
	^ self toots last id