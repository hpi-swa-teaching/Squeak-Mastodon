render
testGetProfileTextMorphContainsFollowingCount

	| profileView profileTextMorph followingCount |
	profileView := self getProfileViewForFirstAccount.
	followingCount := MTDataProvider firstAccount followingCount asString.
	
	profileTextMorph := profileView getProfileTextMorph.
	
	self assert: (profileTextMorph contents asString includesSubstring: followingCount)