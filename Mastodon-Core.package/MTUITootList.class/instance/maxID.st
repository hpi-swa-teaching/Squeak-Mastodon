helpers
maxID

	^ self toots ifEmpty: [^ 0] ifNotEmpty: [self toots first id]