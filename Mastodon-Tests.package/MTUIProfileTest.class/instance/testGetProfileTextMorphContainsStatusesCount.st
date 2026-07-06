render
testGetProfileTextMorphContainsStatusesCount

	| profileView profileTextMorph statusesCount |
	profileView := self getProfileViewForFirstAccount.
	statusesCount := MTDataProvider firstAccount statusesCount asString.
	
	profileTextMorph := profileView getProfileTextMorph.
	
	self assert: (profileTextMorph contents asString includesSubstring: statusesCount)