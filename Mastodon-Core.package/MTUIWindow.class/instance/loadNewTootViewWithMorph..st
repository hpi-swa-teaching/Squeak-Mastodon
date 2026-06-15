views
loadNewTootViewWithMorph: aMorph
"only gets called by MTScreenshot>>loadNewTootWithMorph: which isn't currently in use"

	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^false].
	
	self loadView: (MTUINewToot with: mastodonApi morph: aMorph) as: #newTootView activate: #newTootButton