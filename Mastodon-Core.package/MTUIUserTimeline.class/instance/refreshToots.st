updating
refreshToots
	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^false].
	newToots := mastodonApi getStatuses: id max: maxID.
	newToots isError
		ifTrue: [self inform: (newToots error ifNil: ['An error occurred']).
			^ false].
	self prependToots: newToots value