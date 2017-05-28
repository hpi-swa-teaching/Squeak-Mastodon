as yet unclassified
loadNewTweetView
	self mastodonApi hasUser ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: (MTUINewTweet with: mastodonApi)
		as: #newTweetView 
		activate: #newTweetButton.