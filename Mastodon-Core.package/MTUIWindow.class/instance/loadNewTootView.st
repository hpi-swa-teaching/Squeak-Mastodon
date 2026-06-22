views
loadNewTootView

	self mastodonApi hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	self loadView: MTUINewToot new as: #newTootView activate: #newTootButton