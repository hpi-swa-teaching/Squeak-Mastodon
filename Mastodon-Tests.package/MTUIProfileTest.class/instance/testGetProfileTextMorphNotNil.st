render
testGetProfileTextMorphNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getProfileTextMorph notNil