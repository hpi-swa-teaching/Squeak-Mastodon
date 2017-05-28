as yet unclassified
loadNewTootView
	self mastodonApi hasUser ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi)
		as: #newTootView 
		activate: #newTootButton.