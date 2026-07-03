initialization
initialize

	super initialize.
	feeds := OrderedCollection with: MTBlueSkyFeed home.
	selectedFeed := self feeds first.
	feedCursor := nil