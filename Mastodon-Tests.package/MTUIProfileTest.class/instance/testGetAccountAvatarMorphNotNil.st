render
testGetAccountAvatarMorphNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getAccountAvatarMorph notNil