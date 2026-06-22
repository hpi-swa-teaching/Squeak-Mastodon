render-buttons
getLoginButtonFor: aCredential

	^ SimpleButtonMorph new
		label: 'Login';
		target: self;
		actionSelector: #loginWithCredentials:;
		arguments: {aCredential};
		color: Color paleGreen;
		yourself