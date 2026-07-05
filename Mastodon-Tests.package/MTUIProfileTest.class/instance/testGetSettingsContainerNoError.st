render-container
testGetSettingsContainerNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getSettingsContainer] raise: Error