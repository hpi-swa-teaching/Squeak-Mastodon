views
loadNewTootViewWithAccount: anAccountID
"is not in use because search function currently doesn't work"

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	self
		loadView: (MTUINewToot with: mastodonApi content: '@', anAccountID asString)
		as: #newTootView
		activate: #newTootButton