render
addNewScheduleArea

	| now container |
	container := AlignmentMorph newRow.
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
	
	container
		addMorphBack: yearField;
		addMorphBack: monthField;
		addMorphBack: dayField;
		addMorphBack: hourField;
		addMorphBack: minuteField;
		color: Color transparent.
	self addMorphBack: container