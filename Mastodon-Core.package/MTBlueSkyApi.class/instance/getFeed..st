endpoints
getFeed: aFeedUri

	| result |
	result := self getFeedPage: aFeedUri cursor: nil.
	result isError ifTrue: [^ result].
	^ MTResult value: result value toots