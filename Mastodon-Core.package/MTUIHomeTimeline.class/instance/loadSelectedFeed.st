updating
loadSelectedFeed
	| result page |
	((selectedFeed isNil) or: [selectedFeed == false]) ifTrue: [selectedFeed := MTBlueSkyFeed home].
	selectedFeed isTimeline ifTrue: [
		result := self mastodonApi getTimelinePageWithCursor: nil.
		result isError
			ifTrue: [
				self inform: (result error ifNil: ['An error occurred']).
				^ false].
		page := result value.
		feedCursor := page cursor.
		self setToots: page toots.
		^ true].
	result := self mastodonApi getFeedPage: selectedFeed uri cursor: nil.
	result isError
		ifTrue: [
			self inform: (result error ifNil: ['An error occurred']).
			^ false].
	page := result value.
	feedCursor := page cursor.
	self setToots: page toots.
	^ true
