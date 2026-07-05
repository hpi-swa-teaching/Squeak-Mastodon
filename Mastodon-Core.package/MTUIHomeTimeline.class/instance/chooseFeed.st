actions
chooseFeed

	| feed |
	feed := self chooseFeedFrom: self feeds title: 'Feeds'.
	(self isValidFeed: feed) ifFalse: [^ self].
	self selectedFeed: feed.
	self loadSelectedFeed