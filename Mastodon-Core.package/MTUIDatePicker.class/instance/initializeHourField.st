initialization
initializeHourField

	self hourField: (MTLineEdit new
		hResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber < 24];
		helpText: 'hh';
		yourself)