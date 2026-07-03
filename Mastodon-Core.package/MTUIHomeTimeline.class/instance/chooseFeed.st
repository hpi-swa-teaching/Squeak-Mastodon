actions
chooseFeed

	| feed |
	feed := self chooseFeedFrom: self feeds title: 'Feeds'.
	(feed isKindOf: MTBlueSkyFeed) not ifTrue: [^ self].
	self selectedFeed: feed.
	self loadSelectedFeed