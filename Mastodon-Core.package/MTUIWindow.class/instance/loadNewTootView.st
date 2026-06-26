views
loadNewTootView

	self ensureLoggedIn ifFalse: [^ false].
	
	self loadView: MTUINewToot new as: #newTootView activate: #newTootButton