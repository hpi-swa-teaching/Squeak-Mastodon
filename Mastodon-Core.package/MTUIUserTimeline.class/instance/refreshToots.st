updating
refreshToots
	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^false].
	newToots := mastodonApi getStatuses: self user id max: maxID.
	newToots isError
		ifTrue: [self inform: (newToots error ifNil: ['An error occurred']).
			^ false].
	self prependToots: newToots value