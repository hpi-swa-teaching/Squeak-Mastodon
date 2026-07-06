render-buttons
testGetFollowButtonActiveWhenFollowing

	| profileView button |
	profileView := self getProfileViewForFirstAccount.
	profileView relationship: MTDataProvider secondAccountFollowingRelationship.
	
	button := profileView getFollowButton.
	
	self assert: button active