views
loadNewTootView

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	self loadView: (MTUINewToot with: self mastodonApi) as: #newTootView activate: #newTootButton