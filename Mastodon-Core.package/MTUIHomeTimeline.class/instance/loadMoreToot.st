updating
loadMoreToot
	| result page |
	(self mastodonApi isKindOf: MTBlueSkyApi)
		ifFalse: [^ super loadMoreToot].
	((selectedFeed isNil) or: [selectedFeed == false]) ifTrue: [^ false].
	feedCursor ifNil: [^ false].
	result := selectedFeed isTimeline
		ifTrue: [self mastodonApi getTimelinePageWithCursor: feedCursor]
		ifFalse: [self mastodonApi getFeedPage: selectedFeed uri cursor: feedCursor].
	result isError
		ifTrue: [
			self inform: (result error ifNil: ['An error occurred']).
			^ false].
	page := result value.
	feedCursor := page cursor.
	self appendToots: page toots.
	^ true
