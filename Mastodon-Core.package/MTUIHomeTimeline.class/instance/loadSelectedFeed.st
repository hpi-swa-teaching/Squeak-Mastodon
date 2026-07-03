updating
loadSelectedFeed

	| result page |
	(self selectedFeed isKindOf: MTBlueSkyFeed) not ifTrue: [selectedFeed := MTBlueSkyFeed home].
	self selectedFeed isTimeline ifTrue: [
		result := self mastodonApi getTimelinePageWithCursor: nil.
		result isError ifTrue: [
			self inform: (result error ifNil: ['An error occurred']).
			^ false].
		page := result value.
		feedCursor := page cursor.
		self setToots: page toots.
		^ true].
	result := self mastodonApi getFeedPage: self selectedFeed uri cursor: nil.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		^ false].
	page := result value.
	feedCursor := page cursor.
	self setToots: page toots.
	^ true