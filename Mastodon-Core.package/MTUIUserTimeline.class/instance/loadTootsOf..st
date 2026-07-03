updating
loadTootsOf: aMTUser

	| result |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	result := self mastodonApi getStatuses: aMTUser id.
	
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: result value.
	self render.
	^ true