updating
loadToots
	| toots |
	self mastodonApi isAuthenticated ifFalse: [^false].

	toots := mastodonApi getLikes.
	toots isError
		ifTrue: [self inform: (toots error ifNil: ['An error occurred']).
				^ false].

	self setToots: toots value.
	^ true