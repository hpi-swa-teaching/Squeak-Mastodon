accessing
setTweets: anOrderedCollection
	"Initializes tweet collection and sets min/max ID"
	
	self tweets: anOrderedCollection.
	
	self tweets notEmpty ifTrue: [
		self minID: tweets last id.
		self maxID: tweets first id.
		self render]