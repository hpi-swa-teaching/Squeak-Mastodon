stepping
step
	| result |
	self mastodonApi hasToken ifFalse: [^ self].

	result := mastodonApi getLiveTimeline.
	result isError ifTrue: [^ self].

	self setToots: result value.