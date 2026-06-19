updating
loadMoreToot
	| result page |
	(self mastodonApi isKindOf: MTBlueSkyApi)
		ifFalse: [^ super loadMoreToot].
	selectedFeed ifNil: [^ false].
	selectedFeed isTimeline ifTrue: [^ super loadMoreToot].
	feedCursor ifNil: [^ false].
	result := self mastodonApi getFeedPage: selectedFeed uri cursor: feedCursor.
	result isError
		ifTrue: [
			self inform: (result error ifNil: ['An error occurred']).
			^ false].
	page := result value.
	feedCursor := page cursor.
	self appendToots: page toots.
	^ true
