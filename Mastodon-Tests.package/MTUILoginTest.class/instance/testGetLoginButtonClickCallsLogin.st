render-buttons
testGetLoginButtonClickCallsLogin

	| viewMorph button |
	viewMorph := MTUILoginClassTest new.
	button := viewMorph getLoginButton.
	
	self shouldnt: [button doClick] raise: Error.
	
	self assert: viewMorph loginCalled