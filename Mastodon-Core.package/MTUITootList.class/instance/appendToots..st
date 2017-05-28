accessing
appendToots: anOrderedCollection
	"Adds toots which are older than the tootss that are already in the collection"
	
	anOrderedCollection notEmpty ifTrue: [
		self toots: self toots , anOrderedCollection.
		self minID: anOrderedCollection last id.
		self render.]