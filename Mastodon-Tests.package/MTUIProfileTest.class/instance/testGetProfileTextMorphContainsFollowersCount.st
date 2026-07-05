render
testGetProfileTextMorphContainsFollowersCount

	| profileView profileTextMorph followersCount |
	profileView := self getProfileViewForFirstAccount.
	followersCount := MTDataProvider firstAccount followersCount asString.
	
	profileTextMorph := profileView getProfileTextMorph.
	
	self assert: (profileTextMorph contents asString includesSubstring: followersCount)