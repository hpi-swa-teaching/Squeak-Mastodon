views
loadProfileViewOf: aUser

	self ensureLoggedIn ifFalse: [^ false].
	
	self loadView: (MTUIOtherProfile for: aUser) as: #profileView activate: 'noButton'