render-buttons
testGetBlockButtonActiveForBlockedAccount

	| profileView button |
	profileView := self getProfileViewForFirstAccount.
	profileView relationship: MTDataProvider secondAccountBlockedRelationship.
	
	button := profileView getBlockButton.
	
	self assert: button active