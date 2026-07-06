initialization
initializeYearField: initialYear

	self yearField: (MTLineEdit new
		hResizing: #spaceFill;
		height: 32;
		pattern: '[0-9]{0,4}';
		helpText: 'YYYY';
		theText: initialYear;
		yourself)