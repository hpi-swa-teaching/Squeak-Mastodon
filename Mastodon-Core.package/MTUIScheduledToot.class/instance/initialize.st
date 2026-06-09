initialization
initialize

	super initialize.
	toot := MTToot new.
	
	self
		cancelButton: MTUICancelButton new;
		scheduleButton: MTUITimeButton new;
		editButton: MTUIEditButton new