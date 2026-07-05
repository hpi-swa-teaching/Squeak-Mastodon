render
getGeneralAccountBanner

	^ self getProfileContainer
		addMorphBack: self getAccountAvatarMorph;
		addMorphBack: self getProfileTextMorph;
		yourself