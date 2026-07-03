updating
appendToots: anOrderedCollection

	anOrderedCollection isEmpty ifTrue: [^ self].
	self toots: self toots, anOrderedCollection.
	self minID: anOrderedCollection last id.
	self render