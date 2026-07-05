render-container
testGetProfileContainerNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getProfileContainer] raise: Error