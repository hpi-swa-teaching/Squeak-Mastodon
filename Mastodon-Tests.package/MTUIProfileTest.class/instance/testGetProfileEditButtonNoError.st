render-buttons
testGetProfileEditButtonNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getProfileEditButton] raise: Error