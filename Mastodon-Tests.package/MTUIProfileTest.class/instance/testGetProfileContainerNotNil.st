render-container
testGetProfileContainerNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getProfileContainer notNil