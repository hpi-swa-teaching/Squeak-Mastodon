render-buttons
getLoginButton

	^ SimpleButtonMorph new
		label: 'Login';
		target: self;
		actionSelector: #login; 
		yourself