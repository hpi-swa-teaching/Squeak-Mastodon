render
initialize

	super initialize.
	self
		sortKey: #chronological;
		sortDirection: #descending.
	self render