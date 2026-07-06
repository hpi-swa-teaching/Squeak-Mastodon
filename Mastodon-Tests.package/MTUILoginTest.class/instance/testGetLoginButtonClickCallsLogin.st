render-buttons
testGetLoginButtonClickCallsLogin

	| viewMorph button |
	viewMorph := MTUILogin new.
	button := viewMorph getLoginButton.
	
	self shouldnt: [button doClick] raise: Error.