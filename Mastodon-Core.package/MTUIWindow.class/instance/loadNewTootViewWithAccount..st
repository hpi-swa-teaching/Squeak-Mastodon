views
loadNewTootViewWithAccount: anAccountID

	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	
	self
		loadView: (MTUINewToot with: self socialProvider content: '@', anAccountID asString)
		as: #newTootView
		activate: #newTootButton.
	^ true