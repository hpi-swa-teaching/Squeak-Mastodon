views
loadProfileViewForCurrentUser

	| currentUserResult |
	self ensureLoggedIn ifFalse: [^ false].
	currentUserResult := self mastodonApi getCurrentUser.
	
	(MTUtils isError: currentUserResult) ifTrue: [^ false].
	
	self loadView: (MTUIProfile for: currentUserResult value) as: #profileView activate: #profileButton