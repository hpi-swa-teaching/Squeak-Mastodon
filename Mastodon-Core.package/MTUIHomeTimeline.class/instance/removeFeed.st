actions
removeFeed
	| result |
	selectedFeed isTimeline ifTrue: [^ self].
	result := self mastodonApi removeFeed: selectedFeed.
	result isError ifTrue: [^ self inform: result error].
	self refreshFeedsSelecting: ''
