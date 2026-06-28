render-buttons
getLoginButton

	| button |
	button := MTUIPushButton new.
	button text: 'Login'.
	button setBalloonText: 'Log in with the access code from your authorized Mastodon instance'.
	self connect: button signal: #clicked: toSelector: #login.
	^ button