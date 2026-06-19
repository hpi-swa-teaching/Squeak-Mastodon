updating
loadSelectedFeed
	| result page |
	selectedFeed ifNil: [selectedFeed := MTBlueSkyFeed home].
	selectedFeed isTimeline ifTrue: [
		feedCursor := nil.
		result := self mastodonApi getPrivateTimeline.
		result isError
			ifTrue: [
				self inform: (result error ifNil: ['An error occurred']).
				^ false].
		self setToots: result value.
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
