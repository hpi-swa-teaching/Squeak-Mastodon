accessing
setTweets: anOrderedCollection
	"Initializes tweet collection and sets min/max ID"
	
	self tweets: anOrderedCollection.
	
	self tweets notEmpty ifTrue: [
		self minID: toots last id.
		self maxID: toots first id.
		self render]