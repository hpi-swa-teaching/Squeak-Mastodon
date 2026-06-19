updating
loadSelectedFeed
	| result |
	selectedFeed ifNil: [selectedFeed := MTBlueSkyFeed home].
	result := selectedFeed isTimeline
		ifTrue: [self mastodonApi getPrivateTimeline]
		ifFalse: [self mastodonApi getFeed: selectedFeed uri].
	result isError
		ifTrue: [
			self inform: (result error ifNil: ['An error occurred']).
			^ false].
	self setToots: result value.
	^ true
