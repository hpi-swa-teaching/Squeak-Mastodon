initialization
initialize

	super initialize.
	self contents: OrderedCollection new.
	self expanded: false.
	self render