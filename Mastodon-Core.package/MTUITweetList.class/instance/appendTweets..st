accessing
appendTweets: anOrderedCollection
	"Adds tweets which are older than the tweets that are already in the collection"
	
	anOrderedCollection notEmpty ifTrue: [
		self tweets: self tweets , anOrderedCollection.
		self minID: anOrderedCollection last id.
		self render.]