as yet unclassified
loadNewTootViewWithAccount: anAccountID
	self mastodonApi isAuthenticated ifFalse: [
		self inform: 'Please login first.'. 
		^ false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi content: ('@', anAccountID asString))
		as: #newTootView 
		activate: #newTootButton.