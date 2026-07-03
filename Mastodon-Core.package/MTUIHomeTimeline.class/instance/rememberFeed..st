actions
rememberFeed: aFeed

	(aFeed isKindOf: MTBlueSkyFeed) not ifTrue: [^ self].
	self feeds ifNil: [self feeds: (OrderedCollection with: MTBlueSkyFeed home)].
	(self feeds detect: [:feed | feed uri = aFeed uri] ifNone: [nil]) ifNil: [self feeds add: aFeed].
	(self selectedFeed isKindOf: MTBlueSkyFeed) not ifTrue: [self selectedFeed: self feeds first]