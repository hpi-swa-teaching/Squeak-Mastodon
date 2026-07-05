render-buttons
getLogoutButtonFor: aCredential

	^ SimpleButtonMorph new
		label: self logoutButtonText;
		setBalloonText: self logoutButtonBalloonText;
		target: self;
		actionSelector: #logout;
		color: self logoutButtonColor;
		yourself