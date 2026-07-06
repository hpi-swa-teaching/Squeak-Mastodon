render
testGetProfileTextMorphNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getProfileTextMorph] raise: Error