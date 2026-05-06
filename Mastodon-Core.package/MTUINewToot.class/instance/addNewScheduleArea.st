render
addNewScheduleArea

	| now |
	now := DateAndTime today.
	yearField := UiLineEdit new
		helpText: 'YYYY';
		theText: now year.
	monthField := UiLineEdit new
		helpText: 'MM';
		theText: now month.
	dayField := UiLineEdit new
		helpText: 'DD';
		theText: now dayOfMonth.
	hourField := UiLineEdit new helpText: 'hh'.
	minuteField := UiLineEdit new helpText: 'mm'.
	
	self
		addMorphBack: yearField;
		addMorphBack: monthField;
		addMorphBack: dayField;
		addMorphBack: hourField;
		addMorphBack: minuteField