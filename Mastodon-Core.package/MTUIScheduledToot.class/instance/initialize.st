initialization
initialize

	super initialize.
	self
		postedAt: self toot scheduledAt;
		content: self toot params text.
	
	self
		cancelButton: MTUICancelButton new;
		scheduleButton: MTUITimeButton new