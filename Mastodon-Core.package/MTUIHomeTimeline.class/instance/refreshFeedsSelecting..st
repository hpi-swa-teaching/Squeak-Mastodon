updating
refreshFeedsSelecting: aFeedUri

	self loadFeeds ifFalse: [^ self].
	selectedFeed := self feeds detect: [:feed | feed uri = aFeedUri] ifNone: [self feeds first].
	self loadSelectedFeed