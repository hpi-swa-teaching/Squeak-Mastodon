initialization
initialize

	super initialize.
	
	self
		target: self;
		actionSelector: #doActionFor:;
		render