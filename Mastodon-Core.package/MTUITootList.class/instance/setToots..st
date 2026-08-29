updating
setToots: anOrderedCollection

	self toots: anOrderedCollection.
	
	self toots notEmpty ifTrue: [
		self minID: self toots last id.
		self maxID: self toots first id].
	self render