render-buttons
getLogoutButtonFor: aCredential

	^ SimpleButtonMorph new
		label: 'Logout';
		target: self;
		actionSelector: #logout;
		color: Color paleRed;
		yourself