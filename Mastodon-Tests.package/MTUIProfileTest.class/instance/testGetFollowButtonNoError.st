render-buttons
testGetFollowButtonNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getFollowButton] raise: Error