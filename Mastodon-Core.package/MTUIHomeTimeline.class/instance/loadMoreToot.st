updating
loadMoreToot

	| result page |
	(self mastodonApi isKindOf: MTBlueSkyApi) ifFalse: [
		self mastodonApi token isNil ifTrue: [^ false].
		^ super loadMoreToot].
	(self selectedFeed isKindOf: MTBlueSkyFeed) not ifTrue: [^ false].
	feedCursor ifNil: [^ false].
	result := self selectedFeed isTimeline
		ifTrue: [self mastodonApi getTimelinePageWithCursor: feedCursor]
		ifFalse: [self mastodonApi getFeedPage: self selectedFeed uri cursor: feedCursor].
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	page := result value.
	feedCursor := page cursor.
	self appendToots: page toots.
	^ true