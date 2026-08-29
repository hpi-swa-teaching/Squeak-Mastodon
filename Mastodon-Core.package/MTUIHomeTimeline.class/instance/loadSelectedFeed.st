updating
loadSelectedFeed

	| result page |
	(self isValidFeed: self selectedFeed) ifFalse: [self selectedFeed: MTBlueSkyFeed home].
	self selectedFeed isTimeline ifTrue: [
		result := self socialProvider getTimelinePageWithCursor: nil.
		result isError ifTrue: [
			self inform: (result error ifNil: ['An error occurred']).
			^ false].
		page := result value.
		self feedCursor: page cursor.
		self setToots: page toots.
		^ true].
	result := self socialProvider getFeedPage: self selectedFeed uri cursor: nil.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	page := result value.
	self feedCursor: page cursor.
	self setToots: page toots.
	^ true