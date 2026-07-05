actions
removeFeed

	| result |
	self selectedFeed isTimeline ifTrue: [^ self].
	result := self socialProvider removeFeed: self selectedFeed.
	result isError ifTrue: [^ self inform: result error].
	self refreshFeedsSelecting: ''