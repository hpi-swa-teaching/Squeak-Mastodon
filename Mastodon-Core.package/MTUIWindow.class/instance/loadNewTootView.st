views
loadNewTootView

	self mastodonApi hasToken ifFalse: [^ false].
	
	self loadView: MTUINewToot new as: #newTootView activate: #newTootButton