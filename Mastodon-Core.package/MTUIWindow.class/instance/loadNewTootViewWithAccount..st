views
loadNewTootViewWithAccount: anAccount
	
	self ensureLoggedIn ifFalse: [^ false].
	
	self loadView: (MTUINewToot content: '@',  anAccount username asString) as: #newTootView activate: #newTootButton