helpers
minID

	^ self toots ifNil: [^ 0] ifNotNil: [self toots last id]