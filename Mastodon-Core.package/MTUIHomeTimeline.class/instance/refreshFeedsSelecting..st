updating
refreshFeedsSelecting: aFeedUri

	self loadFeeds ifFalse: [^ self].
	selectedFeed := feeds detect: [:feed | feed uri = aFeedUri] ifNone: [feeds first].
	self loadSelectedFeed