render-buttons
getLoginButtonFor: aCredential

	^ SimpleButtonMorph new
		label: self loginButtonText;
		setBalloonText: self loginButtonBalloonText;
		target: self;
		actionSelector: #loginWithCredentials:;
		arguments: {aCredential};
		color: self loginButtonColor;
		yourself