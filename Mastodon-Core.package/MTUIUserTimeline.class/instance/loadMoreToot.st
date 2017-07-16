as yet unclassified
loadMoreToot
	| newToots |
	self mastodonApi isAuthenticated
		ifFalse: [self inform: 'Please login first.'.
			^ false].
	newToots := mastodonApi getStatuses: id since: minID.
	newToots isError
		ifTrue: [self inform: 'An error occurred'.
			^ false].
	self appendToots: newToots value