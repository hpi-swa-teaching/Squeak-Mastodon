stepping
step
	| result |
	self mastodonApi hasToken ifFalse: [^ self].

	result := self mastodonApi getLiveTimeline.
	result isError ifTrue: [^ self].

	self setToots: result value.