views
loadNewTootViewWithMorph: aMorph

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	self loadView: (MTUINewToot with: self mastodonApi morph: aMorph) as: #newTootView activate: #newTootButton