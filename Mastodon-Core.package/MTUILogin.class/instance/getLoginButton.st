render-buttons
getLoginButton

	| button |
	button := MTUIPushButton new.
	button text: 'Login'.
	self connect: button signal: #clicked: toSelector: #login.
	^ button