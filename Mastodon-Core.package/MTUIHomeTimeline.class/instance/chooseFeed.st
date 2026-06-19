actions
chooseFeed
	| feed |
	feed := self chooseFeedFrom: feeds title: 'Feeds'.
	feed ifNil: [^ self].
	selectedFeed := feed.
	self loadSelectedFeed
