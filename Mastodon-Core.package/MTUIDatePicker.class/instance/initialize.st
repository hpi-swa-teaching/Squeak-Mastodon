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
	
	self yearField nextField: monthField.
	self monthField nextField: dayField.
	self dayField nextField: hourField.
	self hourField nextField: minuteField.
	self minuteField nextField: yearField.
	
	self render