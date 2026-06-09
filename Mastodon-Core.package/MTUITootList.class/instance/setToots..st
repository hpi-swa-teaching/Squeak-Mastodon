updating
setToots: anOrderedCollection

	self toots: anOrderedCollection.
	
	self toots notEmpty ifTrue: [
		self minID: toots last id.
		self maxID: toots first id.
		self render]