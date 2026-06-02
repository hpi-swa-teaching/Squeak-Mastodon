views
loadNewTootViewWithAccount: anAccountID
	self refreshProvider.
	self mastodonApi hasToken ifFalse: [^false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi content: ('@', anAccountID asString))
		as: #newTootView 
		activate: #newTootButton.