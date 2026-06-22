updating
loadTootsOf: aMTUser

	| toots |
	self mastodonApi hasToken ifFalse: [^ false].
	
	toots := self mastodonApi getStatusesOf: aMTUser id.
	
	toots isError ifTrue: [
		self inform: (toots error ifNil: ['An error occurred']).
		^ false].
	
	self setToots: toots value.
	self render