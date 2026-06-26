initialization
initialize

	super initialize.
	
	self scrollBar ifNotNil: [self scrollBar addDependent: self].
	
	self loadToots