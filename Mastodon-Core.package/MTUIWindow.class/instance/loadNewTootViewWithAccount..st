views
loadNewTootViewWithAccount: anAccountID

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	self
		loadView: (MTUINewToot with: self mastodonApi content: '@', anAccountID asString)
		as: #newTootView
		activate: #newTootButton