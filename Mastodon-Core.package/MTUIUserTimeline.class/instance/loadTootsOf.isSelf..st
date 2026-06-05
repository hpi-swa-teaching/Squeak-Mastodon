updating
loadTootsOf: aMTUser isSelf: aBoolean

	| toots |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	aBoolean ifTrue: [self load].
	
	toots := mastodonApi getStatuses: aMTUser id.
	
	toots isError ifTrue: [
		self inform: 'An error occurred'.
		^ false].
	
	self setToots: toots value.
	self render