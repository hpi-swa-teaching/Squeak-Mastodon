render-buttons
testGetInteractionButtonsNoError

	| profileView |
	profileView := self getProfileViewForSecondAccount.
	
	self shouldnt: [profileView getInteractionButtons] raise: Error