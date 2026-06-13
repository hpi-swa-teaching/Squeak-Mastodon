initialization
initializeDayField: initialDay

	self dayField: (MTLineEdit new
		hResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber <= 31];
		helpText: 'DD';
		theText: initialDay)