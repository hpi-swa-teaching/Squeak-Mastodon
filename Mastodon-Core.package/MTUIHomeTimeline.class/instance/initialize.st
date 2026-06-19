initialization
initialize
	super initialize.
	feeds := OrderedCollection with: MTBlueSkyFeed home.
	selectedFeed := feeds first
