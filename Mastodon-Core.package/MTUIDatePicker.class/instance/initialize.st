initialization
initialize

	| now |
	super initialize.
	self listDirection: #leftToRight.
	now := DateAndTime today.
	self
		initializeYearField: now year;
		initializeMonthField: now month;
		initializeDayField: now dayOfMonth;
		initializeHourField;
		initializeMinuteField.
	
	self linkFields.
	
	self render