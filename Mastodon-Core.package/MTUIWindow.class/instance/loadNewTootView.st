views
loadNewTootView

	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	self loadView: (MTUINewToot with: self socialProvider) as: #newTootView activate: #newTootButton.
	^ true