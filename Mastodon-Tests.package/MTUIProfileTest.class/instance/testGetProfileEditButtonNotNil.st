render-buttons
testGetProfileEditButtonNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getProfileEditButton notNil