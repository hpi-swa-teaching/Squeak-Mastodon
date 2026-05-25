views
loadNewTootView
	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi)
		as: #newTootView 
		activate: #newTootButton.