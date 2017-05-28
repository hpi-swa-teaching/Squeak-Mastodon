as yet unclassified
loadNewTweetView
	self twitterApi hasUser ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: (MTUINewTweet with: twitterApi)
		as: #newTweetView 
		activate: #newTweetButton.