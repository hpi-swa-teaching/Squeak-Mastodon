render
getSwitchProfileButton

	^ SimpleButtonMorph new
		label: 'Switch';
		target: self;
		color: Color veryLightGray;
		borderColor: Color gray;
		actionSelector: #openProfileSettings;
		yourself