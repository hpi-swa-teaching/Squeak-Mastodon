render-buttons
getAuthorizationLinkButton

	| button |
	button := MTUIPushButton new
		text: 'Get Authentication Link';
		setBalloonText: 'Get an authentication link to authorize your Mastodon instance and receive an access code'.
	self connect: button signal: #clicked: toSelector: #getAuthorizationLink.
	
	^ button