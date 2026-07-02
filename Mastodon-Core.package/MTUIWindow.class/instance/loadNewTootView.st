views
loadNewTootView

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	self loadView: (MTUINewToot with: self mastodonApi) as: #newTootView activate: #newTootButton