views
loadProfileViewForCurrentUser

	| currentUser |
	self ensureLoggedIn ifFalse: [^ false].
	currentUser := self mastodonApi getCurrentUser.
	
	self loadView: (MTUIProfile for: currentUser value) as: #profileView activate: #profileButton