accessing
setToots: anOrderedCollection
	"Initializes toott collection and sets min/max ID"
	
	self toots: anOrderedCollection.
	
	self toots notEmpty ifTrue: [
		self minID: toots last id.
		self maxID: toots first id.
		self render]