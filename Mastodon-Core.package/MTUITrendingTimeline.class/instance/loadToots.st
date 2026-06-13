accessing
loadToots
	| toots |
	self mastodonApi hasToken ifFalse: [^false].

	toots := mastodonApi getTrendingTimeline.
	toots isError
		ifTrue: [self inform: 'An error occurred'.
				^ false].

	self setToots: toots value.
	^ true