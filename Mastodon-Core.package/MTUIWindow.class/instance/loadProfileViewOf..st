views
loadProfileViewOf: aUser
	
	self ensureLoggedIn ifFalse: [^ false].
	
	self loadView: (MTUIProfile for: aUser) as: #profileView activate: #profileButton.
	self scrollMorph scrollToTop