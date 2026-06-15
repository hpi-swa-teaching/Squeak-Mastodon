views
loadNewTootViewWithAccount: anAccountID

	self mastodonApi hasToken ifFalse: [^ false].
	
	self loadView: (MTUINewToot content: '@', anAccountID asString) as: #newTootView activate: #newTootButton