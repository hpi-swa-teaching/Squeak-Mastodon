render-buttons
testGetLoginButton

	| view button |
	view := MTUILogin new.
	
	button := view getLoginButton.
	
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: 'Login'.
	self
		assert: button balloonText
		equals: 'Log in with the access code from your authorized Mastodon instance'