render
addNewScheduleArea

	| now container |
	container := AlignmentMorph newRow.
	now := DateAndTime today.
	yearField := MTLineEdit new
		hResizing: #shrinkWrap;
		height: 32;
		pattern: '[0-9]{0,4}';
		helpText: 'YYYY';
		theText: now year.
	monthField := MTLineEdit new
		hResizing: #shrinkWrap;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber > 0 and: [str asNumber <= 12]];
		helpText: 'MM';
		theText: now month.
	dayField := MTLineEdit new
		hResizing: #shrinkWrap;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber > 0 and: [str asNumber <= 31]];
		helpText: 'DD';
		theText: now dayOfMonth.
	hourField := MTLineEdit new
		hResizing: #shrinkWrap;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | "Name already used in this method ->"
		str asNumber < 24];
		helpText: 'hh'.
	minuteField := MTLineEdit new
		hResizing: #shrinkWrap;
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
		color: Color transparent.
	self addMorphBack: container