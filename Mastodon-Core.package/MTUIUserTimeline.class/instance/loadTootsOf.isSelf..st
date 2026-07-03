updating
loadTootsOf: aMTUser isSelf: aBoolean

	| timeline |
	self mastodonApi isAuthenticated ifFalse: [^ self].
	
	aBoolean ifTrue: [self loadScheduled].
	
	timeline := self mastodonApi getStatuses: aMTUser id.
	
	timeline isError ifTrue: [
		self inform: 'An error occurred'.
		^ self].
	
	self setToots: timeline value.
	self render