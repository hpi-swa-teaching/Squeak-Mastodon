actions
rememberFeed: aFeed

	(self isValidFeed: aFeed) ifFalse: [^ self].
	self feeds ifNil: [self feeds: (OrderedCollection with: MTBlueSkyFeed home)].
	(self feeds detect: [:feed | feed uri = aFeed uri] ifNone: [nil]) ifNil: [self feeds add: aFeed].
	(self isValidFeed: self selectedFeed) ifFalse: [self selectedFeed: self feeds first]