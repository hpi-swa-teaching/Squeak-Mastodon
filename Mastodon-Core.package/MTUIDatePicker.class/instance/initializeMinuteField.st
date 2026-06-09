initialization
initializeMinuteField

	self minuteField: (MTLineEdit new
		hResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,2}';
		validator: [:str | str asNumber < 60];
		helpText: 'mm')