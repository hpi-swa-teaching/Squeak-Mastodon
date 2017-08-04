updating
loadMoreToot
	| newToots |
	self mastodonApi isAuthenticated ifFalse: [^false].
	newToots := mastodonApi getStatuses: id since: minID.
	newToots isError
		ifTrue: [self inform: 'An error occurred'.
			^ false].
	self appendToots: newToots value