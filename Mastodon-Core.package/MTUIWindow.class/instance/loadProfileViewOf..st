views
loadProfileViewOf: aMTUser

	| userTimeline |
	self refreshProvider.
	self socialProvider isAuthenticated ifFalse: [^ false].
	userTimeline := MTUIUserTimeline new.
	userTimeline id: aMTUser id.
	userTimeline
		socialProvider: self socialProvider;
		loadTootsOf: aMTUser.
	self loadView: (MTUIProfile with: userTimeline from: aMTUser) as: #profileView activate: #profileButton.
	^ true