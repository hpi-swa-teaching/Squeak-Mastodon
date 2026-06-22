render-buttons
getAuthorizationLinkButton

	^ SimpleButtonMorph new
		label: 'Get Authentication Link';
		target: self;
		actionSelector: #getAuthorizationLink;
		yourself