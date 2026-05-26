render
addNewScheduleArea

	| now container |
	container := AlignmentMorph newRow.
	now := DateAndTime today.
	yearField := MTLineEdit new
		vResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,4}';
		helpText: 'YYYY';
		theText: now year.
	monthField := MTLineEdit new
		hResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber > 0 and: [str asNumber <= 12]];
		helpText: 'MM';
		theText: now month.
	dayField := MTLineEdit new
		hResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber > 0 and: [str asNumber <= 31]];
		helpText: 'DD';
		theText: now dayOfMonth.
	hourField := MTLineEdit new
		hResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber < 24];
		helpText: 'hh'.
	minuteField := MTLineEdit new
		hResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber < 60];
		helpText: 'mm'.
	
	yearField nextField: monthField.
	monthField nextField: dayField.
	dayField nextField: hourField.
	hourField nextField: minuteField.
	minuteField nextField: yearField.
	
	container
		addMorphBack: yearField;
		addMorphBack: monthField;
		addMorphBack: dayField;
		addMorphBack: hourField;
		addMorphBack: minuteField;
		color: Color transparent;
		hResizing: #spaceFill.
	self addMorphBack: container