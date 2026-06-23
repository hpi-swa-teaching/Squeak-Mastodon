render-buttons
getAuthorizationLinkButton

	| button |
	button := MTUIPushButton new.
	button text: 'Get Authentication Link'.
	self connect: button signal: #clicked: toSelector: #getAuthorizationLink.
	^ button