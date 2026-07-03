views
loadNewTootViewWithMorph: aMorph

	self refreshProvider.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	self loadView: (MTUINewToot with: mastodonApi morph: aMorph) as: #newTootView activate: #newTootButton.
	^ true