render-buttons
testGetSettingsButtonsNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getSettingsButtons] raise: Error