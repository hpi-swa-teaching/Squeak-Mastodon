actions
chooseFeed

	| feed |
	feed := self chooseFeedFrom: feeds title: 'Feeds'.
	(feed isNil or: [feed == false]) ifTrue: [^ self].
	selectedFeed := feed.
	self loadSelectedFeed