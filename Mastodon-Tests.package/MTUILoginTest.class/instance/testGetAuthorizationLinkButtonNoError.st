render-buttons
testGetAuthorizationLinkButtonNoError

	| viewMorph |
	viewMorph := MTUILogin new.
	
	self shouldnt: [viewMorph getAuthorizationLinkButton] raise: Error.