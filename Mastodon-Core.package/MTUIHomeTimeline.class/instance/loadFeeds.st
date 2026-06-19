updating
loadFeeds
	| result |
	result := self mastodonApi getSavedFeeds.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		feeds := OrderedCollection with: MTBlueSkyFeed home.
		selectedFeed := feeds first.
		^ false].
	feeds := result value.
	feeds isEmpty ifTrue: [feeds := OrderedCollection with: MTBlueSkyFeed home].
	((selectedFeed isNil) or: [selectedFeed == false]) ifTrue: [selectedFeed := feeds first].
	selectedFeed := feeds
		detect: [:feed | (feed uri = selectedFeed uri) and: [feed sourceType = selectedFeed sourceType]]
		ifNone: [feeds first].
	^ true
