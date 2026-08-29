initialization
initialize

	super initialize.
	self feeds: (OrderedCollection with: MTBlueSkyFeed home).
	self selectedFeed: self feeds first.
	self feedCursor: nil