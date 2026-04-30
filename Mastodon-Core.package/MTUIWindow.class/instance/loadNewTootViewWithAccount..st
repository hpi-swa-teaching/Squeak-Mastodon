views
loadNewTootViewWithAccount: anAccountID
	self refreshProvider.
	(self mastodonApi supportsFeature: #post)
		ifFalse: [self inform: 'Posting not supported.'. ^ false].
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	self 
		loadView: (MTUINewToot with: mastodonApi content: ('@', anAccountID asString))
		as: #newTootView 
		activate: #newTootButton.