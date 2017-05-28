as yet unclassified
loadNewTweetView
	self mastodonApi hasUser ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi)
		as: #newTweetView 
		activate: #newTweetButton.