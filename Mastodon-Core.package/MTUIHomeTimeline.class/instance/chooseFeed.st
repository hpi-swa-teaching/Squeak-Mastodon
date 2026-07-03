actions
chooseFeed

	| feed |
	feed := self chooseFeedFrom: feeds title: 'Feeds'.
	(feed isKindOf: MTBlueSkyFeed) not ifTrue: [^ self].
	selectedFeed := feed.
	self loadSelectedFeed