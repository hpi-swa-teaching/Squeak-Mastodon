render-buttons
getDeleteButtonFor: aCredential

	^ SimpleButtonMorph new
		label: self deleteButtonText;
		setBalloonText: self deleteButtonBalloonText;
		target: self;
		actionSelector: #deleteCredentials:;
		arguments: {aCredential};
		color: self deleteButtonColor;
		yourself