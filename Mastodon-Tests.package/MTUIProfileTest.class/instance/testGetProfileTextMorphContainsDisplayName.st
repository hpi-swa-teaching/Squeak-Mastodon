render
testGetProfileTextMorphContainsDisplayName

	| profileView profileTextMorph displayName |
	profileView := self getProfileViewForFirstAccount.
	displayName := MTDataProvider firstAccount displayName.
	
	profileTextMorph := profileView getProfileTextMorph.
	
	self assert: (profileTextMorph contents asString includesSubstring: displayName)