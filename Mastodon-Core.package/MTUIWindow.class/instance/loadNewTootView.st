views
loadNewTootView
	self refreshProvider.
	self mastodonApi isLoggedIn ifFalse: [^false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi)
		as: #newTootView 
		activate: #newTootButton.