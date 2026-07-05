render-buttons
testGetDirectTootButtonNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getDirectTootButton] raise: Error