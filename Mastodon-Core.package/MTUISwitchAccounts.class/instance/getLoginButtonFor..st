render-buttons
getLoginButtonFor: aCredential

	^ SimpleButtonMorph new
		label: 'Login';
		setBalloonText: 'Switch to this account';
		target: self;
		actionSelector: #loginWithCredentials:;
		arguments: {aCredential};
		color: Color paleGreen;
		yourself