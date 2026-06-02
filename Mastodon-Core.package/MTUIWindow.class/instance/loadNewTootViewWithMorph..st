views
loadNewTootViewWithMorph: aMorph
	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi morph: aMorph)
		as: #newTootView 
		activate: #newTootButton.