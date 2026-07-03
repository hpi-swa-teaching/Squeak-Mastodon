updating
loadTootsOf: aMTUser isSelf: aBoolean

	| timeline |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	aBoolean ifTrue: [self loadScheduled].
	
	timeline := self mastodonApi getStatuses: aMTUser id.
	
	timeline isError ifTrue: [
		self inform: 'An error occurred'.
		^ false].
	
	self setToots: timeline value.
	self render