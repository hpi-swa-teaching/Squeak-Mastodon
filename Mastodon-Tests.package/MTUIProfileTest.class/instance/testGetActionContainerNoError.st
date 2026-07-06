render-container
testGetActionContainerNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getActionContainer] raise: Error