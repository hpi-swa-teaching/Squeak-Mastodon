updating
loadMoreToot

	| result page |
	(self socialProvider isKindOf: MTBlueSkyApi) ifFalse: [
		self socialProvider token isNil ifTrue: [^ false].
		^ super loadMoreToot].
	(self selectedFeed isKindOf: MTBlueSkyFeed) not ifTrue: [^ false].
	feedCursor ifNil: [^ false].
	result := self selectedFeed isTimeline
		ifTrue: [self socialProvider getTimelinePageWithCursor: feedCursor]
		ifFalse: [self socialProvider getFeedPage: self selectedFeed uri cursor: feedCursor].
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	page := result value.
	feedCursor := page cursor.
	self appendToots: page toots.
	^ true