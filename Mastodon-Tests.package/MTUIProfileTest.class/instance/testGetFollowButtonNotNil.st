render-buttons
testGetFollowButtonNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getFollowButton notNil