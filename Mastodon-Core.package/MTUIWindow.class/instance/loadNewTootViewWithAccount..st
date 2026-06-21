views
loadNewTootViewWithAccount: anAccountID

	self mastodonApi hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	self loadView: (MTUINewToot content: '@', anAccountID asString) as: #newTootView activate: #newTootButton