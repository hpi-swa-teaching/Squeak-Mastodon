updating
setToots: anOrderedCollection
	"Initializes toot collection and sets min/max ID"

	self toots: anOrderedCollection.
	
	self toots isEmpty ifTrue: [^ self].
	self minID: self toots last id.
	self maxID: self toots first id.
	self render