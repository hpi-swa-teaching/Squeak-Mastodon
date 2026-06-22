render-buttons
getDeleteButtonFor: aCredential

	^ SimpleButtonMorph new
		label: 'Delete';
		target: self;
		actionSelector: #deleteCredentials:;
		arguments: {aCredential};
		color: Color red;
		yourself