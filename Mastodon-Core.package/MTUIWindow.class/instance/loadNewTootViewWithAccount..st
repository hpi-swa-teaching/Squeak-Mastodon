views
loadNewTootViewWithAccount: anAccountID
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi content: ('@', anAccountID asString))
		as: #newTootView 
		activate: #newTootButton.