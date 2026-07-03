updating
loadFeeds

	| result |
	result := self mastodonApi getSavedFeeds.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		feeds := OrderedCollection with: MTBlueSkyFeed home.
		selectedFeed := self feeds first.
		^ false].
	feeds := result value.
	self feeds isEmpty ifTrue: [feeds := OrderedCollection with: MTBlueSkyFeed home].
	(self selectedFeed isKindOf: MTBlueSkyFeed) not ifTrue: [selectedFeed := self feeds first].
	selectedFeed := self feeds
		detect: [:feed | feed uri = self selectedFeed uri and: [feed sourceType = self selectedFeed sourceType]]
		ifNone: [self feeds first].
	^ true