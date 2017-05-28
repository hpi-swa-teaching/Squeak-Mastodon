accessing
prependTweets: anOrderedCollection
	"Adds new tweets which were posted since the last api request"
	
	anOrderedCollection notEmpty ifTrue: [
		self tweets: anOrderedCollection, self tweets.
		self maxID: anOrderedCollection first id.
		self render]