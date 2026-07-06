render-buttons
testGetProfileSwitchButtonNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getProfileSwitchButton] raise: Error