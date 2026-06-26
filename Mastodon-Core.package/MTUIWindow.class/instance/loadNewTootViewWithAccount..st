views
loadNewTootViewWithAccount: anAccountID

	self ensureLoggedIn ifFalse: [^ false].
	
	self loadView: (MTUINewToot content: '@', anAccountID asString) as: #newTootView activate: #newTootButton