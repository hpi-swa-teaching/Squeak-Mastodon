render
testGetAccountAvatarMorphSizes

	| profileView avatarMorph |
	profileView := self getProfileViewForFirstAccount.
	avatarMorph := profileView getAccountAvatarMorph.
	
	self assert: avatarMorph width equals: profileView avatarSize.
	self assert: avatarMorph height equals: profileView avatarSize