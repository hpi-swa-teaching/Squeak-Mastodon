updating
setToots: anOrderedCollection
	"Initializes toott collection and sets min/max ID"

	self toots: anOrderedCollection.
	
	self toots isEmpty ifTrue: [^ self].
	self minID: toots last id.
	self maxID: toots first id.
	self render