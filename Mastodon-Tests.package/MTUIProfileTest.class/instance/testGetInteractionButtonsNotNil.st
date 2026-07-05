render-buttons
testGetInteractionButtonsNotNil

	| profileView |
	profileView := self getProfileViewForSecondAccount.
	
	self assert: profileView getInteractionButtons notNil