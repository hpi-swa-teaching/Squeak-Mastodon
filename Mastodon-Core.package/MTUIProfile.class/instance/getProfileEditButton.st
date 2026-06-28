render-buttons
getProfileEditButton

	^ SimpleButtonMorph new
		label: 'Edit';
		target: self;
		color: Color veryLightGray;
		borderColor: Color gray;
		actionSelector: #openProfileSettings;
		yourself