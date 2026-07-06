render-buttons
testGetProfileSwitchButtonNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getProfileSwitchButton notNil