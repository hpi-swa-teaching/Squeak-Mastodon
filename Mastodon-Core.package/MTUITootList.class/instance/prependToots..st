updating
prependToots: anOrderedCollection

	anOrderedCollection isEmpty ifTrue: [^ self].
	self toots: anOrderedCollection, self toots.
	self maxID: anOrderedCollection first id.
	self render