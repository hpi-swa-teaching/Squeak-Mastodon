views
loadNewTootViewWithAccount: aUsername
	
	self ensureLoggedIn ifFalse: [^ false].
	self loadView: (MTUINewToot content: '@',  aUsername asString) as: #newTootView activate: #newTootButton