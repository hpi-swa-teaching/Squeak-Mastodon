actions
rememberFeed: aFeed

	(aFeed isNil or: [aFeed == false]) ifTrue: [^ self].
	feeds ifNil: [feeds := OrderedCollection with: MTBlueSkyFeed home].
	(feeds detect: [:feed | feed uri = aFeed uri] ifNone: [nil]) ifNil: [feeds add: aFeed].
	(selectedFeed isNil or: [selectedFeed == false]) ifTrue: [selectedFeed := feeds first]