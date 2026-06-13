views
loadNewTootView

	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^ false].
	
	self loadView: (MTUINewToot new mastodonApi: mastodonApi) as: #newTootView activate: #newTootButton