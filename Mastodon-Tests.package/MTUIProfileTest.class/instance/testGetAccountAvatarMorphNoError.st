render
testGetAccountAvatarMorphNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getAccountAvatarMorph] raise: Error