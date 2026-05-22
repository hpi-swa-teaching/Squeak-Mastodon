render
addNewScheduleArea

	| now |
	now := DateAndTime today.
	yearField := MTLineEdit new
		hResizing: #shrinkWrap;
		height: 32;
		filter: '[0-9]';
		max: 4;
		helpText: 'YYYY';
		theText: now year.
	monthField := MTLineEdit new
		hResizing: #shrinkWrap;
		height: 32;
		filter: '[0-9]';
		max: 2;
		helpText: 'MM';
		theText: now month.
	dayField := MTLineEdit new
		hResizing: #shrinkWrap;
		height: 32;
		filter: '[0-9]';
		max: 2;
		helpText: 'DD';
		theText: now dayOfMonth.
	hourField := MTLineEdit new
		hResizing: #shrinkWrap;
		height: 32;
		filter: '[0-9]';
		max: 2;
		helpText: 'hh'.
	minuteField := MTLineEdit new
		hResizing: #shrinkWrap;
		height: 32;
		filter: '[0-9]';
		max: 2;
		helpText: 'mm'.
	
	yearField nextField: monthField.
	monthField nextField: dayField.
	dayField nextField: hourField.
	hourField nextField: minuteField.
	minuteField nextField: yearField.
	
	self
		addMorphBack: yearField;
		addMorphBack: monthField;
		addMorphBack: dayField;
		addMorphBack: hourField;
		addMorphBack: minuteField