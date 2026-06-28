render-buttons
getLogoutButtonFor: aCredential

	^ SimpleButtonMorph new
		label: 'Logout';
		setBalloonText: 'Log out of current account';
		target: self;
		actionSelector: #logout;
		color: Color paleRed;
		yourself