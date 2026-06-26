views
loadProfileViewForCurrentUser

	| currentUserResult |
	self ensureLoggedIn ifFalse: [^ false].
	currentUserResult := self mastodonApi getCurrentUser.
	
	(MTUtils isError: currentUserResult) ifTrue: [^ false].
	
	self loadView: (MTUICurrentProfile for: currentUserResult value) as: #profileView activate: #profileButton