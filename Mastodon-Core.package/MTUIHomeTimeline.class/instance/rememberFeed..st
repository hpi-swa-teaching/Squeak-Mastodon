actions
rememberFeed: aFeed

	(aFeed isKindOf: MTBlueSkyFeed) not ifTrue: [^ self].
	feeds ifNil: [feeds := OrderedCollection with: MTBlueSkyFeed home].
	(feeds detect: [:feed | feed uri = aFeed uri] ifNone: [nil]) ifNil: [feeds add: aFeed].
	(selectedFeed isKindOf: MTBlueSkyFeed) not ifTrue: [selectedFeed := feeds first]