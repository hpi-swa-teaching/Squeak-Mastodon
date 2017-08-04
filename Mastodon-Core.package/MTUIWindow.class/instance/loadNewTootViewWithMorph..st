views
loadNewTootViewWithMorph: aMorph
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi morph: aMorph)
		as: #newTootView 
		activate: #newTootButton.