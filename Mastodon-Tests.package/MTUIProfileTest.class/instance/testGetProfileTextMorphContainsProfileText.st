render
testGetProfileTextMorphContainsProfileText

	| profileView profileTextMorph accountNote |
	profileView := self getProfileViewForFirstAccount.
	accountNote := MTDataProvider firstAccount note asHtmlText asString.
	
	profileTextMorph := profileView getProfileTextMorph.
	
	self assert: (profileTextMorph contents asString includesSubstring: accountNote)