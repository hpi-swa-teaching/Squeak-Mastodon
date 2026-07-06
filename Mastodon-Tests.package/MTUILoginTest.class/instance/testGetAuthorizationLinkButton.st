render-buttons
testGetAuthorizationLinkButton

	| viewMorph button |
	viewMorph := MTUILogin new.
	
	button := viewMorph getAuthorizationLinkButton.
	
	self assert: button notNil.
	self assert: button class equals: MTUIPushButton.
	self assert: button text equals: 'Get Authentication Link'.
	self
		assert: button balloonText
		equals: 'Get an authentication link to authorize your Mastodon instance and receive an access code'