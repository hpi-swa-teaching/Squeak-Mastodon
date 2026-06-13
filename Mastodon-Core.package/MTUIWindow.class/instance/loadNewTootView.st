views
loadNewTootView

	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^false].
	
	self loadView: (MTUINewToot with: mastodonApi) as: #newTootView activate: #newTootButton