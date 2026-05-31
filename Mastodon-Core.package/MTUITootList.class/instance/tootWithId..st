tootWithId: anId
	^ toots detect: [:t | t id = anId] ifNone: [nil]