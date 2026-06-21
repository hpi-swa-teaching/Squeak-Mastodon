views
loadNewTootViewWithMorph: aMorph

	self mastodonApi hasToken ifFalse: [
		self informToLogIn.
		^ false].
	
	self loadView: (MTUINewToot morph: aMorph) as: #newTootView activate: #newTootButton