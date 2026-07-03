views
loadNewTootViewWithAccount: anAccountID

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	self
		loadView: (MTUINewToot with: self mastodonApi content: '@', anAccountID asString)
		as: #newTootView
		activate: #newTootButton.
	^ true