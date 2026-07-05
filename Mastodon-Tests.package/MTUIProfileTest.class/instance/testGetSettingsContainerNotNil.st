render-container
testGetSettingsContainerNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getSettingsContainer notNil