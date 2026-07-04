updating
loadFeeds

	| result |
	result := self socialProvider getSavedFeeds.
	result isError ifTrue: [
		self inform: (result error ifNil: ['An error occurred']).
		self feeds: (OrderedCollection with: MTBlueSkyFeed home).
		self selectedFeed: self feeds first.
		^ false].
	self feeds: result value.
	self feeds isEmpty ifTrue: [self feeds: (OrderedCollection with: MTBlueSkyFeed home)].
	(self isValidFeed: self selectedFeed) ifFalse: [self selectedFeed: self feeds first].
	self selectedFeed: (self feeds
		detect: [:feed | feed uri = self selectedFeed uri and: [feed sourceType = self selectedFeed sourceType]]
		ifNone: [self feeds first]).
	^ true