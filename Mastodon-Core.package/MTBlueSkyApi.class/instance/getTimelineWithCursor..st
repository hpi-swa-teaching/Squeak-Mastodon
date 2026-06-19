helpers
getTimelineWithCursor: aCursor
	| result |
	result := self getTimelinePageWithCursor: aCursor.
	result isError ifTrue: [^ result].
	^ MTResult value: result value toots
