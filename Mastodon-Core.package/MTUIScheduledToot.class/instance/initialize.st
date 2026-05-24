initialization
initialize

	super initialize.
	toot := MTToot new.
	
	self cancelButton: MTUICancelButton new.
	self scheduleButton: MTUITimeButton new.
	self editButton: MTUIEditButton new