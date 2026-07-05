render-buttons
testGetSettingsButtonsNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getSettingsButtons notNil