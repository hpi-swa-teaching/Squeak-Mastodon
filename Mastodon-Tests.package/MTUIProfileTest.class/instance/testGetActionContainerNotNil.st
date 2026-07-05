render-container
testGetActionContainerNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getActionContainer notNil