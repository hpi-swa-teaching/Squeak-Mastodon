updating
loadTootsOf: aMTUser

	| currentUser timeline |
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	currentUser := self mastodonApi getCurrentUser.
	currentUser isError ifTrue: [^ self inform: 'There was an error: ', currentUser error].
	currentUser value id = aMTUser id ifTrue: [self loadScheduled].
	
	timeline := self mastodonApi getStatuses: aMTUser id.
	
	timeline isError ifTrue: [
		self inform: 'An error occurred'.
		^ self].
	
	self setToots: timeline value.
	self render