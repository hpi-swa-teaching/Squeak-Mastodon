endpoints
getLikes

	| result |
	result := self getLikesPageWithCursor: nil.
	result isError ifTrue: [^ result].
	^ MTResult value: result value toots