views
loadNewTootViewWithMorph: aMorph

	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	self loadView: (MTUINewToot with: self socialProvider morph: aMorph) as: #newTootView activate: #newTootButton.
	^ true