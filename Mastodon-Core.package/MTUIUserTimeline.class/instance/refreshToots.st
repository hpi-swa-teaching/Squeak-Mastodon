as yet unclassified
refreshToots
	| newToots |
	self mastodonApi isAuthenticated
		ifFalse: [self inform: 'Please login first.'.
			^ false].
	newToots := mastodonApi getStatuses: id max: maxID.
	newToots isError
		ifTrue: [self inform: 'An error occurred'.
			^ false].
	self prependToots: newToots value