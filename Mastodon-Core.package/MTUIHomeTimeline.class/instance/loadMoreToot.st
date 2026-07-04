updating
loadMoreToot

	| result page |
	self socialProvider usesFeeds ifFalse: [
		self socialProvider token isNil ifTrue: [^ false].
		^ super loadMoreToot].
	(self isValidFeed: self selectedFeed) ifFalse: [^ false].
	self feedCursor ifNil: [^ false].
	result := self selectedFeed isTimeline
		ifTrue: [self socialProvider getTimelinePageWithCursor: self feedCursor]
		ifFalse: [self socialProvider getFeedPage: self selectedFeed uri cursor: self feedCursor].
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	page := result value.
	self feedCursor: page cursor.
	self appendToots: page toots.
	^ true