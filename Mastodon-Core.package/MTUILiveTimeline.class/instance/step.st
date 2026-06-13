stepping
step
	| result |
	self mastodonApi isAuthenticated ifFalse: [^ self].

	result := mastodonApi getLiveTimeline.
	result isError ifTrue: [^ self].

	self setToots: result value.