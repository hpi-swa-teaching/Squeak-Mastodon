render-buttons
testGetFollowButtonInactiveWhenNotFollowing

	| profileView button |
	profileView := self getProfileViewForFirstAccount.
	profileView relationship: MTDataProvider secondAccountRelationship.

	button := profileView getFollowButton.

	self deny: button active