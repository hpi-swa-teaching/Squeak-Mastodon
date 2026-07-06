initialization
initializeMonthField: initialMonth

	self monthField: (MTLineEdit new
		hResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber <= 12];
		helpText: 'MM';
		theText: initialMonth;
		yourself)