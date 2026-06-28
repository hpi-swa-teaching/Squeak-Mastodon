render-buttons
getDeleteButtonFor: aCredential

	^ SimpleButtonMorph new
		label: 'Delete';
		setBalloonText: 'Remove this account';
		target: self;
		actionSelector: #deleteCredentials:;
		arguments: {aCredential};
		color: Color red;
		yourself